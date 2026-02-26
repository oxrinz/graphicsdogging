const std = @import("std");

const c = @cImport({
    @cInclude("errno.h");
    @cInclude("string.h");
    @cInclude("unistd.h");
    @cInclude("poll.h");

    @cInclude("xf86drm.h");
    @cInclude("xf86drmMode.h");
    @cInclude("drm_fourcc.h");

    @cInclude("gbm.h");

    @cInclude("vulkan/vulkan.h");
});

fn errnoPrint(prefix: []const u8) void {
    const e = std.c._errno().*;
    std.debug.print("{s}: errno={d}\n", .{ prefix, e });
}

fn vkCheck(rc: c.VkResult, what: []const u8) !void {
    if (rc != c.VK_SUCCESS) {
        std.debug.print("Vulkan error {s}: {d}\n", .{ what, rc });
        return error.VulkanFailed;
    }
}

fn getDeviceProc(comptime T: type, dev: c.VkDevice, name: [*:0]const u8) T {
    return @ptrCast(c.vkGetDeviceProcAddr(dev, name));
}

const Buffer = struct {
    bo: *c.gbm_bo,
    dmabuf_fd: c_int,
    stride: u32,
    modifier: u64,

    gem: u32,
    fb_id: u32,

    // Vulkan import
    image: c.VkImage,
    mem: c.VkDeviceMemory,
    layout: c.VkImageLayout,

    // Explicit sync
    render_done_sem: c.VkSemaphore, // export sync_file from this after submit
    kms_done_fd: c_int, // out-fence fd from KMS; wait (poll) before reusing; -1 if none
};

fn chooseConnectorAndMode(fd: c_int, res: *c.drmModeRes) !struct {
    conn: *c.drmModeConnector,
    conn_id: u32,
    mode: c.drmModeModeInfo,
} {
    var i: c_int = 0;
    while (i < res.count_connectors) : (i += 1) {
        const conn_id = res.connectors[@as(usize, @intCast(i))];
        const conn = c.drmModeGetConnector(fd, conn_id);
        if (conn == null) continue;

        if (conn.*.connection == c.DRM_MODE_CONNECTED and conn.*.count_modes > 0) {
            const mode = conn.*.modes[0];
            return .{ .conn = conn, .conn_id = conn.*.connector_id, .mode = mode };
        }

        c.drmModeFreeConnector(conn);
    }
    return error.NoConnectedConnector;
}

fn chooseCrtc(fd: c_int, res: *c.drmModeRes, conn: *c.drmModeConnector) !u32 {
    if (conn.*.encoder_id != 0) {
        const enc = c.drmModeGetEncoder(fd, conn.*.encoder_id);
        if (enc != null) {
            defer c.drmModeFreeEncoder(enc);
            if (enc.*.crtc_id != 0) return enc.*.crtc_id;
        }
    }

    var ei: c_int = 0;
    while (ei < conn.*.count_encoders) : (ei += 1) {
        const enc = c.drmModeGetEncoder(fd, conn.*.encoders[@as(usize, @intCast(ei))]);
        if (enc == null) continue;
        defer c.drmModeFreeEncoder(enc);

        var ci: c_int = 0;
        while (ci < res.*.count_crtcs) : (ci += 1) {
            const mask: u32 = @as(u32, 1) << @as(u5, @intCast(ci));
            if ((enc.*.possible_crtcs & mask) != 0) {
                return res.*.crtcs[@as(usize, @intCast(ci))];
            }
        }
    }

    return error.NoCompatibleCrtc;
}

fn getPropId(fd: c_int, obj_id: u32, obj_type: u32, name: []const u8) !u32 {
    const props = c.drmModeObjectGetProperties(fd, obj_id, obj_type);
    if (props == null) return error.DrmGetObjectPropsFailed;
    defer c.drmModeFreeObjectProperties(props);

    var i: u32 = 0;
    while (i < props.*.count_props) : (i += 1) {
        const pid = props.*.props[i];
        const p = c.drmModeGetProperty(fd, pid);
        if (p == null) continue;
        defer c.drmModeFreeProperty(p);

        const prop_name = std.mem.span(@as([*:0]const u8, @ptrCast(&p.*.name)));
        if (std.mem.eql(u8, prop_name, name)) return pid;
    }
    return error.PropNotFound;
}

