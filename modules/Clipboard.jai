// Clipboard module is just for interop with modules that are shipped with the compiler
// It just exposes JDL functionality

os_clipboard_get_text :: inline (win: JDL.Window_Type) -> string {  // Allocated via alloc; should be manually freed.
    return JDL.clipboard_get_text();
}

os_clipboard_get_text :: inline () -> string {
    return JDL.clipboard_get_text();
}

os_clipboard_set_text :: inline (win: JDL.Window_Type, text: string) {
    JDL.clipboard_set_text(text);
}

os_clipboard_set_text :: inline (text: string) {
    JDL.clipboard_set_text(text);
}

os_clipboard_set_bitmap :: inline (win: JDL.Window_Type, width: s32, height: s32, pixels: *u8, channels: s32, flip := false) {
    JDL.clipboard_set_bitmap(width, height, pixels, channels, flip);
}

os_clipboard_set_bitmap :: inline (width: s32, height: s32, pixels: *u8, channels: s32, flip := false) {
    JDL.clipboard_set_bitmap(width, height, pixels, channels, flip);
}


JDL :: #import "JDL";
