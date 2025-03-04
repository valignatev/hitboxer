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

    get_mouse_pointer_position: #type (
        display: *Window,
        right_handed := false) -> x: s32, y: s32, success: bool;
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


wait_for_events :: inline () {
    main_display.wait_for_events(main_display);
}


Window_Type :: *Window;
INVALID_WINDOW : Window_Type : null;

#scope_file
// Basic :: #import "Basic";
#import "Hash_Table";

