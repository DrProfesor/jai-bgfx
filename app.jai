#import "Windows";
#import "Windows_Utf8";
#import "Math";

Window :: struct {
    width, height: int;
    aspect: float; // width / height
    title: string;
    start_maximized: bool;
    start_fullscreen: bool; // not implemented

    should_close: bool;
    updated_once: bool;

    block_keys: bool;
    block_mouse: bool;

    mouse_position_pixel: Vector2;
    mouse_position_unit: Vector2;
    mouse_pixel_delta: Vector2;
    mouse_scroll: float;

    mouse_capture_sum: int;
    mouse_held: [Mousebutton.COUNT]bool;
    mouse_down: [Mousebutton.COUNT]bool;
    mouse_up:   [Mousebutton.COUNT]bool;

    keys_held: [Keycode.COUNT]bool;
    keys_down: [Keycode.COUNT]bool;
    keys_up:   [Keycode.COUNT]bool;

    character_input: [..]u32;

    // Windows
    handle: HWND;
    device_context: HDC;
}

keycodes: [512]Keycode;

init_window :: (using wndw: *Window) {
    CLASS_NAME :: "my window class";

    wc: WNDCLASSEXW;
    wc.cbSize = size_of(WNDCLASSEXW);
    wc.style = CS_OWNDC;
    wc.hCursor = LoadCursorW(null, cast(*u8) IDC_ARROW);
    wc.hIcon = LoadIconW(null, utf8_to_wide("APPICON"));
    wc.lpfnWndProc = xx _win32_proc;
    wc.hInstance = GetModuleHandleW(null);
    wc.lpszClassName = utf8_to_wide(CLASS_NAME);
    class := RegisterClassExW(*wc);
    assert(class != 0);

    _current_window = wndw;
    handle = CreateWindowExW(
        0,
        utf8_to_wide(CLASS_NAME),
        utf8_to_wide(title),
        WS_OVERLAPPEDWINDOW | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX | WS_MAXIMIZEBOX | WS_VISIBLE,
        300, 150, cast(s32)width, cast(s32)height,
        null,
        null,
        wc.hInstance,
        null);
    assert(handle != null && "handle was null");
    device_context = GetDC(handle);

    if start_maximized && !start_fullscreen {
        ShowWindow(handle, SW_MAXIMIZE);
    }
    _current_window = null;

    {
        keycodes[0x00B] = .KEYCODE_0;
        keycodes[0x002] = .KEYCODE_1;
        keycodes[0x003] = .KEYCODE_2;
        keycodes[0x004] = .KEYCODE_3;
        keycodes[0x005] = .KEYCODE_4;
        keycodes[0x006] = .KEYCODE_5;
        keycodes[0x007] = .KEYCODE_6;
        keycodes[0x008] = .KEYCODE_7;
        keycodes[0x009] = .KEYCODE_8;
        keycodes[0x00A] = .KEYCODE_9;
        keycodes[0x01E] = .KEYCODE_A;
        keycodes[0x030] = .KEYCODE_B;
        keycodes[0x02E] = .KEYCODE_C;
        keycodes[0x020] = .KEYCODE_D;
        keycodes[0x012] = .KEYCODE_E;
        keycodes[0x021] = .KEYCODE_F;
        keycodes[0x022] = .KEYCODE_G;
        keycodes[0x023] = .KEYCODE_H;
        keycodes[0x017] = .KEYCODE_I;
        keycodes[0x024] = .KEYCODE_J;
        keycodes[0x025] = .KEYCODE_K;
        keycodes[0x026] = .KEYCODE_L;
        keycodes[0x032] = .KEYCODE_M;
        keycodes[0x031] = .KEYCODE_N;
        keycodes[0x018] = .KEYCODE_O;
        keycodes[0x019] = .KEYCODE_P;
        keycodes[0x010] = .KEYCODE_Q;
        keycodes[0x013] = .KEYCODE_R;
        keycodes[0x01F] = .KEYCODE_S;
        keycodes[0x014] = .KEYCODE_T;
        keycodes[0x016] = .KEYCODE_U;
        keycodes[0x02F] = .KEYCODE_V;
        keycodes[0x011] = .KEYCODE_W;
        keycodes[0x02D] = .KEYCODE_X;
        keycodes[0x015] = .KEYCODE_Y;
        keycodes[0x02C] = .KEYCODE_Z;
        keycodes[0x028] = .KEYCODE_APOSTROPHE;
        keycodes[0x02B] = .KEYCODE_BACKSLASH;
        keycodes[0x033] = .KEYCODE_COMMA;
        keycodes[0x00D] = .KEYCODE_EQUAL;
        keycodes[0x029] = .KEYCODE_GRAVE_ACCENT;
        keycodes[0x01A] = .KEYCODE_LEFT_BRACKET;
        keycodes[0x00C] = .KEYCODE_MINUS;
        keycodes[0x034] = .KEYCODE_PERIOD;
        keycodes[0x01B] = .KEYCODE_RIGHT_BRACKET;
        keycodes[0x027] = .KEYCODE_SEMICOLON;
        keycodes[0x035] = .KEYCODE_SLASH;
        keycodes[0x056] = .KEYCODE_WORLD_2;
        keycodes[0x00E] = .KEYCODE_BACKSPACE;
        keycodes[0x153] = .KEYCODE_DELETE;
        keycodes[0x01C] = .KEYCODE_ENTER;
        keycodes[0x001] = .KEYCODE_ESCAPE;
        keycodes[0x14F] = .KEYCODE_END;
        keycodes[0x147] = .KEYCODE_HOME;
        keycodes[0x152] = .KEYCODE_INSERT;
        keycodes[0x15D] = .KEYCODE_MENU;

        keycodes[0x151] = .KEYCODE_PAGE_DOWN;
        keycodes[0x149] = .KEYCODE_PAGE_UP;

        keycodes[0x045] = .KEYCODE_PAUSE;
        keycodes[0x146] = .KEYCODE_PAUSE;

        keycodes[0x039] = .KEYCODE_SPACE;
        keycodes[0x00F] = .KEYCODE_TAB;
        keycodes[0x03A] = .KEYCODE_CAPS_LOCK;
        keycodes[0x145] = .KEYCODE_NUM_LOCK;
        keycodes[0x046] = .KEYCODE_SCROLL_LOCK;

        keycodes[0x03B] = .KEYCODE_F1;
        keycodes[0x03C] = .KEYCODE_F2;
        keycodes[0x03D] = .KEYCODE_F3;
        keycodes[0x03E] = .KEYCODE_F4;
        keycodes[0x03F] = .KEYCODE_F5;
        keycodes[0x040] = .KEYCODE_F6;
        keycodes[0x041] = .KEYCODE_F7;
        keycodes[0x042] = .KEYCODE_F8;
        keycodes[0x043] = .KEYCODE_F9;
        keycodes[0x044] = .KEYCODE_F10;
        keycodes[0x057] = .KEYCODE_F11;
        keycodes[0x058] = .KEYCODE_F12;
        keycodes[0x064] = .KEYCODE_F13;
        keycodes[0x065] = .KEYCODE_F14;
        keycodes[0x066] = .KEYCODE_F15;
        keycodes[0x067] = .KEYCODE_F16;
        keycodes[0x068] = .KEYCODE_F17;
        keycodes[0x069] = .KEYCODE_F18;
        keycodes[0x06A] = .KEYCODE_F19;
        keycodes[0x06B] = .KEYCODE_F20;
        keycodes[0x06C] = .KEYCODE_F21;
        keycodes[0x06D] = .KEYCODE_F22;
        keycodes[0x06E] = .KEYCODE_F23;
        keycodes[0x076] = .KEYCODE_F24;

        keycodes[0x038] = .KEYCODE_LEFT_ALT;
        keycodes[0x01D] = .KEYCODE_LEFT_CONTROL;
        keycodes[0x02A] = .KEYCODE_LEFT_SHIFT;
        keycodes[0x15B] = .KEYCODE_LEFT_SUPER;
        keycodes[0x137] = .KEYCODE_PRINT_SCREEN;
        keycodes[0x138] = .KEYCODE_RIGHT_ALT;
        keycodes[0x11D] = .KEYCODE_RIGHT_CONTROL;
        keycodes[0x036] = .KEYCODE_RIGHT_SHIFT;
        keycodes[0x15C] = .KEYCODE_RIGHT_SUPER;

        keycodes[0x14B] = .KEYCODE_LEFT;
        keycodes[0x14D] = .KEYCODE_RIGHT;
        keycodes[0x148] = .KEYCODE_UP;
        keycodes[0x150] = .KEYCODE_DOWN;

        keycodes[0x052] = .KEYCODE_KP_0;
        keycodes[0x04F] = .KEYCODE_KP_1;
        keycodes[0x050] = .KEYCODE_KP_2;
        keycodes[0x051] = .KEYCODE_KP_3;
        keycodes[0x04B] = .KEYCODE_KP_4;
        keycodes[0x04C] = .KEYCODE_KP_5;
        keycodes[0x04D] = .KEYCODE_KP_6;
        keycodes[0x047] = .KEYCODE_KP_7;
        keycodes[0x048] = .KEYCODE_KP_8;
        keycodes[0x049] = .KEYCODE_KP_9;
        keycodes[0x04E] = .KEYCODE_KP_ADD;
        keycodes[0x053] = .KEYCODE_KP_DECIMAL;
        keycodes[0x135] = .KEYCODE_KP_DIVIDE;
        keycodes[0x11C] = .KEYCODE_KP_ENTER;
        keycodes[0x037] = .KEYCODE_KP_MULTIPLY;
        keycodes[0x04A] = .KEYCODE_KP_SUBTRACT;
    }
}