fn pickPlaneForCrtc(fd: c_int, crtc_id: u32, res: *c.drmModeRes) !u32 {
    const pres = c.drmModeGetPlaneResources(fd);
    if (pres == null) return error.NoPlaneResources;
    defer c.drmModeFreePlaneResources(pres);

    var crtc_index: u32 = 0xFFFF_FFFF;
    var i: u32 = 0;
    while (i < @as(u32, @intCast(res.*.count_crtcs))) : (i += 1) {
        if (res.*.crtcs[i] == crtc_id) {
            crtc_index = i;
            break;
        }
    }
    if (crtc_index == 0xFFFF_FFFF) return error.CrtcNotInResources;

    const crtc_mask: u32 = (@as(u32, 1) << @as(u5, @intCast(crtc_index)));

    i = 0;
    while (i < pres.*.count_planes) : (i += 1) {
        const plane_id = pres.*.planes[i];
        const plane = c.drmModeGetPlane(fd, plane_id);
        if (plane == null) continue;
        defer c.drmModeFreePlane(plane);

        if ((plane.*.possible_crtcs & crtc_mask) != 0) {
            return plane_id;
        }
    }
    return error.NoPlaneForCrtc;
}

fn createKmsFbFromBo(fd: c_int, w: u32, h: u32, bo: *c.gbm_bo) !struct {
    dmabuf_fd: c_int,
    stride: u32,
    modifier: u64,
    gem: u32,
    fb_id: u32,
} {
    const dmabuf_fd = c.gbm_bo_get_fd(bo);
    if (dmabuf_fd < 0) return error.GbmGetFdFailed;

    const stride: u32 = @intCast(c.gbm_bo_get_stride(bo));
    const modifier: u64 = c.gbm_bo_get_modifier(bo);

    var gem: u32 = 0;
    if (c.drmPrimeFDToHandle(fd, dmabuf_fd, &gem) != 0) {
        errnoPrint("drmPrimeFDToHandle");
        _ = c.close(dmabuf_fd);
        return error.PrimeToHandleFailed;
    }

    var handles = [_]u32{ gem, 0, 0, 0 };
    var pitches = [_]u32{ stride, 0, 0, 0 };
    var offsets = [_]u32{ 0, 0, 0, 0 };
    //var modifiers = [_]u64{ modifier, 0, 0, 0 };

    var fb_id: u32 = 0;

    // Use WITH MODIFIERS (correct when you set DRM_MODE_FB_MODIFIERS)
    const rc = c.drmModeAddFB2(
        fd,
        w,
        h,
        c.DRM_FORMAT_XRGB8888,
        &handles,
        &pitches,
        &offsets,
        &fb_id,
        c.DRM_MODE_FB_MODIFIERS,
    );
    if (rc != 0) {
        errnoPrint("drmModeAddFB2WithModifiers");
        _ = c.close(dmabuf_fd);
        return error.AddFb2Failed;
    }

    return .{
        .dmabuf_fd = dmabuf_fd,
        .stride = stride,
        .modifier = modifier,
        .gem = gem,
        .fb_id = fb_id,
    };
}

fn findMemoryType(phys: c.VkPhysicalDevice, type_bits: u32, required: c.VkMemoryPropertyFlags) !u32 {
    var props: c.VkPhysicalDeviceMemoryProperties = undefined;
    c.vkGetPhysicalDeviceMemoryProperties(phys, &props);

    var i: u32 = 0;
    while (i < props.memoryTypeCount) : (i += 1) {
        if ((type_bits & (@as(u32, 1) << @as(u5, @intCast(i)))) != 0) {
            if ((props.memoryTypes[i].propertyFlags & required) == required) return i;
        }
    }
    return error.NoSuitableMemoryType;
}

