#module_parameters (DEFAULT_MSAA: s32 = 4);

#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .LINUX {
    #load "xcb_window.jai";
    #load "xkbcommon.jai";
} else {
    #assert(false);
}

#scope_module
DEFAULT_WHEEL_DELTA :: 120;

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
        window_class: string = "JDL-jai-application",
        parent: *Window = null,
        background_color_rgb: [3]float = DEFAULT_WINDOW_CREATION_COLOR) -> bool;

    wait_for_events: #type (display: *Display);
    update_window_events: #type (display: *Display);
    translate_key_code: #type (key: u64) -> Input.Key_Code;
    clipboard_get_text: #type (display: *Display) -> string;
    clipboard_set_text: #type (display: *Display, text: string);
    get_dimensions: #type (
        window: *Window,
        right_handed: bool) -> x: s32, y: s32, width: s32, height: s32, success: bool;

    get_mouse_pointer_position: #type (
        display: *Display,
        right_handed := false) -> x: s32, y: s32, success: bool;

    // xkb_state is on the base window because it's common for X11 and Wayland
    #if OS == .LINUX {
        xkb_state: XKB_State;
    }
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
    finalize_present: #type (window: *Window);
    set_cursor: #type (window: *Window, cursor: Cursor) -> success: bool;
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


// Based on Pointer_Image from GetRect
Cursor :: enum u16 {
    DEFAULT             :: 0;
    PRESSABLE           :: 1;
    LOCKED              :: 2;

    DRAGGING_HORIZONTAL :: 3;
    DRAGGING_VERTICAL   :: 4;
    DRAGGING_FREE       :: 5;

    DRAGGING_NW_SE      :: 6;
    DRAGGING_NE_SW      :: 7;
    TEXT_SELECT         :: 8;
}


NUM_CURSORS :: #run enum_highest_value(Cursor) + 1;


JDL_init :: () -> success: bool {
    success := xcb_init_display(main_display);

    // Error handling
    return success;
}


create_window :: (window_width: s32, window_height: s32, window_title: string, x: s32 = 0, y: s32 = 0, window_class: string = "JDL-jai-application") -> Window_Type {
    window := New(Window);
    success := main_display.create_window(
        main_display,
        window,
        window_width, window_height,
        window_title,
        x, y,
        window_class,
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

translate_key_code :: inline (key: u64) -> Input.Key_Code {
    bd: *Base_Display = main_display;
    return bd.translate_key_code(key);
}

// translate_key_code :: inline (display: *Display, key: u64) -> Input.Key_Code {
//     return display.base.translate_key_code(key);
// }

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

finalize_present :: inline (window: *Window) {
    window.base.finalize_present(window);
}


// Cursors
set_cursor :: inline (window: *Window, cursor: Cursor) -> success: bool {
    base_window: *Base_Window = window;
    return base_window.set_cursor(window, cursor);
}


Window_Type :: *Window;
INVALID_WINDOW : Window_Type : null;


// Clipboard
clipboard_get_text :: inline () -> string {  // Allocated via alloc; should be manually freed.
    return main_display.clipboard_get_text(main_display);
}

clipboard_set_text :: (text: string) {
    main_display.clipboard_set_text(main_display, text);
}

clipboard_set_bitmap :: (width: s32, height: s32, pixels: *u8, channels: s32, flip := false) {
    // Not implemented
}


#scope_file
_main_display: Display;