_current_window: *Window;
update_window :: (using wndw: *Window) {
    _current_window = wndw;

    for i: 0..wndw.keys_down.count-1 {
        wndw.keys_down[i] = false;
    }

    for i: 0..wndw.keys_up.count-1 {
        wndw.keys_up[i] = false;
    }

    for i: 0..wndw.mouse_down.count-1 {
        wndw.mouse_down[i] = false;
    }

    for i: 0..wndw.mouse_up.count-1 {
        wndw.mouse_up[i] = false;
    }

    array_reset_keeping_memory(*window.character_input);

    mouse_pixel_delta = .{};
    mouse_scroll = 0;

    msg: MSG;
    while PeekMessageW(*msg, null, 0, 0, PM_REMOVE) {
        TranslateMessage(*msg);
        DispatchMessageW(*msg);
    }

    _current_window.updated_once = true;
    _current_window = null;
}

_win32_proc :: (hwnd: HWND, msg: u32, w: WPARAM, l: LPARAM) -> LRESULT #c_call {
    HIWORD :: (w: WPARAM) -> u16 { return cast,trunc(u16)((cast,trunc(u32)(w) >> 16) & 0xffff); }
    HIWORD :: (l: LPARAM) -> s16 { return cast,trunc(s16)((cast,trunc(u32)(l) >> 16) & 0xffff); }
    LOWORD :: (w: WPARAM) -> u16 { return cast,trunc(u16)w; }
    LOWORD :: (l: LPARAM) -> s16 { return cast,trunc(s16)l; }

    new_context: Context;
    new_context.allocator = context.default_allocator;
    new_context.logger    = Context.default_logger;

    push_context new_context {
        if msg == {
            case WM_ACTIVATEAPP; {
                return 0;
            }
            case WM_CLOSE; {
                _current_window.should_close = true;
                return 0;
            }
            case WM_DESTROY; {
                return 0;
            }
            case WM_SIZE; {
                if w == {
                    case 0 /* SIZE_RESTORED  */; { }
                    case 1 /* SIZE_MINIMIZED */; { }
                    case 2 /* SIZE_MAXIMIZED */; { }
                    case 3 /* SIZE_MAXSHOW   */; { }
                    case 4 /* SIZE_MAXHIDE   */; { }
                }

                width  := LOWORD(l);
                height := HIWORD(l);

                if width  <= 0 width  = 1;
                if height <= 0 height = 1;

                _current_window.width  = width;
                _current_window.height = height;
                _current_window.aspect = cast(float)width / cast(float)height;

                // TODO portability
                // if _current_window.updated_once {
                //     for evnt: window.app_event_listeners {
                //         evnt(.RESIZE);
                //     }
                // }

                return 0;
            }
            case WM_KEYDOWN; #through;
            case WM_SYSKEYDOWN; {
                input := get_keycode(xx HIWORD(l)&0x1FF);
                if !_current_window.keys_held[input] {
                    _current_window.keys_down[input] = true;
                }
                _current_window.keys_held[input] = true;
                return 0;
            }
            case WM_KEYUP; #through;
            case WM_SYSKEYUP; {
                input := get_keycode(xx HIWORD(l)&0x1FF);
                _current_window.keys_up[input] = true;
                _current_window.keys_held[input] = false;
                return 0;
            }
            case WM_MOUSEMOVE; {
                x := LOWORD(l);
                y := HIWORD(l);
                old_pos := _current_window.mouse_position_pixel;
                _current_window.mouse_position_pixel = make_vector2(cast(float)x, _current_window.height - cast(float)y);
                _current_window.mouse_position_unit.x = _current_window.mouse_position_pixel.x / _current_window.width;
                _current_window.mouse_position_unit.y = _current_window.mouse_position_pixel.y / _current_window.height;
                _current_window.mouse_pixel_delta = _current_window.mouse_position_pixel - old_pos;
                return 0;
            }
            case WM_MOUSEWHEEL; {
                scroll := (cast,trunc(s16)HIWORD(w)) / 120; // note(josh): 120 is WHEEL_DELTA in windows
                _current_window.mouse_scroll = cast(float)scroll;
                // for evnt: window.app_event_listeners {
                //     evnt(.SCROLL);
                // }
                return 0;
            }
            case WM_LBUTTONDOWN; {
                if _current_window.mouse_capture_sum == 0  SetCapture(_current_window.handle);
                _current_window.mouse_capture_sum += 1;

                if !_current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_LEFT] {
                    _current_window.mouse_down[cast(int)Mousebutton.MOUSEBUTTON_LEFT] = true;
                }
                _current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_LEFT] = true;
                return 0;
            }
            case WM_LBUTTONUP; {
                _current_window.mouse_capture_sum -= 1;
                if _current_window.mouse_capture_sum == 0  ReleaseCapture();

                _current_window.mouse_up[cast(int)Mousebutton.MOUSEBUTTON_LEFT]   = true;
                _current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_LEFT] = false;
                return 0;
            }
            case WM_MBUTTONDOWN; {
                if _current_window.mouse_capture_sum == 0 SetCapture(_current_window.handle);
                _current_window.mouse_capture_sum += 1;

                if !_current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_MIDDLE] {
                    _current_window.mouse_down[cast(int)Mousebutton.MOUSEBUTTON_MIDDLE] = true;
                }
                _current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_MIDDLE] = true;
                return 0;
            }
            case WM_MBUTTONUP; {
                _current_window.mouse_capture_sum -= 1;
                if _current_window.mouse_capture_sum == 0 ReleaseCapture();

                _current_window.mouse_up[cast(int)Mousebutton.MOUSEBUTTON_MIDDLE]   = true;
                _current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_MIDDLE] = false;
                return 0;
            }
            case WM_RBUTTONDOWN; {
                if _current_window.mouse_capture_sum == 0 SetCapture(_current_window.handle);
                _current_window.mouse_capture_sum += 1;

                if !_current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_RIGHT] {
                    _current_window.mouse_down[cast(int)Mousebutton.MOUSEBUTTON_RIGHT] = true;
                }
                _current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_RIGHT] = true;
                return 0;
            }
            case WM_RBUTTONUP; {
                _current_window.mouse_capture_sum -= 1;
                if _current_window.mouse_capture_sum == 0 ReleaseCapture();

                _current_window.mouse_up[cast(int)Mousebutton.MOUSEBUTTON_RIGHT]   = true;
                _current_window.mouse_held[cast(int)Mousebutton.MOUSEBUTTON_RIGHT] = false;
                return 0;
            }
            case WM_CHAR; {
                // #if DEVELOPER imgui.GetIO().AddInputCharacter(imgui.GetIO(), xx w);

                if w == {
                    case 0x08; _current_window.keys_down[Keycode.KEYCODE_BACKSPACE] = true;
                    case 0x1B; _current_window.keys_down[Keycode.KEYCODE_ESCAPE] = true;
                    case 0x09; _current_window.keys_down[Keycode.KEYCODE_TAB] = true;
                    case 0x0D; _current_window.keys_down[Keycode.KEYCODE_ENTER] = true;
                    case; array_add(*window.character_input, xx w);
                }

                return 0;
            }
        }
        return DefWindowProcW(hwnd, msg, w, l);
    }
}

