pub const c = @cImport({
    @cInclude("xf86drm.h");
    @cInclude("xf86drmMode.h");
    @cInclude("gbm.h");
});