fn createExportableSemaphore(device: c.VkDevice) !c.VkSemaphore {
    var export_info = c.VkExportSemaphoreCreateInfo{
        .sType = c.VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO,
        .pNext = null,
        .handleTypes = c.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT,
    };
    var sem_info = c.VkSemaphoreCreateInfo{
        .sType = c.VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
        .pNext = &export_info,
        .flags = 0,
    };
    var sem: c.VkSemaphore = undefined;
    try vkCheck(c.vkCreateSemaphore(device, &sem_info, null, &sem), "vkCreateSemaphore");
    return sem;
}

fn exportSyncFileFd(
    device: c.VkDevice,
    sem: c.VkSemaphore,
    vkGetSemaphoreFdKHR: *const fn (c.VkDevice, *const c.VkSemaphoreGetFdInfoKHR, *c_int) callconv(.c) c.VkResult,
) !c_int {
    var info = c.VkSemaphoreGetFdInfoKHR{
        .sType = c.VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR,
        .pNext = null,
        .semaphore = sem,
        .handleType = c.VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT,
    };
    var fd: c_int = -1;
    try vkCheck(vkGetSemaphoreFdKHR(device, &info, &fd), "vkGetSemaphoreFdKHR");
    return fd;
}

fn fixed1616(x: u32) u32 {
    return x << 16;
}

fn waitFenceFd(fd: c_int) !void {
    if (fd < 0) return;
    defer _ = c.close(fd);

    var pfd = c.pollfd{ .fd = fd, .events = c.POLLIN, .revents = 0 };
    const rc = c.poll(&pfd, 1, -1);
    if (rc < 0) {
        errnoPrint("poll(out_fence_fd)");
        return error.PollFailed;
    }
}

const FlipState = struct { pending: bool };

fn pageFlipHandler(fd: c_int, frame: c_uint, sec: c_uint, usec: c_uint, data: ?*anyopaque) callconv(.c) void {
    _ = fd;
    _ = frame;
    _ = sec;
    _ = usec;
    const st: *FlipState = @ptrCast(@alignCast(data.?));
    st.pending = false;
}

fn waitForFlip(fd: c_int, evctx: *c.drmEventContext, st: *FlipState) !void {
    while (st.pending) {
        var pfd = c.pollfd{ .fd = fd, .events = c.POLLIN, .revents = 0 };
        const rc = c.poll(&pfd, 1, -1);
        if (rc < 0) {
            errnoPrint("poll(drm_fd)");
            return error.PollFailed;
        }
        if ((pfd.revents & c.POLLIN) != 0) {
            if (c.drmHandleEvent(fd, evctx) != 0) {
                errnoPrint("drmHandleEvent");
                return error.DrmHandleEventFailed;
            }
        }
    }
}