Event :: enum {
    _INVALID;
    RESIZE;
    SCROLL;
}

Mousebutton :: enum int {
    MOUSEBUTTON_LEFT;
    MOUSEBUTTON_RIGHT;
    MOUSEBUTTON_MIDDLE;

    COUNT;
}

get_keycode :: (sc: int) -> Keycode {
    if sc < 0 return .KEYCODE_INVALID;
    if sc >= keycodes.count return .KEYCODE_INVALID;

    return keycodes[sc];
}

get_key_down :: (window: *Window, kc: Keycode, capture := false) -> bool {
    if window.block_keys then return false;
    state := window.keys_down[kc];
    if state && capture window.keys_down[kc] = false;
    return state;
}

get_key_up :: (window: *Window, kc: Keycode, capture := false) -> bool {
    if window.block_keys then return false;
    state := window.keys_up[kc];
    if state && capture window.keys_up[kc] = false;
    return state;
}

get_key_held :: (window: *Window, kc: Keycode) -> bool {
    if window.block_keys then return false;
    // do we want to capture this?
    return window.keys_held[kc];
}

get_mouse_down :: (window: *Window, kc: Mousebutton, capture := false) -> bool {
    if window.block_mouse then return false;
    state := window.mouse_down[kc];
    if state && capture window.mouse_down[kc] = false;
    return state;
}

