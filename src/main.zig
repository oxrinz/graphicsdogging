const std = @import("std");
const wingless_new = @import("wingless_new");

const c = @import("c.zig").c;

pub fn main() !void {
    // card2 is amd
    const fd = try std.posix.open("/dev/dri/card2", .{ .ACCMODE = .RDWR, .CLOEXEC = true }, 0);

    const res: ?*c.drmModeRes = c.drmModeGetResources(fd);
    if (res == null) return error.DrmGetResourcesFailed;
    defer c.drmModeFreeResources(res);

    // find a connected connector with at least one mode
    var conn: ?*c.drmModeConnector = null;
    var conn_id: u32 = 0;

    var i: usize = 0;
    while (i < @as(usize, @intCast(res.?.count_connectors))) : (i += 1) {
        const cid = res.?.connectors[i];
        const cconn: ?*c.drmModeConnector = c.drmModeGetConnector(@intCast(fd), cid);
        if (cconn) |cn| {
            if (cn.connection == c.DRM_MODE_CONNECTED and cn.count_modes > 0) {
                conn = cn;
                conn_id = cn.connector_id;
                break;
            }
        }
        c.drmModeFreeConnector(cconn);
    }

    if (conn == null) return error.NoConnectedConnector;
    defer c.drmModeFreeConnector(conn.?);

    var mode: c.drmModeModeInfo = conn.?.modes[0];
    const w: usize = @intCast(mode.hdisplay);
    const h: usize = @intCast(mode.vdisplay);

    var crtc_id: u32 = 0;

    // this apparently isn't reliable, there should be another way too
    if (conn.?.encoder_id != 0) {
        const enc: ?*c.drmModeEncoder = c.drmModeGetEncoder(@intCast(fd), conn.?.encoder_id);
        if (enc) |e| {
            defer c.drmModeFreeEncoder(enc);
            if (e.crtc_id != 0) crtc_id = e.crtc_id;
        }
    }

    if (crtc_id == 0) return error.NoCompatibleCrtc;

    // create dumb buffer
    var creq: c.drm_mode_create_dumb = std.mem.zeroes(c.drm_mode_create_dumb);
    creq.width = @intCast(w);
    creq.height = @intCast(h);
    creq.bpp = 32;

    if (c.drmIoctl(@intCast(fd), c.DRM_IOCTL_MODE_CREATE_DUMB, &creq) < 0)
        return error.CreateDumbFailed;

    var handle: u32 = @intCast(creq.handle);
    const pitch: usize = @intCast(creq.pitch);
    const size: usize = @intCast(creq.size);

    // make fb
    var fb_id: u32 = 0;
    if (c.drmModeAddFB(@intCast(fd), @intCast(w), @intCast(h), 24, 32, @intCast(pitch), handle, &fb_id) != 0)
        return error.AddFbFailed;

    // map buffer
    var mreq: c.drm_mode_map_dumb = std.mem.zeroes(c.drm_mode_map_dumb);
    mreq.handle = handle;
    if (c.drmIoctl(@intCast(fd), c.DRM_IOCTL_MODE_MAP_DUMB, &mreq) < 0)
        return error.MapDumbFailed;

    const map_any = try std.posix.mmap(
        null,
        size,
        std.posix.PROT.READ | std.posix.PROT.WRITE,
        .{ .TYPE = .SHARED },
        fd,
        @intCast(mreq.offset),
    );
    defer std.posix.munmap(map_any);

    const map: [*]u8 = @ptrCast(map_any.ptr);

    // fill screen with color
    var y: usize = 0;
    while (y < h) : (y += 1) {
        const row_u8: [*]u8 = map + y * pitch;
        const row_u32: [*]u32 = @ptrCast(@alignCast(row_u8));
        var x: usize = 0;
        while (x < w) : (x += 1) {
            row_u32[x] = 0x00FF0000;
        }
    }

    // present
    if (c.drmModeSetCrtc(@intCast(fd), crtc_id, fb_id, 0, 0, &conn_id, 1, &mode) != 0)
        return error.SetCrtcFailed;

    // keep on screen
    std.Thread.sleep(5 * std.time.ns_per_s);

    // allocate gbm
    const gbm_dev = c.gbm_create_device(fd);

    const bo_array: [2]*c.gbm_bo = .{
        c.gbm_bo_create(gbm_dev, @intCast(w), @intCast(h), c.GBM_FORMAT_XRGB8888, c.GBM_BO_USE_SCANOUT | c.GBM_BO_USE_RENDERING).?,
        c.gbm_bo_create(gbm_dev, @intCast(w), @intCast(h), c.GBM_FORMAT_XRGB8888, c.GBM_BO_USE_SCANOUT | c.GBM_BO_USE_RENDERING).?,
    };

    for (bo_array) |bo| {
        const dmabuf_fd = c.gbm_bo_get_fd(bo);
        const gem_handle = c.drmPrimeFDToHandle(fd, dmabuf_fd, @ptrCast(&handle));
        _ = gem_handle;
    }

    std.debug.print("{any}\n", .{crtc_id});
}