fn atomicFlipWithFence(
    fd: c_int,
    crtc_id: u32,
    plane_id: u32,
    fb_id: u32,
    w: u32,
    h: u32,
    in_fence_fd: c_int,
    user_data: ?*anyopaque,
    plane_fb_id_prop: u32,
    plane_crtc_id_prop: u32,
    plane_in_fence_prop: u32,
    plane_crtc_x_prop: u32,
    plane_crtc_y_prop: u32,
    plane_crtc_w_prop: u32,
    plane_crtc_h_prop: u32,
    plane_src_x_prop: u32,
    plane_src_y_prop: u32,
    plane_src_w_prop: u32,
    plane_src_h_prop: u32,
    crtc_out_fence_prop: u32,
) !c_int {
    const req = c.drmModeAtomicAlloc();
    if (req == null) return error.AtomicAllocFailed;
    defer c.drmModeAtomicFree(req);

    var out_fence_fd: c_int = -1;
    const out_ptr_u64: u64 = @intCast(@intFromPtr(&out_fence_fd));

    if (c.drmModeAtomicAddProperty(req, crtc_id, crtc_out_fence_prop, out_ptr_u64) < 0)
        return error.AtomicAddPropFailed;

    if (c.drmModeAtomicAddProperty(req, plane_id, plane_fb_id_prop, fb_id) < 0) return error.AtomicAddPropFailed;
    if (c.drmModeAtomicAddProperty(req, plane_id, plane_crtc_id_prop, crtc_id) < 0) return error.AtomicAddPropFailed;

    if (c.drmModeAtomicAddProperty(req, plane_id, plane_crtc_x_prop, 0) < 0) return error.AtomicAddPropFailed;
    if (c.drmModeAtomicAddProperty(req, plane_id, plane_crtc_y_prop, 0) < 0) return error.AtomicAddPropFailed;
    if (c.drmModeAtomicAddProperty(req, plane_id, plane_crtc_w_prop, w) < 0) return error.AtomicAddPropFailed;
    if (c.drmModeAtomicAddProperty(req, plane_id, plane_crtc_h_prop, h) < 0) return error.AtomicAddPropFailed;

    if (c.drmModeAtomicAddProperty(req, plane_id, plane_src_x_prop, fixed1616(0)) < 0) return error.AtomicAddPropFailed;
    if (c.drmModeAtomicAddProperty(req, plane_id, plane_src_y_prop, fixed1616(0)) < 0) return error.AtomicAddPropFailed;
    if (c.drmModeAtomicAddProperty(req, plane_id, plane_src_w_prop, fixed1616(w)) < 0) return error.AtomicAddPropFailed;
    if (c.drmModeAtomicAddProperty(req, plane_id, plane_src_h_prop, fixed1616(h)) < 0) return error.AtomicAddPropFailed;

    if (c.drmModeAtomicAddProperty(req, plane_id, plane_in_fence_prop, @intCast(in_fence_fd)) < 0)
        return error.AtomicAddPropFailed;

    const flags: u32 = c.DRM_MODE_ATOMIC_NONBLOCK | c.DRM_MODE_PAGE_FLIP_EVENT;
    if (c.drmModeAtomicCommit(fd, req, flags, user_data) != 0) {
        errnoPrint("drmModeAtomicCommit");
        _ = c.close(in_fence_fd); // kernel didn't consume it on failure
        return error.AtomicCommitFailed;
    }

    // kernel consumes in_fence_fd on success; do not close it
    return out_fence_fd;
}

