const std = @import("std");

const c = @cImport({
    @cInclude("errno.h");
    @cInclude("string.h");
    @cInclude("unistd.h");

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
    // Try current encoder first
    if (conn.*.encoder_id != 0) {
        const enc = c.drmModeGetEncoder(fd, conn.*.encoder_id);
        if (enc != null) {
            defer c.drmModeFreeEncoder(enc);
            if (enc.*.crtc_id != 0) return enc.*.crtc_id;
        }
    }

    // Fallback: find any encoder and any compatible CRTC
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

fn createKmsFbFromBo(fd: c_int, w: u32, h: u32, bo: *c.gbm_bo) !Buffer {
    const dmabuf_fd = c.gbm_bo_get_fd(bo);
    if (dmabuf_fd < 0) return error.GbmGetFdFailed;

    const stride: u32 = @intCast(c.gbm_bo_get_stride(bo));
    const modifier: u64 = c.gbm_bo_get_modifier(bo);

    var gem: u32 = 0;
    if (c.drmPrimeFDToHandle(fd, dmabuf_fd, &gem) != 0) {
        errnoPrint("drmPrimeFDToHandle");
        // close fd we got from gbm
        _ = c.close(dmabuf_fd);
        return error.PrimeToHandleFailed;
    }

    var handles = [_]u32{ gem, 0, 0, 0 };
    var pitches = [_]u32{ stride, 0, 0, 0 };
    var offsets = [_]u32{ 0, 0, 0, 0 };

    var fb_id: u32 = 0;
    const flags: u32 = c.DRM_MODE_FB_MODIFIERS;

    const rc = c.drmModeAddFB2(
        fd,
        w,
        h,
        c.DRM_FORMAT_XRGB8888,
        &handles,
        &pitches,
        &offsets,
        &fb_id,
        flags,
    );
    if (rc != 0) {
        errnoPrint("drmModeAddFB2WithModifiers");
        const e = std.c._errno().*;
        std.debug.print("errno: {}\n", .{e});
        _ = c.close(dmabuf_fd);
        return error.AddFb2Failed;
    }

    return .{
        .bo = bo,
        .dmabuf_fd = dmabuf_fd,
        .stride = stride,
        .modifier = modifier,
        .gem = gem,
        .fb_id = fb_id,
        .image = @ptrCast(@as(?*anyopaque, null)), // filled later
        .mem = @ptrCast(@as(?*anyopaque, null)), // filled later
    };
}

fn findMemoryType(phys: c.VkPhysicalDevice, type_bits: u32, required: c.VkMemoryPropertyFlags) !u32 {
    var props: c.VkPhysicalDeviceMemoryProperties = undefined;
    c.vkGetPhysicalDeviceMemoryProperties(phys, &props);

    var i: u32 = 0;
    while (i < props.memoryTypeCount) : (i += 1) {
        if ((type_bits & (@as(u32, 1) << @as(u5, @intCast(i)))) != 0) {
            if ((props.memoryTypes[i].propertyFlags & required) == required) {
                return i;
            }
        }
    }
    return error.NoSuitableMemoryType;
}

fn getDeviceProc(comptime T: type, dev: c.VkDevice, name: [*:0]const u8) T {
    return @ptrCast(c.vkGetDeviceProcAddr(dev, name));
}

pub fn main() !void {
    // 1) Open DRM
    const fd_posix = try std.posix.open("/dev/dri/card2", .{ .ACCMODE = .RDWR, .CLOEXEC = true }, 0);
    defer std.posix.close(fd_posix);
    const drm_fd: c_int = @intCast(fd_posix);

    const res = c.drmModeGetResources(drm_fd);
    if (res == null) return error.DrmGetResourcesFailed;
    defer c.drmModeFreeResources(res);

    const sel = try chooseConnectorAndMode(drm_fd, res.?);
    defer c.drmModeFreeConnector(sel.conn);

    const crtc_id = try chooseCrtc(drm_fd, res.?, sel.conn);

    const w: u32 = sel.mode.hdisplay;
    const h: u32 = sel.mode.vdisplay;

    // 2) GBM device
    const gbm_dev = c.gbm_create_device(drm_fd);
    if (gbm_dev == null) return error.GbmCreateDeviceFailed;
    defer c.gbm_device_destroy(gbm_dev);

    // 3) Allocate 2 BOs + create FBs
    var buffers: [2]Buffer = undefined;
    var bi: usize = 0;
    while (bi < 2) : (bi += 1) {
        const bo = c.gbm_bo_create(
            gbm_dev,
            w,
            h,
            c.GBM_FORMAT_XRGB8888,
            c.GBM_BO_USE_SCANOUT | c.GBM_BO_USE_RENDERING,
        );
        if (bo == null) return error.GbmBoCreateFailed;

        buffers[bi] = try createKmsFbFromBo(drm_fd, w, h, bo.?);
    }
    defer {
        for (buffers) |b| {
            _ = c.drmModeRmFB(drm_fd, b.fb_id);
            _ = c.close(b.dmabuf_fd);
            c.gbm_bo_destroy(b.bo);
        }
    }

    // 4) Vulkan instance
    var app_info = c.VkApplicationInfo{
        .sType = c.VK_STRUCTURE_TYPE_APPLICATION_INFO,
        .pNext = null,
        .pApplicationName = "vk_kms",
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

    // 5) Pick a physical device (naive: first)
    var phys_count: u32 = 0;
    _ = c.vkEnumeratePhysicalDevices(instance, &phys_count, null);
    if (phys_count == 0) return error.NoVulkanPhysicalDevices;

    const phys_list = try std.heap.page_allocator.alloc(c.VkPhysicalDevice, phys_count);
    defer std.heap.page_allocator.free(phys_list);

    try vkCheck(c.vkEnumeratePhysicalDevices(instance, &phys_count, phys_list.ptr), "vkEnumeratePhysicalDevices");

    const phys = phys_list[0];

    // 6) Find a graphics queue family
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

    // Load needed extension function pointers
    const vkGetMemoryFdPropertiesKHR = getDeviceProc(
        *const fn (c.VkDevice, *const c.VkMemoryFdPropertiesKHR) callconv(.c) c.VkResult,
        device,
        "vkGetMemoryFdPropertiesKHR",
    ); // may be unused in this minimal sample

    _ = vkGetMemoryFdPropertiesKHR;

    // 7) Command pool/buffer
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

    // 8) Create Vulkan images imported from dmabufs
    // We reuse each GBM BO's dmabuf fd by dup()'ing it for Vulkan import, because Vulkan takes ownership of the fd on success.
    // (Some drivers allow reuse; do not rely on it.)
    var bidx: usize = 0;
    while (bidx < buffers.len) : (bidx += 1) {
        const b = &buffers[bidx];

        // Describe external memory capability
        var ext_img = c.VkExternalMemoryImageCreateInfo{
            .sType = c.VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO,
            .pNext = null,
            .handleTypes = c.VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT,
        };

        // DRM modifier explicit plane layout (single plane)
        var plane = c.VkSubresourceLayout{
            .offset = 0,
            .size = 0, // ignored for explicit import; drivers use stride/offset + image extent
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
    }
    defer {
        for (buffers) |b| {
            c.vkDestroyImage(device, b.image, null);
        }
    }

    // Import memory and bind for each image
    bidx = 0;
    while (bidx < buffers.len) : (bidx += 1) {
        const b = &buffers[bidx];

        var req: c.VkMemoryRequirements = undefined;
        c.vkGetImageMemoryRequirements(device, b.image, &req);

        const vk_fd = c.dup(b.dmabuf_fd);
        if (vk_fd < 0) return error.DupFailed;

        var import_fd = c.VkImportMemoryFdInfoKHR{
            .sType = c.VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR,
            .pNext = null,
            .handleType = c.VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT,
            .fd = vk_fd, // Vulkan owns this fd on success
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
            c.vkFreeMemory(device, b.mem, null);
        }
    }

    // 9) Put first buffer on screen
    if (c.drmModeSetCrtc(drm_fd, crtc_id, buffers[0].fb_id, 0, 0, @ptrCast(@constCast(&sel.conn_id)), 1, @ptrCast(@constCast(&sel.mode))) != 0) {
        errnoPrint("drmModeSetCrtc");
        return error.SetCrtcFailed;
    }

    // 10) Render loop: clear + wait idle + pageflip
    var frame: usize = 0;
    while (frame < 10) : (frame += 1) {
        const idx: usize = frame % 2;
        const b = &buffers[idx];

        // Begin command buffer
        var begin = c.VkCommandBufferBeginInfo{
            .sType = c.VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
            .pNext = null,
            .flags = 0,
            .pInheritanceInfo = null,
        };
        try vkCheck(c.vkBeginCommandBuffer(cmd, &begin), "vkBeginCommandBuffer");

        // Transition for clear
        var barrier1 = c.VkImageMemoryBarrier{
            .sType = c.VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
            .pNext = null,
            .srcAccessMask = 0,
            .dstAccessMask = c.VK_ACCESS_TRANSFER_WRITE_BIT,
            .oldLayout = c.VK_IMAGE_LAYOUT_UNDEFINED,
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
            &barrier1,
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

        // End
        try vkCheck(c.vkEndCommandBuffer(cmd), "vkEndCommandBuffer");

        var submit = c.VkSubmitInfo{
            .sType = c.VK_STRUCTURE_TYPE_SUBMIT_INFO,
            .pNext = null,
            .waitSemaphoreCount = 0,
            .pWaitSemaphores = null,
            .pWaitDstStageMask = null,
            .commandBufferCount = 1,
            .pCommandBuffers = &cmd,
            .signalSemaphoreCount = 0,
            .pSignalSemaphores = null,
        };
        try vkCheck(c.vkQueueSubmit(queue, 1, &submit, @ptrCast(@as(?*anyopaque, null))), "vkQueueSubmit");

        // Brutal sync: make sure rendering is done before flip
        try vkCheck(c.vkQueueWaitIdle(queue), "vkQueueWaitIdle");

        // Page flip
        const rc = c.drmModePageFlip(drm_fd, crtc_id, b.fb_id, 0, null);
        if (rc != 0) {
            errnoPrint("drmModePageFlip");
            return error.PageFlipFailed;
        }

        // Sleep a bit so you can see changes (not vsynced properly here)
        std.Thread.sleep(300 * std.time.ns_per_ms);
    }

    // Leave last frame up briefly
    std.Thread.sleep(2 * std.time.ns_per_s);
}