get_mouse_up :: (window: *Window, kc: Mousebutton, capture := false) -> bool {
    if window.block_mouse then return false;
    state := window.mouse_up[kc];
    if state && capture window.mouse_up[kc] = false;
    return state;
}

get_mouse_held :: (window: *Window, kc: Mousebutton) -> bool {
    if window.block_mouse then return false;
    // do we want to capture this?
    return window.mouse_held[kc];
}

get_key_down_ignore_block :: (window: *Window, kc: Keycode, capture := false) -> bool {
    state := window.keys_down[kc];
    if state && capture window.keys_down[kc] = false;
    return state;
}

get_key_up_ignore_block :: (window: *Window, kc: Keycode, capture := false) -> bool {
    state := window.keys_up[kc];
    if state && capture window.keys_up[kc] = false;
    return state;
}

get_key_held_ignore_block :: (window: *Window, kc: Keycode) -> bool {
    // do we want to capture this?
    return window.keys_held[kc];
}

get_mouse_down_ignore_block :: (window: *Window, kc: Mousebutton, capture := false) -> bool {
    state := window.mouse_down[kc];
    if state && capture window.mouse_down[kc] = false;
    return state;
}

get_mouse_up_ignore_block :: (window: *Window, kc: Mousebutton, capture := false) -> bool {
    state := window.mouse_up[kc];
    if state && capture window.mouse_up[kc] = false;
    return state;
}