pub fn main() !void {
    // ---- DRM open ----
    const fd_posix = try std.posix.open("/dev/dri/card2", .{ .ACCMODE = .RDWR, .CLOEXEC = true }, 0);
    defer std.posix.close(fd_posix);
    const drm_fd: c_int = @intCast(fd_posix);

    // Enable atomic + universal planes
    if (c.drmSetClientCap(drm_fd, c.DRM_CLIENT_CAP_UNIVERSAL_PLANES, 1) != 0) errnoPrint("drmSetClientCap(UNIVERSAL_PLANES)");
    if (c.drmSetClientCap(drm_fd, c.DRM_CLIENT_CAP_ATOMIC, 1) != 0) errnoPrint("drmSetClientCap(ATOMIC)");

    const res = c.drmModeGetResources(drm_fd);
    if (res == null) return error.DrmGetResourcesFailed;
    defer c.drmModeFreeResources(res);

    const sel = try chooseConnectorAndMode(drm_fd, res.?);
    defer c.drmModeFreeConnector(sel.conn);

    const crtc_id = try chooseCrtc(drm_fd, res.?, sel.conn);
    const w: u32 = sel.mode.hdisplay;
    const h: u32 = sel.mode.vdisplay;

    const plane_id = try pickPlaneForCrtc(drm_fd, crtc_id, res.?);

    // Props we need
    const plane_fb_id_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "FB_ID");
    const plane_crtc_id_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "CRTC_ID");
    const plane_in_fence_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "IN_FENCE_FD");

    const plane_crtc_x_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "CRTC_X");
    const plane_crtc_y_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "CRTC_Y");
    const plane_crtc_w_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "CRTC_W");
    const plane_crtc_h_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "CRTC_H");

    const plane_src_x_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "SRC_X");
    const plane_src_y_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "SRC_Y");
    const plane_src_w_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "SRC_W");
    const plane_src_h_prop = try getPropId(drm_fd, plane_id, c.DRM_MODE_OBJECT_PLANE, "SRC_H");

    const crtc_out_fence_prop = try getPropId(drm_fd, crtc_id, c.DRM_MODE_OBJECT_CRTC, "OUT_FENCE_PTR");

    // ---- GBM ----
    const gbm_dev = c.gbm_create_device(drm_fd);
    if (gbm_dev == null) return error.GbmCreateDeviceFailed;
    defer c.gbm_device_destroy(gbm_dev);

    // ---- Allocate buffers (2) ----
    var buffers: [2]Buffer = undefined;
    var bi: usize = 0;
    while (bi < buffers.len) : (bi += 1) {
        const bo = c.gbm_bo_create(
            gbm_dev,
            w,
            h,
            c.GBM_FORMAT_XRGB8888,
            c.GBM_BO_USE_SCANOUT | c.GBM_BO_USE_RENDERING,
        );
        if (bo == null) return error.GbmBoCreateFailed;

        const fb = try createKmsFbFromBo(drm_fd, w, h, bo.?);

        buffers[bi] = .{
            .bo = bo.?,
            .dmabuf_fd = fb.dmabuf_fd,
            .stride = fb.stride,
            .modifier = fb.modifier,
            .gem = fb.gem,
            .fb_id = fb.fb_id,
            .image = @ptrCast(@as(?*anyopaque, null)),
            .mem = @ptrCast(@as(?*anyopaque, null)),
            .layout = c.VK_IMAGE_LAYOUT_UNDEFINED,
            .render_done_sem = @ptrCast(@as(?*anyopaque, null)),
            .kms_done_fd = -1,
        };
    }
    defer {
        for (buffers) |b| {
            _ = c.drmModeRmFB(drm_fd, b.fb_id);
            _ = c.close(b.dmabuf_fd);
            if (b.kms_done_fd >= 0) _ = c.close(b.kms_done_fd);
            c.gbm_bo_destroy(b.bo);
            // NOTE: gem handle should be closed with GEM_CLOSE ioctl for no-leak; omitted for brevity.
        }
    }

    // ---- Vulkan instance ----
    var app_info = c.VkApplicationInfo{
        .sType = c.VK_STRUCTURE_TYPE_APPLICATION_INFO,
        .pNext = null,
        .pApplicationName = "vk_kms_atomic",
        .applicationVersion = 1,
        .pEngineName = "none",
        .engineVersion = 1,
        .apiVersion = c.VK_API_VERSION_1_3,
    };

    const inst_exts = [_][*:0]const u8{
        "VK_KHR_get_physical_device_properties2",
    };

    var inst_info = c.VkInstanceCreateInfo{
        .sType = c.VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .pApplicationInfo = &app_info,
        .enabledLayerCount = 0,
        .ppEnabledLayerNames = null,
        .enabledExtensionCount = inst_exts.len,
        .ppEnabledExtensionNames = &inst_exts,
    };

    var instance: c.VkInstance = undefined;
    try vkCheck(c.vkCreateInstance(&inst_info, null, &instance), "vkCreateInstance");
    defer c.vkDestroyInstance(instance, null);

    // ---- Pick physical device ----
    var phys_count: u32 = 0;
    _ = c.vkEnumeratePhysicalDevices(instance, &phys_count, null);
    if (phys_count == 0) return error.NoVulkanPhysicalDevices;

    const phys_list = try std.heap.page_allocator.alloc(c.VkPhysicalDevice, phys_count);
    defer std.heap.page_allocator.free(phys_list);
    try vkCheck(c.vkEnumeratePhysicalDevices(instance, &phys_count, phys_list.ptr), "vkEnumeratePhysicalDevices");

    const phys = phys_list[0];

    // ---- Queue family ----
    var qf_count: u32 = 0;
    c.vkGetPhysicalDeviceQueueFamilyProperties(phys, &qf_count, null);
    const qfs = try std.heap.page_allocator.alloc(c.VkQueueFamilyProperties, qf_count);
    defer std.heap.page_allocator.free(qfs);
    c.vkGetPhysicalDeviceQueueFamilyProperties(phys, &qf_count, qfs.ptr);

    var gfx_qf: u32 = 0xFFFF_FFFF;
    var qi: u32 = 0;
    while (qi < qf_count) : (qi += 1) {
        if ((qfs[qi].queueFlags & c.VK_QUEUE_GRAPHICS_BIT) != 0) {
            gfx_qf = qi;
            break;
        }
    }
    if (gfx_qf == 0xFFFF_FFFF) return error.NoGraphicsQueue;

    const qprio: f32 = 1.0;
    var qinfo = c.VkDeviceQueueCreateInfo{
        .sType = c.VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .queueFamilyIndex = gfx_qf,
        .queueCount = 1,
        .pQueuePriorities = &qprio,
    };

    const dev_exts = [_][*:0]const u8{
        "VK_KHR_external_memory",
        "VK_KHR_external_memory_fd",
        "VK_EXT_external_memory_dma_buf",
        "VK_EXT_image_drm_format_modifier",
        "VK_KHR_external_semaphore",
        "VK_KHR_external_semaphore_fd",
    };

    var dev_info = c.VkDeviceCreateInfo{
        .sType = c.VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .queueCreateInfoCount = 1,
        .pQueueCreateInfos = &qinfo,
        .enabledLayerCount = 0,
        .ppEnabledLayerNames = null,
        .enabledExtensionCount = dev_exts.len,
        .ppEnabledExtensionNames = &dev_exts,
        .pEnabledFeatures = null,
    };

    var device: c.VkDevice = undefined;
    try vkCheck(c.vkCreateDevice(phys, &dev_info, null, &device), "vkCreateDevice");
    defer c.vkDestroyDevice(device, null);

    var queue: c.VkQueue = undefined;
    c.vkGetDeviceQueue(device, gfx_qf, 0, &queue);

    const vkGetSemaphoreFdKHR = getDeviceProc(
        *const fn (c.VkDevice, *const c.VkSemaphoreGetFdInfoKHR, *c_int) callconv(.c) c.VkResult,
        device,
        "vkGetSemaphoreFdKHR",
    );

    // ---- Cmd pool/buffer ----
    var pool_info = c.VkCommandPoolCreateInfo{
        .sType = c.VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
        .pNext = null,
        .flags = c.VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
        .queueFamilyIndex = gfx_qf,
    };

    var cmd_pool: c.VkCommandPool = undefined;
    try vkCheck(c.vkCreateCommandPool(device, &pool_info, null, &cmd_pool), "vkCreateCommandPool");
    defer c.vkDestroyCommandPool(device, cmd_pool, null);

    var cmd_info = c.VkCommandBufferAllocateInfo{
        .sType = c.VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .pNext = null,
        .commandPool = cmd_pool,
        .level = c.VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandBufferCount = 1,
    };

    var cmd: c.VkCommandBuffer = undefined;
    try vkCheck(c.vkAllocateCommandBuffers(device, &cmd_info, &cmd), "vkAllocateCommandBuffers");

    // ---- Create Vulkan images imported from dmabufs + semaphores ----
    var bidx: usize = 0;
    while (bidx < buffers.len) : (bidx += 1) {
        const b = &buffers[bidx];

        // Exportable semaphore per buffer
        b.render_done_sem = try createExportableSemaphore(device);

        var ext_img = c.VkExternalMemoryImageCreateInfo{
            .sType = c.VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO,
            .pNext = null,
            .handleTypes = c.VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT,
        };

        var plane = c.VkSubresourceLayout{
            .offset = 0,
            .size = 0,
            .rowPitch = b.stride,
            .arrayPitch = 0,
            .depthPitch = 0,
        };

        var drm_mod = c.VkImageDrmFormatModifierExplicitCreateInfoEXT{
            .sType = c.VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT,
            .pNext = &ext_img,
            .drmFormatModifier = b.modifier,
            .drmFormatModifierPlaneCount = 1,
            .pPlaneLayouts = &plane,
        };

        var img_info = c.VkImageCreateInfo{
            .sType = c.VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
            .pNext = &drm_mod,
            .flags = 0,
            .imageType = c.VK_IMAGE_TYPE_2D,
            .format = c.VK_FORMAT_B8G8R8A8_UNORM,
            .extent = .{ .width = w, .height = h, .depth = 1 },
            .mipLevels = 1,
            .arrayLayers = 1,
            .samples = c.VK_SAMPLE_COUNT_1_BIT,
            .tiling = c.VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT,
            .usage = c.VK_IMAGE_USAGE_TRANSFER_DST_BIT,
            .sharingMode = c.VK_SHARING_MODE_EXCLUSIVE,
            .queueFamilyIndexCount = 0,
            .pQueueFamilyIndices = null,
            .initialLayout = c.VK_IMAGE_LAYOUT_UNDEFINED,
        };

        var image: c.VkImage = undefined;
        try vkCheck(c.vkCreateImage(device, &img_info, null, &image), "vkCreateImage");
        b.image = image;

        var req: c.VkMemoryRequirements = undefined;
        c.vkGetImageMemoryRequirements(device, b.image, &req);

        const vk_fd = c.dup(b.dmabuf_fd);
        if (vk_fd < 0) return error.DupFailed;

        var import_fd = c.VkImportMemoryFdInfoKHR{
            .sType = c.VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR,
            .pNext = null,
            .handleType = c.VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT,
            .fd = vk_fd, // Vulkan owns on success
        };

        const mem_type = try findMemoryType(phys, req.memoryTypeBits, 0);

        var alloc = c.VkMemoryAllocateInfo{
            .sType = c.VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
            .pNext = &import_fd,
            .allocationSize = req.size,
            .memoryTypeIndex = mem_type,
        };

        var mem: c.VkDeviceMemory = undefined;
        try vkCheck(c.vkAllocateMemory(device, &alloc, null, &mem), "vkAllocateMemory(import dmabuf)");
        b.mem = mem;

        try vkCheck(c.vkBindImageMemory(device, b.image, b.mem, 0), "vkBindImageMemory");
    }

    defer {
        for (buffers) |b| {
            c.vkDestroySemaphore(device, b.render_done_sem, null);
            c.vkDestroyImage(device, b.image, null);
            c.vkFreeMemory(device, b.mem, null);
        }
    }

    // ---- Initial modeset (legacy) ----
    // Keep your existing setCrtc just to get something on screen first.
    // Proper way: do initial modeset with atomic (MODE_ID/ACTIVE/CRTC_ID/conn props).
    if (c.drmModeSetCrtc(
        drm_fd,
        crtc_id,
        buffers[0].fb_id,
        0,
        0,
        @ptrCast(@constCast(&sel.conn_id)),
        1,
        @ptrCast(@constCast(&sel.mode)),
    ) != 0) {
        errnoPrint("drmModeSetCrtc");
        return error.SetCrtcFailed;
    }

    // ---- DRM event handling ----
    var flip_state = FlipState{ .pending = false };
    var evctx = c.drmEventContext{
        .version = c.DRM_EVENT_CONTEXT_VERSION,
        .vblank_handler = null,
        .page_flip_handler = pageFlipHandler,
    };

    // ---- Render + atomic flip loop ----
    var frame: usize = 0;
    while (frame < 300) : (frame += 1) {
        const idx: usize = frame % buffers.len;
        const b = &buffers[idx];

        // Wait until KMS is done with this buffer (out-fence from last time)
        try waitFenceFd(b.kms_done_fd);
        b.kms_done_fd = -1;

        // Reset + record
        try vkCheck(c.vkResetCommandBuffer(cmd, 0), "vkResetCommandBuffer");

        var begin = c.VkCommandBufferBeginInfo{
            .sType = c.VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
            .pNext = null,
            .flags = 0,
            .pInheritanceInfo = null,
        };
        try vkCheck(c.vkBeginCommandBuffer(cmd, &begin), "vkBeginCommandBuffer");

        // Transition current layout -> TRANSFER_DST_OPTIMAL
        var barrier_to = c.VkImageMemoryBarrier{
            .sType = c.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
            .pNext = null,
            .srcAccessMask = 0,
            .dstAccessMask = c.VK_ACCESS_TRANSFER_WRITE_BIT,
            .oldLayout = b.layout,
            .newLayout = c.VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
            .srcQueueFamilyIndex = c.VK_QUEUE_FAMILY_IGNORED,
            .dstQueueFamilyIndex = c.VK_QUEUE_FAMILY_IGNORED,
            .image = b.image,
            .subresourceRange = .{
                .aspectMask = c.VK_IMAGE_ASPECT_COLOR_BIT,
                .baseMipLevel = 0,
                .levelCount = 1,
                .baseArrayLayer = 0,
                .layerCount = 1,
            },
        };

        c.vkCmdPipelineBarrier(
            cmd,
            c.VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
            c.VK_PIPELINE_STAGE_TRANSFER_BIT,
            0,
            0,
            null,
            0,
            null,
            1,
            &barrier_to,
        );

        const red: f32 = if ((frame & 1) == 0) 1.0 else 0.0;
        const green: f32 = if ((frame & 1) == 0) 0.0 else 1.0;

        var clr = c.VkClearColorValue{ .float32 = .{ red, green, 0.0, 1.0 } };
        var range = c.VkImageSubresourceRange{
            .aspectMask = c.VK_IMAGE_ASPECT_COLOR_BIT,
            .baseMipLevel = 0,
            .levelCount = 1,
            .baseArrayLayer = 0,
            .layerCount = 1,
        };
        c.vkCmdClearColorImage(cmd, b.image, c.VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, &clr, 1, &range);

        // Transition to GENERAL for external scanout
        var barrier_from = c.VkImageMemoryBarrier{
            .sType = c.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
            .pNext = null,
            .srcAccessMask = c.VK_ACCESS_TRANSFER_WRITE_BIT,
            .dstAccessMask = c.VK_ACCESS_TRANSFER_READ_BIT,
            .oldLayout = c.VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
            .newLayout = c.VK_IMAGE_LAYOUT_GENERAL,
            .srcQueueFamilyIndex = c.VK_QUEUE_FAMILY_IGNORED,
            .dstQueueFamilyIndex = c.VK_QUEUE_FAMILY_IGNORED,
            .image = b.image,
            .subresourceRange = barrier_to.subresourceRange,
        };

        c.vkCmdPipelineBarrier(
            cmd,
            c.VK_PIPELINE_STAGE_TRANSFER_BIT,
            c.VK_PIPELINE_STAGE_ALL_COMMANDS_BIT,
            0,
            0,
            null,
            0,
            null,
            1,
            &barrier_from,
        );

        try vkCheck(c.vkEndCommandBuffer(cmd), "vkEndCommandBuffer");

        // Submit, signal semaphore
        var submit = c.VkSubmitInfo{
            .sType = c.VK_STRUCTURE_TYPE_SUBMIT_INFO,
            .pNext = null,
            .waitSemaphoreCount = 0,
            .pWaitSemaphores = null,
            .pWaitDstStageMask = null,
            .commandBufferCount = 1,
            .pCommandBuffers = &cmd,
            .signalSemaphoreCount = 1,
            .pSignalSemaphores = &b.render_done_sem,
        };
        try vkCheck(c.vkQueueSubmit(queue, 1, &submit, @ptrCast(@as(?*anyopaque, null))), "vkQueueSubmit");

        // Track layout
        b.layout = c.VK_IMAGE_LAYOUT_GENERAL;

        // Export sync_file fd and pass to KMS as IN_FENCE_FD
        const in_fence_fd = try exportSyncFileFd(device, b.render_done_sem, vkGetSemaphoreFdKHR);

        // Atomic commit to flip
        flip_state.pending = true;
        const out_fd = try atomicFlipWithFence(
            drm_fd,
            crtc_id,
            plane_id,
            b.fb_id,
            w,
            h,
            in_fence_fd,
            @ptrCast(&flip_state),

            plane_fb_id_prop,
            plane_crtc_id_prop,
            plane_in_fence_prop,
            plane_crtc_x_prop,
            plane_crtc_y_prop,
            plane_crtc_w_prop,
            plane_crtc_h_prop,
            plane_src_x_prop,
            plane_src_y_prop,
            plane_src_w_prop,
            plane_src_h_prop,
            crtc_out_fence_prop,
        );

        std.debug.print("frame {d}: out_fence_fd={d}\n", .{ frame, out_fd });
        b.kms_done_fd = out_fd;

        // Wait for the flip event (vsync pacing)
        try waitForFlip(drm_fd, &evctx, &flip_state);
    }

    // Leave last frame up briefly
    std.Thread.sleep(2 * std.time.ns_per_s);
}
