#module_parameters (DEFAULT_MSAA: s32 = 4);

#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .LINUX {
    #load "xcb_window.jai";
} else {
    #assert(false);
}

#scope_file
_main_display: Display;

#scope_module

#import "Basic";
Input :: #import "Input";

DEFAULT_WINDOW_CREATION_COLOR :: float.[.15,.15,.2];

main_display :: *_main_display;

#scope_export

Display :: union {
    #as using base: Base_Display;
    #as xcb: XCB_Display;
}


Base_Display :: struct {
    type := Base_Display;

    windows: [..]*Window;
    create_window: #type (
        display: *Display,
        window_ret: *Window,
        width: s32, height: s32,
        window_name: string,
        window_x := 0, window_y := 0,
        parent: *Window = null,
        background_color_rgb: [3]float = DEFAULT_WINDOW_CREATION_COLOR) -> bool;

    wait_for_events: #type (display: *Display);
    update_window_events: #type (display: *Display);

    get_dimensions: #type (
        window: *Window,
        right_handed: bool) -> x: s32, y: s32, width: s32, height: s32, success: bool;

    get_mouse_pointer_position: #type (
        display: *Display,
        right_handed := false) -> x: s32, y: s32, success: bool;
}


Window :: union {
    #as base: Base_Window;
    #as xcb: XCB_Window;
}

Base_Window :: struct {
    type := Window;
    display: *Display;
    window_minimized := false;

    has_native_handle: #type (window: *Window, native_handle: *void) -> bool;

    get_mouse_pointer_position: #type (
        display: *Window,
        right_handed := false) -> x: s32, y: s32, success: bool;

    set_window_title: #type (window: *Window, title: string);
}


operator== :: (a: *Window, b: *Window) -> bool {
    if a == null || b == null {
        return a == b;
    }

    if a.base.type != b.base.type {
        return false;
    }

    if a.base.type == XCB_Window {
        return a.xcb.handle == b.xcb.handle;
    }

    assert(false, "Not implemented for a: % and b:%", a.base.type, b.base.type);
    return false;
}


JDL_init :: () -> success: bool {
    success := xcb_init_display(main_display);

    // Error handling
    return success;
}


create_window :: (window_width: s32, window_height: s32, window_title: string) -> Window_Type {
    window := New(Window);
    success := main_display.create_window(
        main_display,
        window,
        window_width,
        window_height,
        window_title
    );

    if !success {
        // Error handling
    }

    array_add(*main_display.windows, window);

    return window;
}


get_dimensions :: inline (window: *Window, right_handed: bool) -> x: s32, y:s32, width: s32, height: s32, success := true {
    x, y, w, h, s := window.base.display.base.get_dimensions(window, right_handed);
    return x, y, w, h, s;
}


get_mouse_pointer_position :: inline (window: *Window, right_handed: bool) -> x: int, y: int, success: bool {
    x, y, s := window.base.get_mouse_pointer_position(window, right_handed);
    return xx x, xx y, s;
}


get_mouse_pointer_position :: inline (right_handed: bool) -> x: int, y: int, success: bool {
    x, y, s := main_display.get_mouse_pointer_position(main_display, right_handed);
    return xx x, xx y, s;
}

set_window_titile :: inline (window: *Window, title: string) {
    window.base.set_window_title(window, title);
}

wait_for_events :: inline () {
    main_display.wait_for_events(main_display);
}

update_window_events :: inline () {
    Input.input_per_frame_event_and_flag_update();
    main_display.update_window_events(main_display);
}


get_by_native_handle :: inline (display: *Display, native_handle: *void) -> *Window {
    bd: *Base_Display = display;
    for bd.windows {
        bw: *Base_Window = it;
        if bw.has_native_handle(it, native_handle) return it;
    }
    return INVALID_WINDOW;
}

has_native_handle :: inline (window: *Window, native_handle: *void) -> bool {
    bw: *Base_Window = window;
    return bw.has_native_handle(window, native_handle);
}


add_resize_record :: (hwnd: Window_Type, width: s32, height: s32) {
    record: *Input.Window_Resize_Record;

    for * Input.pending_resizes {
        if it.window == hwnd {
            record = it;
            break;
        }
    }

    if !record {
        record = array_add(*Input.pending_resizes);
    }

    record.window = hwnd;
    record.width = width;
    record.height = height;
}


Window_Type :: *Window;
INVALID_WINDOW : Window_Type : null;

#scope_file
// Basic :: #import "Basic";
#import "Hash_Table";