get_mouse_held_ignore_block :: (window: *Window, kc: Mousebutton) -> bool {
    // do we want to capture this?
    return window.mouse_held[kc];
}

Keycode :: enum int {
    KEYCODE_INVALID;
    KEYCODE_SPACE;
    KEYCODE_APOSTROPHE;
    KEYCODE_COMMA;
    KEYCODE_MINUS;
    KEYCODE_PERIOD;
    KEYCODE_SLASH;
    KEYCODE_0;
    KEYCODE_1;
    KEYCODE_2;
    KEYCODE_3;
    KEYCODE_4;
    KEYCODE_5;
    KEYCODE_6;
    KEYCODE_7;
    KEYCODE_8;
    KEYCODE_9;
    KEYCODE_SEMICOLON;
    KEYCODE_EQUAL;
    KEYCODE_A;
    KEYCODE_B;
    KEYCODE_C;
    KEYCODE_D;
    KEYCODE_E;
    KEYCODE_F;
    KEYCODE_G;
    KEYCODE_H;
    KEYCODE_I;
    KEYCODE_J;
    KEYCODE_K;
    KEYCODE_L;
    KEYCODE_M;
    KEYCODE_N;
    KEYCODE_O;
    KEYCODE_P;
    KEYCODE_Q;
    KEYCODE_R;
    KEYCODE_S;
    KEYCODE_T;
    KEYCODE_U;
    KEYCODE_V;
    KEYCODE_W;
    KEYCODE_X;
    KEYCODE_Y;
    KEYCODE_Z;
    KEYCODE_LEFT_BRACKET;
    KEYCODE_BACKSLASH;
    KEYCODE_RIGHT_BRACKET;
    KEYCODE_GRAVE_ACCENT;
    KEYCODE_WORLD_1;
    KEYCODE_WORLD_2;
    KEYCODE_ESCAPE;
    KEYCODE_ENTER;
    KEYCODE_TAB;
    KEYCODE_BACKSPACE;
    KEYCODE_INSERT;
    KEYCODE_DELETE;
    KEYCODE_RIGHT;
    KEYCODE_LEFT;
    KEYCODE_DOWN;
    KEYCODE_UP;
    KEYCODE_PAGE_UP;
    KEYCODE_PAGE_DOWN;
    KEYCODE_HOME;
    KEYCODE_END;
    KEYCODE_CAPS_LOCK;
    KEYCODE_SCROLL_LOCK;
    KEYCODE_NUM_LOCK;
    KEYCODE_PRINT_SCREEN;
    KEYCODE_PAUSE;
    KEYCODE_F1;
    KEYCODE_F2;
    KEYCODE_F3;
    KEYCODE_F4;
    KEYCODE_F5;
    KEYCODE_F6;
    KEYCODE_F7;
    KEYCODE_F8;
    KEYCODE_F9;
    KEYCODE_F10;
    KEYCODE_F11;
    KEYCODE_F12;
    KEYCODE_F13;
    KEYCODE_F14;
    KEYCODE_F15;
    KEYCODE_F16;
    KEYCODE_F17;
    KEYCODE_F18;
    KEYCODE_F19;
    KEYCODE_F20;
    KEYCODE_F21;
    KEYCODE_F22;
    KEYCODE_F23;
    KEYCODE_F24;
    KEYCODE_F25;
    KEYCODE_KP_0;
    KEYCODE_KP_1;
    KEYCODE_KP_2;
    KEYCODE_KP_3;
    KEYCODE_KP_4;
    KEYCODE_KP_5;
    KEYCODE_KP_6;
    KEYCODE_KP_7;
    KEYCODE_KP_8;
    KEYCODE_KP_9;
    KEYCODE_KP_DECIMAL;
    KEYCODE_KP_DIVIDE;
    KEYCODE_KP_MULTIPLY;
    KEYCODE_KP_SUBTRACT;
    KEYCODE_KP_ADD;
    KEYCODE_KP_ENTER;
    KEYCODE_KP_EQUAL;
    KEYCODE_LEFT_SHIFT;
    KEYCODE_LEFT_CONTROL;
    KEYCODE_LEFT_ALT;
    KEYCODE_LEFT_SUPER;
    KEYCODE_RIGHT_SHIFT;
    KEYCODE_RIGHT_CONTROL;
    KEYCODE_RIGHT_ALT;
    KEYCODE_RIGHT_SUPER;
    KEYCODE_MENU;

    COUNT;
}