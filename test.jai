#import "Basic";

#load "bgfx.jai";
#load "app.jai";

window: Window;

main :: () {
    window.height = 1080;
    window.width = 1920;
    window.title = "BGFX";
    init_window(*window);

    init_params: bgfx_init;
    init_params.type = .DIRECT3D12;
    init_params.resolution.width = xx window.width;
    init_params.resolution.height = xx window.height;
    init_params.resolution.reset = BGFX_RESET_VSYNC;
    init_params.platformData.ndt = null;
    init_params.platformData.nwh = window.handle;
    init(*init_params);

    reset(xx window.width, xx window.height, BGFX_RESET_VSYNC, .BGRA8);
    set_debug(BGFX_DEBUG_TEXT);
    set_view_clear(0, BGFX_CLEAR_COLOR | BGFX_CLEAR_DEPTH | BGFX_CLEAR_STENCIL, 0x303030ff, 1.0, 0);

    while !window.should_close {
        update_window(*window);

        set_view_rect(0, 0, 0, xx window.width, xx window.height);
        touch(0);

        dbg_text_clear(0, false);
        dbg_text_printf(0, 1, 0x4f, "Hello World!!!!");

        frame(false);
    }
}