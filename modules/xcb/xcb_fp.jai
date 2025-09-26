//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



X_PROTOCOL :: 11;

X_PROTOCOL_REVISION :: 0;

X_TCP_PORT :: 6000;

XCB_CONN_ERROR :: 1;

XCB_CONN_CLOSED_EXT_NOTSUPPORTED :: 2;

XCB_CONN_CLOSED_MEM_INSUFFICIENT :: 3;

XCB_CONN_CLOSED_REQ_LEN_EXCEED :: 4;

XCB_CONN_CLOSED_PARSE_ERR :: 5;

XCB_CONN_CLOSED_INVALID_SCREEN :: 6;

XCB_CONN_CLOSED_FDPASSING_FAILED :: 7;

XCB_KEY_PRESS :: 2;

XCB_KEY_RELEASE :: 3;

XCB_BUTTON_PRESS :: 4;

XCB_BUTTON_RELEASE :: 5;

XCB_MOTION_NOTIFY :: 6;

XCB_ENTER_NOTIFY :: 7;

XCB_LEAVE_NOTIFY :: 8;

XCB_FOCUS_IN :: 9;

XCB_FOCUS_OUT :: 10;

XCB_KEYMAP_NOTIFY :: 11;

XCB_EXPOSE :: 12;

XCB_GRAPHICS_EXPOSURE :: 13;

XCB_NO_EXPOSURE :: 14;

XCB_VISIBILITY_NOTIFY :: 15;

XCB_CREATE_NOTIFY :: 16;

XCB_DESTROY_NOTIFY :: 17;

XCB_UNMAP_NOTIFY :: 18;

XCB_MAP_NOTIFY :: 19;

XCB_MAP_REQUEST :: 20;

XCB_REPARENT_NOTIFY :: 21;

XCB_CONFIGURE_NOTIFY :: 22;

XCB_CONFIGURE_REQUEST :: 23;

XCB_GRAVITY_NOTIFY :: 24;

XCB_RESIZE_REQUEST :: 25;

XCB_CIRCULATE_NOTIFY :: 26;

XCB_CIRCULATE_REQUEST :: 27;

XCB_PROPERTY_NOTIFY :: 28;

XCB_SELECTION_CLEAR :: 29;

XCB_SELECTION_REQUEST :: 30;

XCB_SELECTION_NOTIFY :: 31;

XCB_COLORMAP_NOTIFY :: 32;

XCB_CLIENT_MESSAGE :: 33;

XCB_MAPPING_NOTIFY :: 34;

XCB_GE_GENERIC :: 35;

XCB_REQUEST :: 1;

XCB_VALUE :: 2;

XCB_WINDOW :: 3;

XCB_PIXMAP :: 4;

XCB_ATOM :: 5;

XCB_CURSOR :: 6;

XCB_FONT :: 7;

XCB_MATCH :: 8;

XCB_DRAWABLE :: 9;

XCB_ACCESS :: 10;

XCB_ALLOC :: 11;

XCB_COLORMAP :: 12;

XCB_G_CONTEXT :: 13;

XCB_ID_CHOICE :: 14;

XCB_NAME :: 15;

XCB_LENGTH :: 16;

XCB_IMPLEMENTATION :: 17;

XCB_CREATE_WINDOW :: 1;

XCB_CHANGE_WINDOW_ATTRIBUTES :: 2;

XCB_GET_WINDOW_ATTRIBUTES :: 3;

XCB_DESTROY_WINDOW :: 4;

XCB_DESTROY_SUBWINDOWS :: 5;

XCB_CHANGE_SAVE_SET :: 6;

XCB_REPARENT_WINDOW :: 7;

XCB_MAP_WINDOW :: 8;

XCB_MAP_SUBWINDOWS :: 9;

XCB_UNMAP_WINDOW :: 10;

XCB_UNMAP_SUBWINDOWS :: 11;

XCB_CONFIGURE_WINDOW :: 12;

XCB_CIRCULATE_WINDOW :: 13;

XCB_GET_GEOMETRY :: 14;

XCB_QUERY_TREE :: 15;

XCB_INTERN_ATOM :: 16;

XCB_GET_ATOM_NAME :: 17;

XCB_CHANGE_PROPERTY :: 18;

XCB_DELETE_PROPERTY :: 19;

XCB_GET_PROPERTY :: 20;

XCB_LIST_PROPERTIES :: 21;

XCB_SET_SELECTION_OWNER :: 22;

XCB_GET_SELECTION_OWNER :: 23;

XCB_CONVERT_SELECTION :: 24;

XCB_SEND_EVENT :: 25;

XCB_GRAB_POINTER :: 26;

XCB_UNGRAB_POINTER :: 27;

XCB_GRAB_BUTTON :: 28;

XCB_UNGRAB_BUTTON :: 29;

XCB_CHANGE_ACTIVE_POINTER_GRAB :: 30;

XCB_GRAB_KEYBOARD :: 31;

XCB_UNGRAB_KEYBOARD :: 32;

XCB_GRAB_KEY :: 33;

XCB_UNGRAB_KEY :: 34;

XCB_ALLOW_EVENTS :: 35;

XCB_GRAB_SERVER :: 36;

XCB_UNGRAB_SERVER :: 37;

XCB_QUERY_POINTER :: 38;

XCB_GET_MOTION_EVENTS :: 39;

XCB_TRANSLATE_COORDINATES :: 40;

XCB_WARP_POINTER :: 41;

XCB_SET_INPUT_FOCUS :: 42;

XCB_GET_INPUT_FOCUS :: 43;

XCB_QUERY_KEYMAP :: 44;

XCB_OPEN_FONT :: 45;

XCB_CLOSE_FONT :: 46;

XCB_QUERY_FONT :: 47;

XCB_QUERY_TEXT_EXTENTS :: 48;

XCB_LIST_FONTS :: 49;

XCB_LIST_FONTS_WITH_INFO :: 50;

XCB_SET_FONT_PATH :: 51;

XCB_GET_FONT_PATH :: 52;

XCB_CREATE_PIXMAP :: 53;

XCB_FREE_PIXMAP :: 54;

XCB_CREATE_GC :: 55;

XCB_CHANGE_GC :: 56;

XCB_COPY_GC :: 57;

XCB_SET_DASHES :: 58;

XCB_SET_CLIP_RECTANGLES :: 59;

XCB_FREE_GC :: 60;

XCB_CLEAR_AREA :: 61;

XCB_COPY_AREA :: 62;

XCB_COPY_PLANE :: 63;

XCB_POLY_POINT :: 64;

XCB_POLY_LINE :: 65;

XCB_POLY_SEGMENT :: 66;

XCB_POLY_RECTANGLE :: 67;

XCB_POLY_ARC :: 68;

XCB_FILL_POLY :: 69;

XCB_POLY_FILL_RECTANGLE :: 70;

XCB_POLY_FILL_ARC :: 71;

XCB_PUT_IMAGE :: 72;

XCB_GET_IMAGE :: 73;

XCB_POLY_TEXT_8 :: 74;

XCB_POLY_TEXT_16 :: 75;

XCB_IMAGE_TEXT_8 :: 76;

XCB_IMAGE_TEXT_16 :: 77;

XCB_CREATE_COLORMAP :: 78;

XCB_FREE_COLORMAP :: 79;

XCB_COPY_COLORMAP_AND_FREE :: 80;

XCB_INSTALL_COLORMAP :: 81;

XCB_UNINSTALL_COLORMAP :: 82;

XCB_LIST_INSTALLED_COLORMAPS :: 83;

XCB_ALLOC_COLOR :: 84;

XCB_ALLOC_NAMED_COLOR :: 85;

XCB_ALLOC_COLOR_CELLS :: 86;

XCB_ALLOC_COLOR_PLANES :: 87;

XCB_FREE_COLORS :: 88;

XCB_STORE_COLORS :: 89;

XCB_STORE_NAMED_COLOR :: 90;

XCB_QUERY_COLORS :: 91;

XCB_LOOKUP_COLOR :: 92;

XCB_CREATE_CURSOR :: 93;

XCB_CREATE_GLYPH_CURSOR :: 94;

XCB_FREE_CURSOR :: 95;

XCB_RECOLOR_CURSOR :: 96;

XCB_QUERY_BEST_SIZE :: 97;

XCB_QUERY_EXTENSION :: 98;

XCB_LIST_EXTENSIONS :: 99;

XCB_CHANGE_KEYBOARD_MAPPING :: 100;

XCB_GET_KEYBOARD_MAPPING :: 101;

XCB_CHANGE_KEYBOARD_CONTROL :: 102;

XCB_GET_KEYBOARD_CONTROL :: 103;

XCB_BELL :: 104;

XCB_CHANGE_POINTER_CONTROL :: 105;

XCB_GET_POINTER_CONTROL :: 106;

XCB_SET_SCREEN_SAVER :: 107;

XCB_GET_SCREEN_SAVER :: 108;

XCB_CHANGE_HOSTS :: 109;

XCB_LIST_HOSTS :: 110;

XCB_SET_ACCESS_CONTROL :: 111;

XCB_SET_CLOSE_DOWN_MODE :: 112;

XCB_KILL_CLIENT :: 113;

XCB_ROTATE_PROPERTIES :: 114;

XCB_FORCE_SCREEN_SAVER :: 115;

XCB_SET_POINTER_MAPPING :: 116;

XCB_GET_POINTER_MAPPING :: 117;

XCB_SET_MODIFIER_MAPPING :: 118;

XCB_GET_MODIFIER_MAPPING :: 119;

XCB_NO_OPERATION :: 127;

XCB_NONE :: 0;

XCB_COPY_FROM_PARENT :: 0;

XCB_CURRENT_TIME :: 0;

XCB_NO_SYMBOL :: 0;

xcb_connection_t :: struct {}

/**
* @brief Generic iterator.
*
* A generic iterator structure.
*/
xcb_generic_iterator_t :: struct {
    data:  *void; /**< Data of the current iterator */
    rem:   s32; /**< remaining elements */
    index: s32; /**< index of the current iterator */
}

/**
* @brief Generic reply.
*
* A generic reply structure.
*/
xcb_generic_reply_t :: struct {
    response_type: u8; /**< Type of the response */
    pad0:          u8; /**< Padding */
    sequence:      u16; /**< Sequence number */
    length:        u32; /**< Length of the response */
}

/**
* @brief Generic event.
*
* A generic event structure.
*/
xcb_generic_event_t :: struct {
    response_type: u8; /**< Type of the response */
    pad0:          u8; /**< Padding */
    sequence:      u16; /**< Sequence number */
    pad:           [7] u32; /**< Padding */
    full_sequence: u32; /**< full sequence */
}

/**
* @brief Raw Generic event.
*
* A generic event structure as used on the wire, i.e., without the full_sequence field
*/
xcb_raw_generic_event_t :: struct {
    response_type: u8; /**< Type of the response */
    pad0:          u8; /**< Padding */
    sequence:      u16; /**< Sequence number */
    pad:           [7] u32; /**< Padding */
}

/**
* @brief GE event
*
* An event as sent by the XGE extension. The length field specifies the
* number of 4-byte blocks trailing the struct.
*
* @deprecated Since some fields in this struct have unfortunate names, it is
* recommended to use xcb_ge_generic_event_t instead.
*/
xcb_ge_event_t :: struct {
    response_type: u8; /**< Type of the response */
    pad0:          u8; /**< Padding */
    sequence:      u16; /**< Sequence number */
    length:        u32;
    event_type:    u16;
    pad1:          u16;
    pad:           [5] u32; /**< Padding */
    full_sequence: u32; /**< full sequence */
}

/**
* @brief Generic error.
*
* A generic error structure.
*/
xcb_generic_error_t :: struct {
    response_type: u8; /**< Type of the response */
    error_code:    u8; /**< Error code */
    sequence:      u16; /**< Sequence number */
    resource_id:   u32;
    /** < Resource ID for requests with side effects only */
    minor_code:    u16;
    /** < Minor opcode of the failed request */
    major_code:    u8;
    /** < Major opcode of the failed request */
    pad0:          u8;
    pad:           [5] u32; /**< Padding */
    full_sequence: u32; /**< full sequence */
}

/**
* @brief Generic cookie.
*
* A generic cookie structure.
*/
xcb_void_cookie_t :: struct {
    sequence: u32; /**< Sequence number */
}

/**
* @brief xcb_char2b_t
**/
xcb_char2b_t :: struct {
    byte1: u8;
    byte2: u8;
}

/**
* @brief xcb_char2b_iterator_t
**/
xcb_char2b_iterator_t :: struct {
    data:  *xcb_char2b_t;
    rem:   s32;
    index: s32;
}

xcb_window_t :: u32;

/**
* @brief xcb_window_iterator_t
**/
xcb_window_iterator_t :: struct {
    data:  *xcb_window_t;
    rem:   s32;
    index: s32;
}

xcb_pixmap_t :: u32;

/**
* @brief xcb_pixmap_iterator_t
**/
xcb_pixmap_iterator_t :: struct {
    data:  *xcb_pixmap_t;
    rem:   s32;
    index: s32;
}

xcb_cursor_t :: u32;

/**
* @brief xcb_cursor_iterator_t
**/
xcb_cursor_iterator_t :: struct {
    data:  *xcb_cursor_t;
    rem:   s32;
    index: s32;
}

xcb_font_t :: u32;

/**
* @brief xcb_font_iterator_t
**/
xcb_font_iterator_t :: struct {
    data:  *xcb_font_t;
    rem:   s32;
    index: s32;
}

xcb_gcontext_t :: u32;

/**
* @brief xcb_gcontext_iterator_t
**/
xcb_gcontext_iterator_t :: struct {
    data:  *xcb_gcontext_t;
    rem:   s32;
    index: s32;
}

xcb_colormap_t :: u32;

/**
* @brief xcb_colormap_iterator_t
**/
xcb_colormap_iterator_t :: struct {
    data:  *xcb_colormap_t;
    rem:   s32;
    index: s32;
}

xcb_atom_t :: u32;

/**
* @brief xcb_atom_iterator_t
**/
xcb_atom_iterator_t :: struct {
    data:  *xcb_atom_t;
    rem:   s32;
    index: s32;
}

xcb_drawable_t :: u32;

/**
* @brief xcb_drawable_iterator_t
**/
xcb_drawable_iterator_t :: struct {
    data:  *xcb_drawable_t;
    rem:   s32;
    index: s32;
}

xcb_fontable_t :: u32;

/**
* @brief xcb_fontable_iterator_t
**/
xcb_fontable_iterator_t :: struct {
    data:  *xcb_fontable_t;
    rem:   s32;
    index: s32;
}

xcb_bool32_t :: u32;

/**
* @brief xcb_bool32_iterator_t
**/
xcb_bool32_iterator_t :: struct {
    data:  *xcb_bool32_t;
    rem:   s32;
    index: s32;
}

xcb_visualid_t :: u32;

/**
* @brief xcb_visualid_iterator_t
**/
xcb_visualid_iterator_t :: struct {
    data:  *xcb_visualid_t;
    rem:   s32;
    index: s32;
}

xcb_timestamp_t :: u32;

/**
* @brief xcb_timestamp_iterator_t
**/
xcb_timestamp_iterator_t :: struct {
    data:  *xcb_timestamp_t;
    rem:   s32;
    index: s32;
}

xcb_keysym_t :: u32;

/**
* @brief xcb_keysym_iterator_t
**/
xcb_keysym_iterator_t :: struct {
    data:  *xcb_keysym_t;
    rem:   s32;
    index: s32;
}

xcb_keycode_t :: u8;

/**
* @brief xcb_keycode_iterator_t
**/
xcb_keycode_iterator_t :: struct {
    data:  *xcb_keycode_t;
    rem:   s32;
    index: s32;
}

xcb_keycode32_t :: u32;

/**
* @brief xcb_keycode32_iterator_t
**/
xcb_keycode32_iterator_t :: struct {
    data:  *xcb_keycode32_t;
    rem:   s32;
    index: s32;
}

xcb_button_t :: u8;

/**
* @brief xcb_button_iterator_t
**/
xcb_button_iterator_t :: struct {
    data:  *xcb_button_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_point_t
**/
xcb_point_t :: struct {
    x: s16;
    y: s16;
}

/**
* @brief xcb_point_iterator_t
**/
xcb_point_iterator_t :: struct {
    data:  *xcb_point_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_rectangle_t
**/
xcb_rectangle_t :: struct {
    x:      s16;
    y:      s16;
    width:  u16;
    height: u16;
}

/**
* @brief xcb_rectangle_iterator_t
**/
xcb_rectangle_iterator_t :: struct {
    data:  *xcb_rectangle_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_arc_t
**/
xcb_arc_t :: struct {
    x:      s16;
    y:      s16;
    width:  u16;
    height: u16;
    angle1: s16;
    angle2: s16;
}

/**
* @brief xcb_arc_iterator_t
**/
xcb_arc_iterator_t :: struct {
    data:  *xcb_arc_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_format_t
**/
xcb_format_t :: struct {
    depth:          u8;
    bits_per_pixel: u8;
    scanline_pad:   u8;
    pad0:           [5] u8;
}

/**
* @brief xcb_format_iterator_t
**/
xcb_format_iterator_t :: struct {
    data:  *xcb_format_t;
    rem:   s32;
    index: s32;
}

xcb_visual_class_t :: enum u32 {
    STATIC_GRAY  :: 0;
    GRAY_SCALE   :: 1;
    STATIC_COLOR :: 2;
    PSEUDO_COLOR :: 3;
    TRUE_COLOR   :: 4;
    DIRECT_COLOR :: 5;

    XCB_VISUAL_CLASS_STATIC_GRAY  :: STATIC_GRAY;
    XCB_VISUAL_CLASS_GRAY_SCALE   :: GRAY_SCALE;
    XCB_VISUAL_CLASS_STATIC_COLOR :: STATIC_COLOR;
    XCB_VISUAL_CLASS_PSEUDO_COLOR :: PSEUDO_COLOR;
    XCB_VISUAL_CLASS_TRUE_COLOR   :: TRUE_COLOR;
    XCB_VISUAL_CLASS_DIRECT_COLOR :: DIRECT_COLOR;
}

/**
* @brief xcb_visualtype_t
**/
xcb_visualtype_t :: struct {
    visual_id:          xcb_visualid_t;
    _class:             u8;
    bits_per_rgb_value: u8;
    colormap_entries:   u16;
    red_mask:           u32;
    green_mask:         u32;
    blue_mask:          u32;
    pad0:               [4] u8;
}

/**
* @brief xcb_visualtype_iterator_t
**/
xcb_visualtype_iterator_t :: struct {
    data:  *xcb_visualtype_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_depth_t
**/
xcb_depth_t :: struct {
    depth:       u8;
    pad0:        u8;
    visuals_len: u16;
    pad1:        [4] u8;
}

/**
* @brief xcb_depth_iterator_t
**/
xcb_depth_iterator_t :: struct {
    data:  *xcb_depth_t;
    rem:   s32;
    index: s32;
}

xcb_event_mask_t :: enum u32 {
    NO_EVENT              :: 0;
    KEY_PRESS             :: 1;
    KEY_RELEASE           :: 2;
    BUTTON_PRESS          :: 4;
    BUTTON_RELEASE        :: 8;
    ENTER_WINDOW          :: 16;
    LEAVE_WINDOW          :: 32;
    POINTER_MOTION        :: 64;
    POINTER_MOTION_HINT   :: 128;
    BUTTON_1_MOTION       :: 256;
    BUTTON_2_MOTION       :: 512;
    BUTTON_3_MOTION       :: 1024;
    BUTTON_4_MOTION       :: 2048;
    BUTTON_5_MOTION       :: 4096;
    BUTTON_MOTION         :: 8192;
    KEYMAP_STATE          :: 16384;
    EXPOSURE              :: 32768;
    VISIBILITY_CHANGE     :: 65536;
    STRUCTURE_NOTIFY      :: 131072;
    RESIZE_REDIRECT       :: 262144;
    SUBSTRUCTURE_NOTIFY   :: 524288;
    SUBSTRUCTURE_REDIRECT :: 1048576;
    FOCUS_CHANGE          :: 2097152;
    PROPERTY_CHANGE       :: 4194304;
    COLOR_MAP_CHANGE      :: 8388608;
    OWNER_GRAB_BUTTON     :: 16777216;

    XCB_EVENT_MASK_NO_EVENT              :: NO_EVENT;
    XCB_EVENT_MASK_KEY_PRESS             :: KEY_PRESS;
    XCB_EVENT_MASK_KEY_RELEASE           :: KEY_RELEASE;
    XCB_EVENT_MASK_BUTTON_PRESS          :: BUTTON_PRESS;
    XCB_EVENT_MASK_BUTTON_RELEASE        :: BUTTON_RELEASE;
    XCB_EVENT_MASK_ENTER_WINDOW          :: ENTER_WINDOW;
    XCB_EVENT_MASK_LEAVE_WINDOW          :: LEAVE_WINDOW;
    XCB_EVENT_MASK_POINTER_MOTION        :: POINTER_MOTION;
    XCB_EVENT_MASK_POINTER_MOTION_HINT   :: POINTER_MOTION_HINT;
    XCB_EVENT_MASK_BUTTON_1_MOTION       :: BUTTON_1_MOTION;
    XCB_EVENT_MASK_BUTTON_2_MOTION       :: BUTTON_2_MOTION;
    XCB_EVENT_MASK_BUTTON_3_MOTION       :: BUTTON_3_MOTION;
    XCB_EVENT_MASK_BUTTON_4_MOTION       :: BUTTON_4_MOTION;
    XCB_EVENT_MASK_BUTTON_5_MOTION       :: BUTTON_5_MOTION;
    XCB_EVENT_MASK_BUTTON_MOTION         :: BUTTON_MOTION;
    XCB_EVENT_MASK_KEYMAP_STATE          :: KEYMAP_STATE;
    XCB_EVENT_MASK_EXPOSURE              :: EXPOSURE;
    XCB_EVENT_MASK_VISIBILITY_CHANGE     :: VISIBILITY_CHANGE;
    XCB_EVENT_MASK_STRUCTURE_NOTIFY      :: STRUCTURE_NOTIFY;
    XCB_EVENT_MASK_RESIZE_REDIRECT       :: RESIZE_REDIRECT;
    XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY   :: SUBSTRUCTURE_NOTIFY;
    XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT :: SUBSTRUCTURE_REDIRECT;
    XCB_EVENT_MASK_FOCUS_CHANGE          :: FOCUS_CHANGE;
    XCB_EVENT_MASK_PROPERTY_CHANGE       :: PROPERTY_CHANGE;
    XCB_EVENT_MASK_COLOR_MAP_CHANGE      :: COLOR_MAP_CHANGE;
    XCB_EVENT_MASK_OWNER_GRAB_BUTTON     :: OWNER_GRAB_BUTTON;
}

xcb_backing_store_t :: enum u32 {
    NOT_USEFUL  :: 0;
    WHEN_MAPPED :: 1;
    ALWAYS      :: 2;

    XCB_BACKING_STORE_NOT_USEFUL  :: NOT_USEFUL;
    XCB_BACKING_STORE_WHEN_MAPPED :: WHEN_MAPPED;
    XCB_BACKING_STORE_ALWAYS      :: ALWAYS;
}

/**
* @brief xcb_screen_t
**/
xcb_screen_t :: struct {
    root:                  xcb_window_t;
    default_colormap:      xcb_colormap_t;
    white_pixel:           u32;
    black_pixel:           u32;
    current_input_masks:   u32;
    width_in_pixels:       u16;
    height_in_pixels:      u16;
    width_in_millimeters:  u16;
    height_in_millimeters: u16;
    min_installed_maps:    u16;
    max_installed_maps:    u16;
    root_visual:           xcb_visualid_t;
    backing_stores:        u8;
    save_unders:           u8;
    root_depth:            u8;
    allowed_depths_len:    u8;
}

/**
* @brief xcb_screen_iterator_t
**/
xcb_screen_iterator_t :: struct {
    data:  *xcb_screen_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_setup_request_t
**/
xcb_setup_request_t :: struct {
    byte_order:                      u8;
    pad0:                            u8;
    protocol_major_version:          u16;
    protocol_minor_version:          u16;
    authorization_protocol_name_len: u16;
    authorization_protocol_data_len: u16;
    pad1:                            [2] u8;
}

/**
* @brief xcb_setup_request_iterator_t
**/
xcb_setup_request_iterator_t :: struct {
    data:  *xcb_setup_request_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_setup_failed_t
**/
xcb_setup_failed_t :: struct {
    status:                 u8;
    reason_len:             u8;
    protocol_major_version: u16;
    protocol_minor_version: u16;
    length:                 u16;
}

/**
* @brief xcb_setup_failed_iterator_t
**/
xcb_setup_failed_iterator_t :: struct {
    data:  *xcb_setup_failed_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_setup_authenticate_t
**/
xcb_setup_authenticate_t :: struct {
    status: u8;
    pad0:   [5] u8;
    length: u16;
}

/**
* @brief xcb_setup_authenticate_iterator_t
**/
xcb_setup_authenticate_iterator_t :: struct {
    data:  *xcb_setup_authenticate_t;
    rem:   s32;
    index: s32;
}

xcb_image_order_t :: enum u8 {
    LSB_FIRST :: 0;
    MSB_FIRST :: 1;

    XCB_IMAGE_ORDER_LSB_FIRST :: LSB_FIRST;
    XCB_IMAGE_ORDER_MSB_FIRST :: MSB_FIRST;
}

/**
* @brief xcb_setup_t
**/
xcb_setup_t :: struct {
    status:                      u8;
    pad0:                        u8;
    protocol_major_version:      u16;
    protocol_minor_version:      u16;
    length:                      u16;
    release_number:              u32;
    resource_id_base:            u32;
    resource_id_mask:            u32;
    motion_buffer_size:          u32;
    vendor_len:                  u16;
    maximum_request_length:      u16;
    roots_len:                   u8;
    pixmap_formats_len:          u8;
    image_byte_order:            xcb_image_order_t;
    bitmap_format_bit_order:     u8;
    bitmap_format_scanline_unit: u8;
    bitmap_format_scanline_pad:  u8;
    min_keycode:                 xcb_keycode_t;
    max_keycode:                 xcb_keycode_t;
    pad1:                        [4] u8;
}

/**
* @brief xcb_setup_iterator_t
**/
xcb_setup_iterator_t :: struct {
    data:  *xcb_setup_t;
    rem:   s32;
    index: s32;
}

xcb_mod_mask_t :: enum u32 {
    SHIFT   :: 1;
    LOCK    :: 2;
    CONTROL :: 4;
    _1      :: 8;
    _2      :: 16;
    _3      :: 32;
    _4      :: 64;
    _5      :: 128;
    ANY     :: 32768;

    XCB_MOD_MASK_SHIFT   :: SHIFT;
    XCB_MOD_MASK_LOCK    :: LOCK;
    XCB_MOD_MASK_CONTROL :: CONTROL;
    XCB_MOD_MASK_1       :: _1;
    XCB_MOD_MASK_2       :: _2;
    XCB_MOD_MASK_3       :: _3;
    XCB_MOD_MASK_4       :: _4;
    XCB_MOD_MASK_5       :: _5;
    XCB_MOD_MASK_ANY     :: ANY;
}

xcb_key_but_mask_t :: enum u32 {
    SHIFT    :: 1;
    LOCK     :: 2;
    CONTROL  :: 4;
    MOD_1    :: 8;
    MOD_2    :: 16;
    MOD_3    :: 32;
    MOD_4    :: 64;
    MOD_5    :: 128;
    BUTTON_1 :: 256;
    BUTTON_2 :: 512;
    BUTTON_3 :: 1024;
    BUTTON_4 :: 2048;
    BUTTON_5 :: 4096;

    XCB_KEY_BUT_MASK_SHIFT    :: SHIFT;
    XCB_KEY_BUT_MASK_LOCK     :: LOCK;
    XCB_KEY_BUT_MASK_CONTROL  :: CONTROL;
    XCB_KEY_BUT_MASK_MOD_1    :: MOD_1;
    XCB_KEY_BUT_MASK_MOD_2    :: MOD_2;
    XCB_KEY_BUT_MASK_MOD_3    :: MOD_3;
    XCB_KEY_BUT_MASK_MOD_4    :: MOD_4;
    XCB_KEY_BUT_MASK_MOD_5    :: MOD_5;
    XCB_KEY_BUT_MASK_BUTTON_1 :: BUTTON_1;
    XCB_KEY_BUT_MASK_BUTTON_2 :: BUTTON_2;
    XCB_KEY_BUT_MASK_BUTTON_3 :: BUTTON_3;
    XCB_KEY_BUT_MASK_BUTTON_4 :: BUTTON_4;
    XCB_KEY_BUT_MASK_BUTTON_5 :: BUTTON_5;
}

xcb_window_enum_t :: enum u32 {
    XCB_WINDOW_NONE :: 0;
}

/**
* @brief xcb_key_press_event_t
**/
xcb_key_press_event_t :: struct {
    response_type: u8;
    detail:        xcb_keycode_t;
    sequence:      u16;
    time:          xcb_timestamp_t;
    root:          xcb_window_t;
    event:         xcb_window_t;
    child:         xcb_window_t;
    root_x:        s16;
    root_y:        s16;
    event_x:       s16;
    event_y:       s16;
    state:         u16;
    same_screen:   u8;
    pad0:          u8;
}

xcb_key_release_event_t :: xcb_key_press_event_t;

xcb_button_mask_t :: enum u32 {
    _1  :: 256;
    _2  :: 512;
    _3  :: 1024;
    _4  :: 2048;
    _5  :: 4096;
    ANY :: 32768;

    XCB_BUTTON_MASK_1   :: _1;
    XCB_BUTTON_MASK_2   :: _2;
    XCB_BUTTON_MASK_3   :: _3;
    XCB_BUTTON_MASK_4   :: _4;
    XCB_BUTTON_MASK_5   :: _5;
    XCB_BUTTON_MASK_ANY :: ANY;
}

/**
* @brief xcb_button_press_event_t
**/
xcb_button_press_event_t :: struct {
    response_type: u8;
    detail:        xcb_button_t;
    sequence:      u16;
    time:          xcb_timestamp_t;
    root:          xcb_window_t;
    event:         xcb_window_t;
    child:         xcb_window_t;
    root_x:        s16;
    root_y:        s16;
    event_x:       s16;
    event_y:       s16;
    state:         u16;
    same_screen:   u8;
    pad0:          u8;
}

xcb_button_release_event_t :: xcb_button_press_event_t;

xcb_motion_t :: enum u32 {
    NORMAL :: 0;
    HINT   :: 1;

    XCB_MOTION_NORMAL :: NORMAL;
    XCB_MOTION_HINT   :: HINT;
}

/**
* @brief xcb_motion_notify_event_t
**/
xcb_motion_notify_event_t :: struct {
    response_type: u8;
    detail:        u8;
    sequence:      u16;
    time:          xcb_timestamp_t;
    root:          xcb_window_t;
    event:         xcb_window_t;
    child:         xcb_window_t;
    root_x:        s16;
    root_y:        s16;
    event_x:       s16;
    event_y:       s16;
    state:         u16;
    same_screen:   u8;
    pad0:          u8;
}

xcb_notify_detail_t :: enum u32 {
    ANCESTOR          :: 0;
    VIRTUAL           :: 1;
    INFERIOR          :: 2;
    NONLINEAR         :: 3;
    NONLINEAR_VIRTUAL :: 4;
    POINTER           :: 5;
    POINTER_ROOT      :: 6;
    NONE              :: 7;

    XCB_NOTIFY_DETAIL_ANCESTOR          :: ANCESTOR;
    XCB_NOTIFY_DETAIL_VIRTUAL           :: VIRTUAL;
    XCB_NOTIFY_DETAIL_INFERIOR          :: INFERIOR;
    XCB_NOTIFY_DETAIL_NONLINEAR         :: NONLINEAR;
    XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL :: NONLINEAR_VIRTUAL;
    XCB_NOTIFY_DETAIL_POINTER           :: POINTER;
    XCB_NOTIFY_DETAIL_POINTER_ROOT      :: POINTER_ROOT;
    XCB_NOTIFY_DETAIL_NONE              :: NONE;
}

xcb_notify_mode_t :: enum u32 {
    NORMAL        :: 0;
    GRAB          :: 1;
    UNGRAB        :: 2;
    WHILE_GRABBED :: 3;

    XCB_NOTIFY_MODE_NORMAL        :: NORMAL;
    XCB_NOTIFY_MODE_GRAB          :: GRAB;
    XCB_NOTIFY_MODE_UNGRAB        :: UNGRAB;
    XCB_NOTIFY_MODE_WHILE_GRABBED :: WHILE_GRABBED;
}

/**
* @brief xcb_enter_notify_event_t
**/
xcb_enter_notify_event_t :: struct {
    response_type:     u8;
    detail:            u8;
    sequence:          u16;
    time:              xcb_timestamp_t;
    root:              xcb_window_t;
    event:             xcb_window_t;
    child:             xcb_window_t;
    root_x:            s16;
    root_y:            s16;
    event_x:           s16;
    event_y:           s16;
    state:             u16;
    mode:              u8;
    same_screen_focus: u8;
}

xcb_leave_notify_event_t :: xcb_enter_notify_event_t;

/**
* @brief xcb_focus_in_event_t
**/
xcb_focus_in_event_t :: struct {
    response_type: u8;
    detail:        u8;
    sequence:      u16;
    event:         xcb_window_t;
    mode:          u8;
    pad0:          [3] u8;
}

xcb_focus_out_event_t :: xcb_focus_in_event_t;

/**
* @brief xcb_keymap_notify_event_t
**/
xcb_keymap_notify_event_t :: struct {
    response_type: u8;
    keys:          [31] u8;
}

/**
* @brief xcb_expose_event_t
**/
xcb_expose_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    window:        xcb_window_t;
    x:             u16;
    y:             u16;
    width:         u16;
    height:        u16;
    count:         u16;
    pad1:          [2] u8;
}

/**
* @brief xcb_graphics_exposure_event_t
**/
xcb_graphics_exposure_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    drawable:      xcb_drawable_t;
    x:             u16;
    y:             u16;
    width:         u16;
    height:        u16;
    minor_opcode:  u16;
    count:         u16;
    major_opcode:  u8;
    pad1:          [3] u8;
}

/**
* @brief xcb_no_exposure_event_t
**/
xcb_no_exposure_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    drawable:      xcb_drawable_t;
    minor_opcode:  u16;
    major_opcode:  u8;
    pad1:          u8;
}

xcb_visibility_t :: enum u32 {
    UNOBSCURED         :: 0;
    PARTIALLY_OBSCURED :: 1;
    FULLY_OBSCURED     :: 2;

    XCB_VISIBILITY_UNOBSCURED         :: UNOBSCURED;
    XCB_VISIBILITY_PARTIALLY_OBSCURED :: PARTIALLY_OBSCURED;
    XCB_VISIBILITY_FULLY_OBSCURED     :: FULLY_OBSCURED;
}

/**
* @brief xcb_visibility_notify_event_t
**/
xcb_visibility_notify_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    window:        xcb_window_t;
    state:         u8;
    pad1:          [3] u8;
}

/**
* @brief xcb_create_notify_event_t
**/
xcb_create_notify_event_t :: struct {
    response_type:     u8;
    pad0:              u8;
    sequence:          u16;
    parent:            xcb_window_t;
    window:            xcb_window_t;
    x:                 s16;
    y:                 s16;
    width:             u16;
    height:            u16;
    border_width:      u16;
    override_redirect: u8;
    pad1:              u8;
}

/**
* @brief xcb_destroy_notify_event_t
**/
xcb_destroy_notify_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    event:         xcb_window_t;
    window:        xcb_window_t;
}

/**
* @brief xcb_unmap_notify_event_t
**/
xcb_unmap_notify_event_t :: struct {
    response_type:  u8;
    pad0:           u8;
    sequence:       u16;
    event:          xcb_window_t;
    window:         xcb_window_t;
    from_configure: u8;
    pad1:           [3] u8;
}

/**
* @brief xcb_map_notify_event_t
**/
xcb_map_notify_event_t :: struct {
    response_type:     u8;
    pad0:              u8;
    sequence:          u16;
    event:             xcb_window_t;
    window:            xcb_window_t;
    override_redirect: u8;
    pad1:              [3] u8;
}

/**
* @brief xcb_map_request_event_t
**/
xcb_map_request_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    parent:        xcb_window_t;
    window:        xcb_window_t;
}

/**
* @brief xcb_reparent_notify_event_t
**/
xcb_reparent_notify_event_t :: struct {
    response_type:     u8;
    pad0:              u8;
    sequence:          u16;
    event:             xcb_window_t;
    window:            xcb_window_t;
    parent:            xcb_window_t;
    x:                 s16;
    y:                 s16;
    override_redirect: u8;
    pad1:              [3] u8;
}

/**
* @brief xcb_configure_notify_event_t
**/
xcb_configure_notify_event_t :: struct {
    response_type:     u8;
    pad0:              u8;
    sequence:          u16;
    event:             xcb_window_t;
    window:            xcb_window_t;
    above_sibling:     xcb_window_t;
    x:                 s16;
    y:                 s16;
    width:             u16;
    height:            u16;
    border_width:      u16;
    override_redirect: u8;
    pad1:              u8;
}

/**
* @brief xcb_configure_request_event_t
**/
xcb_configure_request_event_t :: struct {
    response_type: u8;
    stack_mode:    u8;
    sequence:      u16;
    parent:        xcb_window_t;
    window:        xcb_window_t;
    sibling:       xcb_window_t;
    x:             s16;
    y:             s16;
    width:         u16;
    height:        u16;
    border_width:  u16;
    value_mask:    u16;
}

/**
* @brief xcb_gravity_notify_event_t
**/
xcb_gravity_notify_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    event:         xcb_window_t;
    window:        xcb_window_t;
    x:             s16;
    y:             s16;
}

/**
* @brief xcb_resize_request_event_t
**/
xcb_resize_request_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    window:        xcb_window_t;
    width:         u16;
    height:        u16;
}

xcb_place_t :: enum u32 {
    TOP    :: 0;
    BOTTOM :: 1;

    XCB_PLACE_ON_TOP    :: TOP;
    XCB_PLACE_ON_BOTTOM :: BOTTOM;
}

/**
* @brief xcb_circulate_notify_event_t
**/
xcb_circulate_notify_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    event:         xcb_window_t;
    window:        xcb_window_t;
    pad1:          [4] u8;
    place:         u8;
    pad2:          [3] u8;
}

xcb_circulate_request_event_t :: xcb_circulate_notify_event_t;

xcb_property_t :: enum u32 {
    NEW_VALUE :: 0;
    DELETE    :: 1;

    XCB_PROPERTY_NEW_VALUE :: NEW_VALUE;
    XCB_PROPERTY_DELETE    :: DELETE;
}

/**
* @brief xcb_property_notify_event_t
**/
xcb_property_notify_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    window:        xcb_window_t;
    atom:          xcb_atom_t;
    time:          xcb_timestamp_t;
    state:         u8;
    pad1:          [3] u8;
}

/**
* @brief xcb_selection_clear_event_t
**/
xcb_selection_clear_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    time:          xcb_timestamp_t;
    owner:         xcb_window_t;
    selection:     xcb_atom_t;
}

xcb_time_t :: enum u32 {
    XCB_TIME_CURRENT_TIME :: 0;
}

xcb_atom_enum_t :: enum u32 {
    NONE                :: 0;
    ANY                 :: 0;
    PRIMARY             :: 1;
    SECONDARY           :: 2;
    ARC                 :: 3;
    ATOM                :: 4;
    BITMAP              :: 5;
    CARDINAL            :: 6;
    COLORMAP            :: 7;
    CURSOR              :: 8;
    CUT_BUFFER0         :: 9;
    CUT_BUFFER1         :: 10;
    CUT_BUFFER2         :: 11;
    CUT_BUFFER3         :: 12;
    CUT_BUFFER4         :: 13;
    CUT_BUFFER5         :: 14;
    CUT_BUFFER6         :: 15;
    CUT_BUFFER7         :: 16;
    DRAWABLE            :: 17;
    FONT                :: 18;
    INTEGER             :: 19;
    PIXMAP              :: 20;
    POINT               :: 21;
    RECTANGLE           :: 22;
    RESOURCE_MANAGER    :: 23;
    RGB_COLOR_MAP       :: 24;
    RGB_BEST_MAP        :: 25;
    RGB_BLUE_MAP        :: 26;
    RGB_DEFAULT_MAP     :: 27;
    RGB_GRAY_MAP        :: 28;
    RGB_GREEN_MAP       :: 29;
    RGB_RED_MAP         :: 30;
    STRING              :: 31;
    VISUALID            :: 32;
    WINDOW              :: 33;
    WM_COMMAND          :: 34;
    WM_HINTS            :: 35;
    WM_CLIENT_MACHINE   :: 36;
    WM_ICON_NAME        :: 37;
    WM_ICON_SIZE        :: 38;
    WM_NAME             :: 39;
    WM_NORMAL_HINTS     :: 40;
    WM_SIZE_HINTS       :: 41;
    WM_ZOOM_HINTS       :: 42;
    MIN_SPACE           :: 43;
    NORM_SPACE          :: 44;
    MAX_SPACE           :: 45;
    END_SPACE           :: 46;
    SUPERSCRIPT_X       :: 47;
    SUPERSCRIPT_Y       :: 48;
    SUBSCRIPT_X         :: 49;
    SUBSCRIPT_Y         :: 50;
    UNDERLINE_POSITION  :: 51;
    UNDERLINE_THICKNESS :: 52;
    STRIKEOUT_ASCENT    :: 53;
    STRIKEOUT_DESCENT   :: 54;
    ITALIC_ANGLE        :: 55;
    X_HEIGHT            :: 56;
    QUAD_WIDTH          :: 57;
    WEIGHT              :: 58;
    POINT_SIZE          :: 59;
    RESOLUTION          :: 60;
    COPYRIGHT           :: 61;
    NOTICE              :: 62;
    FONT_NAME           :: 63;
    FAMILY_NAME         :: 64;
    FULL_NAME           :: 65;
    CAP_HEIGHT          :: 66;
    WM_CLASS            :: 67;
    WM_TRANSIENT_FOR    :: 68;

    XCB_ATOM_NONE                :: NONE;
    XCB_ATOM_ANY                 :: ANY;
    XCB_ATOM_PRIMARY             :: PRIMARY;
    XCB_ATOM_SECONDARY           :: SECONDARY;
    XCB_ATOM_ARC                 :: ARC;
    XCB_ATOM_ATOM                :: ATOM;
    XCB_ATOM_BITMAP              :: BITMAP;
    XCB_ATOM_CARDINAL            :: CARDINAL;
    XCB_ATOM_COLORMAP            :: COLORMAP;
    XCB_ATOM_CURSOR              :: CURSOR;
    XCB_ATOM_CUT_BUFFER0         :: CUT_BUFFER0;
    XCB_ATOM_CUT_BUFFER1         :: CUT_BUFFER1;
    XCB_ATOM_CUT_BUFFER2         :: CUT_BUFFER2;
    XCB_ATOM_CUT_BUFFER3         :: CUT_BUFFER3;
    XCB_ATOM_CUT_BUFFER4         :: CUT_BUFFER4;
    XCB_ATOM_CUT_BUFFER5         :: CUT_BUFFER5;
    XCB_ATOM_CUT_BUFFER6         :: CUT_BUFFER6;
    XCB_ATOM_CUT_BUFFER7         :: CUT_BUFFER7;
    XCB_ATOM_DRAWABLE            :: DRAWABLE;
    XCB_ATOM_FONT                :: FONT;
    XCB_ATOM_INTEGER             :: INTEGER;
    XCB_ATOM_PIXMAP              :: PIXMAP;
    XCB_ATOM_POINT               :: POINT;
    XCB_ATOM_RECTANGLE           :: RECTANGLE;
    XCB_ATOM_RESOURCE_MANAGER    :: RESOURCE_MANAGER;
    XCB_ATOM_RGB_COLOR_MAP       :: RGB_COLOR_MAP;
    XCB_ATOM_RGB_BEST_MAP        :: RGB_BEST_MAP;
    XCB_ATOM_RGB_BLUE_MAP        :: RGB_BLUE_MAP;
    XCB_ATOM_RGB_DEFAULT_MAP     :: RGB_DEFAULT_MAP;
    XCB_ATOM_RGB_GRAY_MAP        :: RGB_GRAY_MAP;
    XCB_ATOM_RGB_GREEN_MAP       :: RGB_GREEN_MAP;
    XCB_ATOM_RGB_RED_MAP         :: RGB_RED_MAP;
    XCB_ATOM_STRING              :: STRING;
    XCB_ATOM_VISUALID            :: VISUALID;
    XCB_ATOM_WINDOW              :: WINDOW;
    XCB_ATOM_WM_COMMAND          :: WM_COMMAND;
    XCB_ATOM_WM_HINTS            :: WM_HINTS;
    XCB_ATOM_WM_CLIENT_MACHINE   :: WM_CLIENT_MACHINE;
    XCB_ATOM_WM_ICON_NAME        :: WM_ICON_NAME;
    XCB_ATOM_WM_ICON_SIZE        :: WM_ICON_SIZE;
    XCB_ATOM_WM_NAME             :: WM_NAME;
    XCB_ATOM_WM_NORMAL_HINTS     :: WM_NORMAL_HINTS;
    XCB_ATOM_WM_SIZE_HINTS       :: WM_SIZE_HINTS;
    XCB_ATOM_WM_ZOOM_HINTS       :: WM_ZOOM_HINTS;
    XCB_ATOM_MIN_SPACE           :: MIN_SPACE;
    XCB_ATOM_NORM_SPACE          :: NORM_SPACE;
    XCB_ATOM_MAX_SPACE           :: MAX_SPACE;
    XCB_ATOM_END_SPACE           :: END_SPACE;
    XCB_ATOM_SUPERSCRIPT_X       :: SUPERSCRIPT_X;
    XCB_ATOM_SUPERSCRIPT_Y       :: SUPERSCRIPT_Y;
    XCB_ATOM_SUBSCRIPT_X         :: SUBSCRIPT_X;
    XCB_ATOM_SUBSCRIPT_Y         :: SUBSCRIPT_Y;
    XCB_ATOM_UNDERLINE_POSITION  :: UNDERLINE_POSITION;
    XCB_ATOM_UNDERLINE_THICKNESS :: UNDERLINE_THICKNESS;
    XCB_ATOM_STRIKEOUT_ASCENT    :: STRIKEOUT_ASCENT;
    XCB_ATOM_STRIKEOUT_DESCENT   :: STRIKEOUT_DESCENT;
    XCB_ATOM_ITALIC_ANGLE        :: ITALIC_ANGLE;
    XCB_ATOM_X_HEIGHT            :: X_HEIGHT;
    XCB_ATOM_QUAD_WIDTH          :: QUAD_WIDTH;
    XCB_ATOM_WEIGHT              :: WEIGHT;
    XCB_ATOM_POINT_SIZE          :: POINT_SIZE;
    XCB_ATOM_RESOLUTION          :: RESOLUTION;
    XCB_ATOM_COPYRIGHT           :: COPYRIGHT;
    XCB_ATOM_NOTICE              :: NOTICE;
    XCB_ATOM_FONT_NAME           :: FONT_NAME;
    XCB_ATOM_FAMILY_NAME         :: FAMILY_NAME;
    XCB_ATOM_FULL_NAME           :: FULL_NAME;
    XCB_ATOM_CAP_HEIGHT          :: CAP_HEIGHT;
    XCB_ATOM_WM_CLASS            :: WM_CLASS;
    XCB_ATOM_WM_TRANSIENT_FOR    :: WM_TRANSIENT_FOR;
}

/**
* @brief xcb_selection_request_event_t
**/
xcb_selection_request_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    time:          xcb_timestamp_t;
    owner:         xcb_window_t;
    requestor:     xcb_window_t;
    selection:     xcb_atom_t;
    target:        xcb_atom_t;
    property:      xcb_atom_t;
}

/**
* @brief xcb_selection_notify_event_t
**/
xcb_selection_notify_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    time:          xcb_timestamp_t;
    requestor:     xcb_window_t;
    selection:     xcb_atom_t;
    target:        xcb_atom_t;
    property:      xcb_atom_t;
}

xcb_colormap_state_t :: enum u32 {
    UNINSTALLED :: 0;
    INSTALLED   :: 1;

    XCB_COLORMAP_STATE_UNINSTALLED :: UNINSTALLED;
    XCB_COLORMAP_STATE_INSTALLED   :: INSTALLED;
}

xcb_colormap_enum_t :: enum u32 {
    XCB_COLORMAP_NONE :: 0;
}

/**
* @brief xcb_colormap_notify_event_t
**/
xcb_colormap_notify_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    window:        xcb_window_t;
    colormap:      xcb_colormap_t;
    _new:          u8;
    state:         u8;
    pad1:          [2] u8;
}

/**
* @brief xcb_client_message_data_t
**/
xcb_client_message_data_t :: union {
    data8:  [20] u8;
    data16: [10] u16;
    data32: [5] u32;
}

/**
* @brief xcb_client_message_data_iterator_t
**/
xcb_client_message_data_iterator_t :: struct {
    data:  *xcb_client_message_data_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_client_message_event_t
**/
xcb_client_message_event_t :: struct {
    response_type: u8;
    format:        u8;
    sequence:      u16;
    window:        xcb_window_t;
    type:          xcb_atom_t;
    data:          xcb_client_message_data_t;
}

xcb_mapping_t :: enum u32 {
    MODIFIER :: 0;
    KEYBOARD :: 1;
    POINTER  :: 2;

    XCB_MAPPING_MODIFIER :: MODIFIER;
    XCB_MAPPING_KEYBOARD :: KEYBOARD;
    XCB_MAPPING_POINTER  :: POINTER;
}

/**
* @brief xcb_mapping_notify_event_t
**/
xcb_mapping_notify_event_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    request:       u8;
    first_keycode: xcb_keycode_t;
    count:         u8;
    pad1:          u8;
}

/**
* @brief xcb_ge_generic_event_t
**/
xcb_ge_generic_event_t :: struct {
    response_type: u8;
    extension:     u8;
    sequence:      u16;
    length:        u32;
    event_type:    u16;
    pad0:          [22] u8;
    full_sequence: u32;
}

/**
* @brief xcb_request_error_t
**/
xcb_request_error_t :: struct {
    response_type: u8;
    error_code:    u8;
    sequence:      u16;
    bad_value:     u32;
    minor_opcode:  u16;
    major_opcode:  u8;
    pad0:          u8;
}

/**
* @brief xcb_value_error_t
**/
xcb_value_error_t :: struct {
    response_type: u8;
    error_code:    u8;
    sequence:      u16;
    bad_value:     u32;
    minor_opcode:  u16;
    major_opcode:  u8;
    pad0:          u8;
}

xcb_window_error_t :: xcb_value_error_t;

xcb_pixmap_error_t :: xcb_value_error_t;

xcb_atom_error_t :: xcb_value_error_t;

xcb_cursor_error_t :: xcb_value_error_t;

xcb_font_error_t :: xcb_value_error_t;

xcb_match_error_t :: xcb_request_error_t;

xcb_drawable_error_t :: xcb_value_error_t;

xcb_access_error_t :: xcb_request_error_t;

xcb_alloc_error_t :: xcb_request_error_t;

xcb_colormap_error_t :: xcb_value_error_t;

xcb_g_context_error_t :: xcb_value_error_t;

xcb_id_choice_error_t :: xcb_value_error_t;

xcb_name_error_t :: xcb_request_error_t;

xcb_length_error_t :: xcb_request_error_t;

xcb_implementation_error_t :: xcb_request_error_t;

xcb_window_class_t :: enum_flags u16 {
    COPY_FROM_PARENT :: 0;
    INPUT_OUTPUT     :: 1;
    INPUT_ONLY       :: 2;

    XCB_WINDOW_CLASS_COPY_FROM_PARENT :: COPY_FROM_PARENT;
    XCB_WINDOW_CLASS_INPUT_OUTPUT     :: INPUT_OUTPUT;
    XCB_WINDOW_CLASS_INPUT_ONLY       :: INPUT_ONLY;
}

xcb_cw_t :: enum_flags u32 {
    BACK_PIXMAP       :: 1;
    BACK_PIXEL        :: 2;
    BORDER_PIXMAP     :: 4;
    BORDER_PIXEL      :: 8;
    BIT_GRAVITY       :: 16;
    WIN_GRAVITY       :: 32;
    BACKING_STORE     :: 64;
    BACKING_PLANES    :: 128;
    BACKING_PIXEL     :: 256;
    OVERRIDE_REDIRECT :: 512;
    SAVE_UNDER        :: 1024;
    EVENT_MASK        :: 2048;
    DONT_PROPAGATE    :: 4096;
    COLORMAP          :: 8192;
    CURSOR            :: 16384;

    XCB_CW_BACK_PIXMAP       :: BACK_PIXMAP;
    XCB_CW_BACK_PIXEL        :: BACK_PIXEL;
    XCB_CW_BORDER_PIXMAP     :: BORDER_PIXMAP;
    XCB_CW_BORDER_PIXEL      :: BORDER_PIXEL;
    XCB_CW_BIT_GRAVITY       :: BIT_GRAVITY;
    XCB_CW_WIN_GRAVITY       :: WIN_GRAVITY;
    XCB_CW_BACKING_STORE     :: BACKING_STORE;
    XCB_CW_BACKING_PLANES    :: BACKING_PLANES;
    XCB_CW_BACKING_PIXEL     :: BACKING_PIXEL;
    XCB_CW_OVERRIDE_REDIRECT :: OVERRIDE_REDIRECT;
    XCB_CW_SAVE_UNDER        :: SAVE_UNDER;
    XCB_CW_EVENT_MASK        :: EVENT_MASK;
    XCB_CW_DONT_PROPAGATE    :: DONT_PROPAGATE;
    XCB_CW_COLORMAP          :: COLORMAP;
    XCB_CW_CURSOR            :: CURSOR;
}

xcb_back_pixmap_t :: enum u32 {
    NONE            :: 0;
    PARENT_RELATIVE :: 1;

    XCB_BACK_PIXMAP_NONE            :: NONE;
    XCB_BACK_PIXMAP_PARENT_RELATIVE :: PARENT_RELATIVE;
}

xcb_gravity_t :: enum u32 {
    BIT_FORGET :: 0;
    WIN_UNMAP  :: 0;
    NORTH_WEST :: 1;
    NORTH      :: 2;
    NORTH_EAST :: 3;
    WEST       :: 4;
    CENTER     :: 5;
    EAST       :: 6;
    SOUTH_WEST :: 7;
    SOUTH      :: 8;
    SOUTH_EAST :: 9;
    STATIC     :: 10;

    XCB_GRAVITY_BIT_FORGET :: BIT_FORGET;
    XCB_GRAVITY_WIN_UNMAP  :: WIN_UNMAP;
    XCB_GRAVITY_NORTH_WEST :: NORTH_WEST;
    XCB_GRAVITY_NORTH      :: NORTH;
    XCB_GRAVITY_NORTH_EAST :: NORTH_EAST;
    XCB_GRAVITY_WEST       :: WEST;
    XCB_GRAVITY_CENTER     :: CENTER;
    XCB_GRAVITY_EAST       :: EAST;
    XCB_GRAVITY_SOUTH_WEST :: SOUTH_WEST;
    XCB_GRAVITY_SOUTH      :: SOUTH;
    XCB_GRAVITY_SOUTH_EAST :: SOUTH_EAST;
    XCB_GRAVITY_STATIC     :: STATIC;
}

/**
* @brief xcb_create_window_value_list_t
**/
xcb_create_window_value_list_t :: struct {
    background_pixmap:     xcb_pixmap_t;
    background_pixel:      u32;
    border_pixmap:         xcb_pixmap_t;
    border_pixel:          u32;
    bit_gravity:           u32;
    win_gravity:           u32;
    backing_store:         u32;
    backing_planes:        u32;
    backing_pixel:         u32;
    override_redirect:     xcb_bool32_t;
    save_under:            xcb_bool32_t;
    event_mask:            u32;
    do_not_propogate_mask: u32;
    colormap:              xcb_colormap_t;
    cursor:                xcb_cursor_t;
}

/**
* @brief xcb_create_window_request_t
**/
xcb_create_window_request_t :: struct {
    major_opcode: u8;
    depth:        u8;
    length:       u16;
    wid:          xcb_window_t;
    parent:       xcb_window_t;
    x:            s16;
    y:            s16;
    width:        u16;
    height:       u16;
    border_width: u16;
    _class:       u16;
    visual:       xcb_visualid_t;
    value_mask:   u32;
}

/**
* @brief xcb_change_window_attributes_value_list_t
**/
xcb_change_window_attributes_value_list_t :: struct {
    background_pixmap:     xcb_pixmap_t;
    background_pixel:      u32;
    border_pixmap:         xcb_pixmap_t;
    border_pixel:          u32;
    bit_gravity:           u32;
    win_gravity:           u32;
    backing_store:         u32;
    backing_planes:        u32;
    backing_pixel:         u32;
    override_redirect:     xcb_bool32_t;
    save_under:            xcb_bool32_t;
    event_mask:            u32;
    do_not_propogate_mask: u32;
    colormap:              xcb_colormap_t;
    cursor:                xcb_cursor_t;
}

/**
* @brief xcb_change_window_attributes_request_t
**/
xcb_change_window_attributes_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
    value_mask:   xcb_cw_t;
}

xcb_map_state_t :: enum u32 {
    UNMAPPED   :: 0;
    UNVIEWABLE :: 1;
    VIEWABLE   :: 2;

    XCB_MAP_STATE_UNMAPPED   :: UNMAPPED;
    XCB_MAP_STATE_UNVIEWABLE :: UNVIEWABLE;
    XCB_MAP_STATE_VIEWABLE   :: VIEWABLE;
}

/**
* @brief xcb_get_window_attributes_cookie_t
**/
xcb_get_window_attributes_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_window_attributes_request_t
**/
xcb_get_window_attributes_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_get_window_attributes_reply_t
**/
xcb_get_window_attributes_reply_t :: struct {
    response_type:         u8;
    backing_store:         u8;
    sequence:              u16;
    length:                u32;
    visual:                xcb_visualid_t;
    _class:                u16;
    bit_gravity:           u8;
    win_gravity:           u8;
    backing_planes:        u32;
    backing_pixel:         u32;
    save_under:            u8;
    map_is_installed:      u8;
    map_state:             u8;
    override_redirect:     u8;
    colormap:              xcb_colormap_t;
    all_event_masks:       xcb_event_mask_t;
    your_event_mask:       u32;
    do_not_propagate_mask: u16;
    pad0:                  [2] u8;
}

/**
* @brief xcb_destroy_window_request_t
**/
xcb_destroy_window_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_destroy_subwindows_request_t
**/
xcb_destroy_subwindows_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

xcb_set_mode_t :: enum u32 {
    INSERT :: 0;
    DELETE :: 1;

    XCB_SET_MODE_INSERT :: INSERT;
    XCB_SET_MODE_DELETE :: DELETE;
}

/**
* @brief xcb_change_save_set_request_t
**/
xcb_change_save_set_request_t :: struct {
    major_opcode: u8;
    mode:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_reparent_window_request_t
**/
xcb_reparent_window_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
    parent:       xcb_window_t;
    x:            s16;
    y:            s16;
}

/**
* @brief xcb_map_window_request_t
**/
xcb_map_window_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_map_subwindows_request_t
**/
xcb_map_subwindows_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_unmap_window_request_t
**/
xcb_unmap_window_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_unmap_subwindows_request_t
**/
xcb_unmap_subwindows_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

xcb_config_window_t :: enum u32 {
    X            :: 1;
    Y            :: 2;
    WIDTH        :: 4;
    HEIGHT       :: 8;
    BORDER_WIDTH :: 16;
    SIBLING      :: 32;
    STACK_MODE   :: 64;

    XCB_CONFIG_WINDOW_X            :: X;
    XCB_CONFIG_WINDOW_Y            :: Y;
    XCB_CONFIG_WINDOW_WIDTH        :: WIDTH;
    XCB_CONFIG_WINDOW_HEIGHT       :: HEIGHT;
    XCB_CONFIG_WINDOW_BORDER_WIDTH :: BORDER_WIDTH;
    XCB_CONFIG_WINDOW_SIBLING      :: SIBLING;
    XCB_CONFIG_WINDOW_STACK_MODE   :: STACK_MODE;
}

xcb_stack_mode_t :: enum u32 {
    ABOVE     :: 0;
    BELOW     :: 1;
    TOP_IF    :: 2;
    BOTTOM_IF :: 3;
    OPPOSITE  :: 4;

    XCB_STACK_MODE_ABOVE     :: ABOVE;
    XCB_STACK_MODE_BELOW     :: BELOW;
    XCB_STACK_MODE_TOP_IF    :: TOP_IF;
    XCB_STACK_MODE_BOTTOM_IF :: BOTTOM_IF;
    XCB_STACK_MODE_OPPOSITE  :: OPPOSITE;
}

/**
* @brief xcb_configure_window_value_list_t
**/
xcb_configure_window_value_list_t :: struct {
    x:            s32;
    y:            s32;
    width:        u32;
    height:       u32;
    border_width: u32;
    sibling:      xcb_window_t;
    stack_mode:   u32;
}

/**
* @brief xcb_configure_window_request_t
**/
xcb_configure_window_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
    value_mask:   u16;
    pad1:         [2] u8;
}

xcb_circulate_t :: enum u32 {
    RAISE_LOWEST  :: 0;
    LOWER_HIGHEST :: 1;

    XCB_CIRCULATE_RAISE_LOWEST  :: RAISE_LOWEST;
    XCB_CIRCULATE_LOWER_HIGHEST :: LOWER_HIGHEST;
}

/**
* @brief xcb_circulate_window_request_t
**/
xcb_circulate_window_request_t :: struct {
    major_opcode: u8;
    direction:    u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_get_geometry_cookie_t
**/
xcb_get_geometry_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_geometry_request_t
**/
xcb_get_geometry_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    drawable:     xcb_drawable_t;
}

/**
* @brief xcb_get_geometry_reply_t
**/
xcb_get_geometry_reply_t :: struct {
    response_type: u8;
    depth:         u8;
    sequence:      u16;
    length:        u32;
    root:          xcb_window_t;
    x:             s16;
    y:             s16;
    width:         u16;
    height:        u16;
    border_width:  u16;
    pad0:          [2] u8;
}

/**
* @brief xcb_query_tree_cookie_t
**/
xcb_query_tree_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_query_tree_request_t
**/
xcb_query_tree_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_query_tree_reply_t
**/
xcb_query_tree_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    root:          xcb_window_t;
    parent:        xcb_window_t;
    children_len:  u16;
    pad1:          [14] u8;
}

/**
* @brief xcb_intern_atom_cookie_t
**/
xcb_intern_atom_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_intern_atom_request_t
**/
xcb_intern_atom_request_t :: struct {
    major_opcode:   u8;
    only_if_exists: u8;
    length:         u16;
    name_len:       u16;
    pad0:           [2] u8;
}

/**
* @brief xcb_intern_atom_reply_t
**/
xcb_intern_atom_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    atom:          xcb_atom_t;
}

/**
* @brief xcb_get_atom_name_cookie_t
**/
xcb_get_atom_name_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_atom_name_request_t
**/
xcb_get_atom_name_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    atom:         xcb_atom_t;
}

/**
* @brief xcb_get_atom_name_reply_t
**/
xcb_get_atom_name_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    name_len:      u16;
    pad1:          [22] u8;
}

xcb_prop_mode_t :: enum u8 {
    REPLACE :: 0;
    PREPEND :: 1;
    APPEND  :: 2;

    XCB_PROP_MODE_REPLACE :: REPLACE;
    XCB_PROP_MODE_PREPEND :: PREPEND;
    XCB_PROP_MODE_APPEND  :: APPEND;
}

/**
* @brief xcb_change_property_request_t
**/
xcb_change_property_request_t :: struct {
    major_opcode: u8;
    mode:         xcb_prop_mode_t;
    length:       u16;
    window:       xcb_window_t;
    property:     xcb_atom_t;
    type:         xcb_atom_t;
    format:       u8;
    pad0:         [3] u8;
    data_len:     u32;
}

/**
* @brief xcb_delete_property_request_t
**/
xcb_delete_property_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
    property:     xcb_atom_t;
}

xcb_get_property_type_t :: enum u32 {
    XCB_GET_PROPERTY_TYPE_ANY :: 0;
}

/**
* @brief xcb_get_property_cookie_t
**/
xcb_get_property_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_property_request_t
**/
xcb_get_property_request_t :: struct {
    major_opcode: u8;
    _delete:      u8;
    length:       u16;
    window:       xcb_window_t;
    property:     xcb_atom_t;
    type:         xcb_atom_t;
    long_offset:  u32;
    long_length:  u32;
}

/**
* @brief xcb_get_property_reply_t
**/
xcb_get_property_reply_t :: struct {
    response_type: u8;
    format:        u8;
    sequence:      u16;
    length:        u32;
    type:          xcb_atom_t;
    bytes_after:   u32;
    value_len:     u32;
    pad0:          [12] u8;
}

/**
* @brief xcb_list_properties_cookie_t
**/
xcb_list_properties_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_list_properties_request_t
**/
xcb_list_properties_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_list_properties_reply_t
**/
xcb_list_properties_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    atoms_len:     u16;
    pad1:          [22] u8;
}

/**
* @brief xcb_set_selection_owner_request_t
**/
xcb_set_selection_owner_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    owner:        xcb_window_t;
    selection:    xcb_atom_t;
    time:         xcb_timestamp_t;
}

/**
* @brief xcb_get_selection_owner_cookie_t
**/
xcb_get_selection_owner_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_selection_owner_request_t
**/
xcb_get_selection_owner_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    selection:    xcb_atom_t;
}

/**
* @brief xcb_get_selection_owner_reply_t
**/
xcb_get_selection_owner_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    owner:         xcb_window_t;
}

/**
* @brief xcb_convert_selection_request_t
**/
xcb_convert_selection_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    requestor:    xcb_window_t;
    selection:    xcb_atom_t;
    target:       xcb_atom_t;
    property:     xcb_atom_t;
    time:         xcb_timestamp_t;
}

xcb_send_event_dest_t :: enum u32 {
    POINTER_WINDOW :: 0;
    ITEM_FOCUS     :: 1;

    XCB_SEND_EVENT_DEST_POINTER_WINDOW :: POINTER_WINDOW;
    XCB_SEND_EVENT_DEST_ITEM_FOCUS     :: ITEM_FOCUS;
}

/**
* @brief xcb_send_event_request_t
**/
xcb_send_event_request_t :: struct {
    major_opcode: u8;
    propagate:    u8;
    length:       u16;
    destination:  xcb_window_t;
    event_mask:   u32;
    event:        [32] u8;
}

xcb_grab_mode_t :: enum u32 {
    SYNC  :: 0;
    ASYNC :: 1;

    XCB_GRAB_MODE_SYNC  :: SYNC;
    XCB_GRAB_MODE_ASYNC :: ASYNC;
}

xcb_grab_status_t :: enum u32 {
    SUCCESS         :: 0;
    ALREADY_GRABBED :: 1;
    INVALID_TIME    :: 2;
    NOT_VIEWABLE    :: 3;
    FROZEN          :: 4;

    XCB_GRAB_STATUS_SUCCESS         :: SUCCESS;
    XCB_GRAB_STATUS_ALREADY_GRABBED :: ALREADY_GRABBED;
    XCB_GRAB_STATUS_INVALID_TIME    :: INVALID_TIME;
    XCB_GRAB_STATUS_NOT_VIEWABLE    :: NOT_VIEWABLE;
    XCB_GRAB_STATUS_FROZEN          :: FROZEN;
}

xcb_cursor_enum_t :: enum u32 {
    XCB_CURSOR_NONE :: 0;
}

/**
* @brief xcb_grab_pointer_cookie_t
**/
xcb_grab_pointer_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_grab_pointer_request_t
**/
xcb_grab_pointer_request_t :: struct {
    major_opcode:  u8;
    owner_events:  u8;
    length:        u16;
    grab_window:   xcb_window_t;
    event_mask:    u16;
    pointer_mode:  u8;
    keyboard_mode: u8;
    confine_to:    xcb_window_t;
    cursor:        xcb_cursor_t;
    time:          xcb_timestamp_t;
}

/**
* @brief xcb_grab_pointer_reply_t
**/
xcb_grab_pointer_reply_t :: struct {
    response_type: u8;
    status:        u8;
    sequence:      u16;
    length:        u32;
}

/**
* @brief xcb_ungrab_pointer_request_t
**/
xcb_ungrab_pointer_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    time:         xcb_timestamp_t;
}

xcb_button_index_t :: enum u32 {
    ANY :: 0;
    _1  :: 1;
    _2  :: 2;
    _3  :: 3;
    _4  :: 4;
    _5  :: 5;

    XCB_BUTTON_INDEX_ANY :: ANY;
    XCB_BUTTON_INDEX_1   :: _1;
    XCB_BUTTON_INDEX_2   :: _2;
    XCB_BUTTON_INDEX_3   :: _3;
    XCB_BUTTON_INDEX_4   :: _4;
    XCB_BUTTON_INDEX_5   :: _5;
}

/**
* @brief xcb_grab_button_request_t
**/
xcb_grab_button_request_t :: struct {
    major_opcode:  u8;
    owner_events:  u8;
    length:        u16;
    grab_window:   xcb_window_t;
    event_mask:    u16;
    pointer_mode:  u8;
    keyboard_mode: u8;
    confine_to:    xcb_window_t;
    cursor:        xcb_cursor_t;
    button:        u8;
    pad0:          u8;
    modifiers:     u16;
}

/**
* @brief xcb_ungrab_button_request_t
**/
xcb_ungrab_button_request_t :: struct {
    major_opcode: u8;
    button:       u8;
    length:       u16;
    grab_window:  xcb_window_t;
    modifiers:    u16;
    pad0:         [2] u8;
}

/**
* @brief xcb_change_active_pointer_grab_request_t
**/
xcb_change_active_pointer_grab_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cursor:       xcb_cursor_t;
    time:         xcb_timestamp_t;
    event_mask:   u16;
    pad1:         [2] u8;
}

/**
* @brief xcb_grab_keyboard_cookie_t
**/
xcb_grab_keyboard_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_grab_keyboard_request_t
**/
xcb_grab_keyboard_request_t :: struct {
    major_opcode:  u8;
    owner_events:  u8;
    length:        u16;
    grab_window:   xcb_window_t;
    time:          xcb_timestamp_t;
    pointer_mode:  u8;
    keyboard_mode: u8;
    pad0:          [2] u8;
}

/**
* @brief xcb_grab_keyboard_reply_t
**/
xcb_grab_keyboard_reply_t :: struct {
    response_type: u8;
    status:        u8;
    sequence:      u16;
    length:        u32;
}

/**
* @brief xcb_ungrab_keyboard_request_t
**/
xcb_ungrab_keyboard_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    time:         xcb_timestamp_t;
}

xcb_grab_t :: enum u32 {
    XCB_GRAB_ANY :: 0;
}

/**
* @brief xcb_grab_key_request_t
**/
xcb_grab_key_request_t :: struct {
    major_opcode:  u8;
    owner_events:  u8;
    length:        u16;
    grab_window:   xcb_window_t;
    modifiers:     u16;
    key:           xcb_keycode_t;
    pointer_mode:  u8;
    keyboard_mode: u8;
    pad0:          [3] u8;
}

/**
* @brief xcb_ungrab_key_request_t
**/
xcb_ungrab_key_request_t :: struct {
    major_opcode: u8;
    key:          xcb_keycode_t;
    length:       u16;
    grab_window:  xcb_window_t;
    modifiers:    u16;
    pad0:         [2] u8;
}

xcb_allow_t :: enum u32 {
    ASYNC_POINTER   :: 0;
    SYNC_POINTER    :: 1;
    REPLAY_POINTER  :: 2;
    ASYNC_KEYBOARD  :: 3;
    SYNC_KEYBOARD   :: 4;
    REPLAY_KEYBOARD :: 5;
    ASYNC_BOTH      :: 6;
    SYNC_BOTH       :: 7;

    XCB_ALLOW_ASYNC_POINTER   :: ASYNC_POINTER;
    XCB_ALLOW_SYNC_POINTER    :: SYNC_POINTER;
    XCB_ALLOW_REPLAY_POINTER  :: REPLAY_POINTER;
    XCB_ALLOW_ASYNC_KEYBOARD  :: ASYNC_KEYBOARD;
    XCB_ALLOW_SYNC_KEYBOARD   :: SYNC_KEYBOARD;
    XCB_ALLOW_REPLAY_KEYBOARD :: REPLAY_KEYBOARD;
    XCB_ALLOW_ASYNC_BOTH      :: ASYNC_BOTH;
    XCB_ALLOW_SYNC_BOTH       :: SYNC_BOTH;
}

/**
* @brief xcb_allow_events_request_t
**/
xcb_allow_events_request_t :: struct {
    major_opcode: u8;
    mode:         u8;
    length:       u16;
    time:         xcb_timestamp_t;
}

/**
* @brief xcb_grab_server_request_t
**/
xcb_grab_server_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_ungrab_server_request_t
**/
xcb_ungrab_server_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_query_pointer_cookie_t
**/
xcb_query_pointer_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_query_pointer_request_t
**/
xcb_query_pointer_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_query_pointer_reply_t
**/
xcb_query_pointer_reply_t :: struct {
    response_type: u8;
    same_screen:   u8;
    sequence:      u16;
    length:        u32;
    root:          xcb_window_t;
    child:         xcb_window_t;
    root_x:        s16;
    root_y:        s16;
    win_x:         s16;
    win_y:         s16;
    mask:          u16;
    pad0:          [2] u8;
}

/**
* @brief xcb_timecoord_t
**/
xcb_timecoord_t :: struct {
    time: xcb_timestamp_t;
    x:    s16;
    y:    s16;
}

/**
* @brief xcb_timecoord_iterator_t
**/
xcb_timecoord_iterator_t :: struct {
    data:  *xcb_timecoord_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_get_motion_events_cookie_t
**/
xcb_get_motion_events_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_motion_events_request_t
**/
xcb_get_motion_events_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
    start:        xcb_timestamp_t;
    stop:         xcb_timestamp_t;
}

/**
* @brief xcb_get_motion_events_reply_t
**/
xcb_get_motion_events_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    events_len:    u32;
    pad1:          [20] u8;
}

/**
* @brief xcb_translate_coordinates_cookie_t
**/
xcb_translate_coordinates_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_translate_coordinates_request_t
**/
xcb_translate_coordinates_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    src_window:   xcb_window_t;
    dst_window:   xcb_window_t;
    src_x:        s16;
    src_y:        s16;
}

/**
* @brief xcb_translate_coordinates_reply_t
**/
xcb_translate_coordinates_reply_t :: struct {
    response_type: u8;
    same_screen:   u8;
    sequence:      u16;
    length:        u32;
    child:         xcb_window_t;
    dst_x:         s16;
    dst_y:         s16;
}

/**
* @brief xcb_warp_pointer_request_t
**/
xcb_warp_pointer_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    src_window:   xcb_window_t;
    dst_window:   xcb_window_t;
    src_x:        s16;
    src_y:        s16;
    src_width:    u16;
    src_height:   u16;
    dst_x:        s16;
    dst_y:        s16;
}

xcb_input_focus_t :: enum u32 {
    NONE            :: 0;
    POINTER_ROOT    :: 1;
    PARENT          :: 2;
    FOLLOW_KEYBOARD :: 3;

    XCB_INPUT_FOCUS_NONE            :: NONE;
    XCB_INPUT_FOCUS_POINTER_ROOT    :: POINTER_ROOT;
    XCB_INPUT_FOCUS_PARENT          :: PARENT;
    XCB_INPUT_FOCUS_FOLLOW_KEYBOARD :: FOLLOW_KEYBOARD;
}

/**
* @brief xcb_set_input_focus_request_t
**/
xcb_set_input_focus_request_t :: struct {
    major_opcode: u8;
    revert_to:    u8;
    length:       u16;
    focus:        xcb_window_t;
    time:         xcb_timestamp_t;
}

/**
* @brief xcb_get_input_focus_cookie_t
**/
xcb_get_input_focus_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_input_focus_request_t
**/
xcb_get_input_focus_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_get_input_focus_reply_t
**/
xcb_get_input_focus_reply_t :: struct {
    response_type: u8;
    revert_to:     u8;
    sequence:      u16;
    length:        u32;
    focus:         xcb_window_t;
}

/**
* @brief xcb_query_keymap_cookie_t
**/
xcb_query_keymap_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_query_keymap_request_t
**/
xcb_query_keymap_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_query_keymap_reply_t
**/
xcb_query_keymap_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    keys:          [32] u8;
}

/**
* @brief xcb_open_font_request_t
**/
xcb_open_font_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    fid:          xcb_font_t;
    name_len:     u16;
    pad1:         [2] u8;
}

/**
* @brief xcb_close_font_request_t
**/
xcb_close_font_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    font:         xcb_font_t;
}

xcb_font_draw_t :: enum u32 {
    LEFT_TO_RIGHT :: 0;
    RIGHT_TO_LEFT :: 1;

    XCB_FONT_DRAW_LEFT_TO_RIGHT :: LEFT_TO_RIGHT;
    XCB_FONT_DRAW_RIGHT_TO_LEFT :: RIGHT_TO_LEFT;
}

/**
* @brief xcb_fontprop_t
**/
xcb_fontprop_t :: struct {
    name:  xcb_atom_t;
    value: u32;
}

/**
* @brief xcb_fontprop_iterator_t
**/
xcb_fontprop_iterator_t :: struct {
    data:  *xcb_fontprop_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_charinfo_t
**/
xcb_charinfo_t :: struct {
    left_side_bearing:  s16;
    right_side_bearing: s16;
    character_width:    s16;
    ascent:             s16;
    descent:            s16;
    attributes:         u16;
}

/**
* @brief xcb_charinfo_iterator_t
**/
xcb_charinfo_iterator_t :: struct {
    data:  *xcb_charinfo_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_query_font_cookie_t
**/
xcb_query_font_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_query_font_request_t
**/
xcb_query_font_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    font:         xcb_fontable_t;
}

/**
* @brief xcb_query_font_reply_t
**/
xcb_query_font_reply_t :: struct {
    response_type:     u8;
    pad0:              u8;
    sequence:          u16;
    length:            u32;
    min_bounds:        xcb_charinfo_t;
    pad1:              [4] u8;
    max_bounds:        xcb_charinfo_t;
    pad2:              [4] u8;
    min_char_or_byte2: u16;
    max_char_or_byte2: u16;
    default_char:      u16;
    properties_len:    u16;
    draw_direction:    u8;
    min_byte1:         u8;
    max_byte1:         u8;
    all_chars_exist:   u8;
    font_ascent:       s16;
    font_descent:      s16;
    char_infos_len:    u32;
}

/**
* @brief xcb_query_text_extents_cookie_t
**/
xcb_query_text_extents_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_query_text_extents_request_t
**/
xcb_query_text_extents_request_t :: struct {
    major_opcode: u8;
    odd_length:   u8;
    length:       u16;
    font:         xcb_fontable_t;
}

/**
* @brief xcb_query_text_extents_reply_t
**/
xcb_query_text_extents_reply_t :: struct {
    response_type:   u8;
    draw_direction:  u8;
    sequence:        u16;
    length:          u32;
    font_ascent:     s16;
    font_descent:    s16;
    overall_ascent:  s16;
    overall_descent: s16;
    overall_width:   s32;
    overall_left:    s32;
    overall_right:   s32;
}

/**
* @brief xcb_str_t
**/
xcb_str_t :: struct {
    name_len: u8;
}

/**
* @brief xcb_str_iterator_t
**/
xcb_str_iterator_t :: struct {
    data:  *xcb_str_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_list_fonts_cookie_t
**/
xcb_list_fonts_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_list_fonts_request_t
**/
xcb_list_fonts_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    max_names:    u16;
    pattern_len:  u16;
}

/**
* @brief xcb_list_fonts_reply_t
**/
xcb_list_fonts_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    names_len:     u16;
    pad1:          [22] u8;
}

/**
* @brief xcb_list_fonts_with_info_cookie_t
**/
xcb_list_fonts_with_info_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_list_fonts_with_info_request_t
**/
xcb_list_fonts_with_info_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    max_names:    u16;
    pattern_len:  u16;
}

/**
* @brief xcb_list_fonts_with_info_reply_t
**/
xcb_list_fonts_with_info_reply_t :: struct {
    response_type:     u8;
    name_len:          u8;
    sequence:          u16;
    length:            u32;
    min_bounds:        xcb_charinfo_t;
    pad0:              [4] u8;
    max_bounds:        xcb_charinfo_t;
    pad1:              [4] u8;
    min_char_or_byte2: u16;
    max_char_or_byte2: u16;
    default_char:      u16;
    properties_len:    u16;
    draw_direction:    u8;
    min_byte1:         u8;
    max_byte1:         u8;
    all_chars_exist:   u8;
    font_ascent:       s16;
    font_descent:      s16;
    replies_hint:      u32;
}

/**
* @brief xcb_set_font_path_request_t
**/
xcb_set_font_path_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    font_qty:     u16;
    pad1:         [2] u8;
}

/**
* @brief xcb_get_font_path_cookie_t
**/
xcb_get_font_path_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_font_path_request_t
**/
xcb_get_font_path_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_get_font_path_reply_t
**/
xcb_get_font_path_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    path_len:      u16;
    pad1:          [22] u8;
}

/**
* @brief xcb_create_pixmap_request_t
**/
xcb_create_pixmap_request_t :: struct {
    major_opcode: u8;
    depth:        u8;
    length:       u16;
    pid:          xcb_pixmap_t;
    drawable:     xcb_drawable_t;
    width:        u16;
    height:       u16;
}

/**
* @brief xcb_free_pixmap_request_t
**/
xcb_free_pixmap_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    pixmap:       xcb_pixmap_t;
}

xcb_gc_t :: enum_flags u32 {
    FUNCTION              :: 1;
    PLANE_MASK            :: 2;
    FOREGROUND            :: 4;
    BACKGROUND            :: 8;
    LINE_WIDTH            :: 16;
    LINE_STYLE            :: 32;
    CAP_STYLE             :: 64;
    JOIN_STYLE            :: 128;
    FILL_STYLE            :: 256;
    FILL_RULE             :: 512;
    TILE                  :: 1024;
    STIPPLE               :: 2048;
    TILE_STIPPLE_ORIGIN_X :: 4096;
    TILE_STIPPLE_ORIGIN_Y :: 8192;
    FONT                  :: 16384;
    SUBWINDOW_MODE        :: 32768;
    GRAPHICS_EXPOSURES    :: 65536;
    CLIP_ORIGIN_X         :: 131072;
    CLIP_ORIGIN_Y         :: 262144;
    CLIP_MASK             :: 524288;
    DASH_OFFSET           :: 1048576;
    DASH_LIST             :: 2097152;
    ARC_MODE              :: 4194304;

    XCB_GC_FUNCTION              :: FUNCTION;
    XCB_GC_PLANE_MASK            :: PLANE_MASK;
    XCB_GC_FOREGROUND            :: FOREGROUND;
    XCB_GC_BACKGROUND            :: BACKGROUND;
    XCB_GC_LINE_WIDTH            :: LINE_WIDTH;
    XCB_GC_LINE_STYLE            :: LINE_STYLE;
    XCB_GC_CAP_STYLE             :: CAP_STYLE;
    XCB_GC_JOIN_STYLE            :: JOIN_STYLE;
    XCB_GC_FILL_STYLE            :: FILL_STYLE;
    XCB_GC_FILL_RULE             :: FILL_RULE;
    XCB_GC_TILE                  :: TILE;
    XCB_GC_STIPPLE               :: STIPPLE;
    XCB_GC_TILE_STIPPLE_ORIGIN_X :: TILE_STIPPLE_ORIGIN_X;
    XCB_GC_TILE_STIPPLE_ORIGIN_Y :: TILE_STIPPLE_ORIGIN_Y;
    XCB_GC_FONT                  :: FONT;
    XCB_GC_SUBWINDOW_MODE        :: SUBWINDOW_MODE;
    XCB_GC_GRAPHICS_EXPOSURES    :: GRAPHICS_EXPOSURES;
    XCB_GC_CLIP_ORIGIN_X         :: CLIP_ORIGIN_X;
    XCB_GC_CLIP_ORIGIN_Y         :: CLIP_ORIGIN_Y;
    XCB_GC_CLIP_MASK             :: CLIP_MASK;
    XCB_GC_DASH_OFFSET           :: DASH_OFFSET;
    XCB_GC_DASH_LIST             :: DASH_LIST;
    XCB_GC_ARC_MODE              :: ARC_MODE;
}

xcb_gx_t :: enum u32 {
    CLEAR         :: 0;
    AND           :: 1;
    AND_REVERSE   :: 2;
    COPY          :: 3;
    AND_INVERTED  :: 4;
    NOOP          :: 5;
    XOR           :: 6;
    OR            :: 7;
    NOR           :: 8;
    EQUIV         :: 9;
    INVERT        :: 10;
    OR_REVERSE    :: 11;
    COPY_INVERTED :: 12;
    OR_INVERTED   :: 13;
    NAND          :: 14;
    SET           :: 15;

    XCB_GX_CLEAR         :: CLEAR;
    XCB_GX_AND           :: AND;
    XCB_GX_AND_REVERSE   :: AND_REVERSE;
    XCB_GX_COPY          :: COPY;
    XCB_GX_AND_INVERTED  :: AND_INVERTED;
    XCB_GX_NOOP          :: NOOP;
    XCB_GX_XOR           :: XOR;
    XCB_GX_OR            :: OR;
    XCB_GX_NOR           :: NOR;
    XCB_GX_EQUIV         :: EQUIV;
    XCB_GX_INVERT        :: INVERT;
    XCB_GX_OR_REVERSE    :: OR_REVERSE;
    XCB_GX_COPY_INVERTED :: COPY_INVERTED;
    XCB_GX_OR_INVERTED   :: OR_INVERTED;
    XCB_GX_NAND          :: NAND;
    XCB_GX_SET           :: SET;
}

xcb_line_style_t :: enum u32 {
    SOLID       :: 0;
    ON_OFF_DASH :: 1;
    DOUBLE_DASH :: 2;

    XCB_LINE_STYLE_SOLID       :: SOLID;
    XCB_LINE_STYLE_ON_OFF_DASH :: ON_OFF_DASH;
    XCB_LINE_STYLE_DOUBLE_DASH :: DOUBLE_DASH;
}

xcb_cap_style_t :: enum u32 {
    NOT_LAST   :: 0;
    BUTT       :: 1;
    ROUND      :: 2;
    PROJECTING :: 3;

    XCB_CAP_STYLE_NOT_LAST   :: NOT_LAST;
    XCB_CAP_STYLE_BUTT       :: BUTT;
    XCB_CAP_STYLE_ROUND      :: ROUND;
    XCB_CAP_STYLE_PROJECTING :: PROJECTING;
}

xcb_join_style_t :: enum u32 {
    MITER :: 0;
    ROUND :: 1;
    BEVEL :: 2;

    XCB_JOIN_STYLE_MITER :: MITER;
    XCB_JOIN_STYLE_ROUND :: ROUND;
    XCB_JOIN_STYLE_BEVEL :: BEVEL;
}

xcb_fill_style_t :: enum u32 {
    SOLID           :: 0;
    TILED           :: 1;
    STIPPLED        :: 2;
    OPAQUE_STIPPLED :: 3;

    XCB_FILL_STYLE_SOLID           :: SOLID;
    XCB_FILL_STYLE_TILED           :: TILED;
    XCB_FILL_STYLE_STIPPLED        :: STIPPLED;
    XCB_FILL_STYLE_OPAQUE_STIPPLED :: OPAQUE_STIPPLED;
}

xcb_fill_rule_t :: enum u32 {
    EVEN_ODD :: 0;
    WINDING  :: 1;

    XCB_FILL_RULE_EVEN_ODD :: EVEN_ODD;
    XCB_FILL_RULE_WINDING  :: WINDING;
}

xcb_subwindow_mode_t :: enum u32 {
    CLIP_BY_CHILDREN  :: 0;
    INCLUDE_INFERIORS :: 1;

    XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN  :: CLIP_BY_CHILDREN;
    XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS :: INCLUDE_INFERIORS;
}

xcb_arc_mode_t :: enum u32 {
    CHORD     :: 0;
    PIE_SLICE :: 1;

    XCB_ARC_MODE_CHORD     :: CHORD;
    XCB_ARC_MODE_PIE_SLICE :: PIE_SLICE;
}

/**
* @brief xcb_create_gc_value_list_t
**/
xcb_create_gc_value_list_t :: struct {
    function:              u32;
    plane_mask:            u32;
    foreground:            u32;
    background:            u32;
    line_width:            u32;
    line_style:            u32;
    cap_style:             u32;
    join_style:            u32;
    fill_style:            u32;
    fill_rule:             u32;
    tile:                  xcb_pixmap_t;
    stipple:               xcb_pixmap_t;
    tile_stipple_x_origin: s32;
    tile_stipple_y_origin: s32;
    font:                  xcb_font_t;
    subwindow_mode:        u32;
    graphics_exposures:    xcb_bool32_t;
    clip_x_origin:         s32;
    clip_y_origin:         s32;
    clip_mask:             xcb_pixmap_t;
    dash_offset:           u32;
    dashes:                u32;
    arc_mode:              u32;
}

/**
* @brief xcb_create_gc_request_t
**/
xcb_create_gc_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cid:          xcb_gcontext_t;
    drawable:     xcb_drawable_t;
    value_mask:   u32;
}

/**
* @brief xcb_change_gc_value_list_t
**/
xcb_change_gc_value_list_t :: struct {
    function:              u32;
    plane_mask:            u32;
    foreground:            u32;
    background:            u32;
    line_width:            u32;
    line_style:            u32;
    cap_style:             u32;
    join_style:            u32;
    fill_style:            u32;
    fill_rule:             u32;
    tile:                  xcb_pixmap_t;
    stipple:               xcb_pixmap_t;
    tile_stipple_x_origin: s32;
    tile_stipple_y_origin: s32;
    font:                  xcb_font_t;
    subwindow_mode:        u32;
    graphics_exposures:    xcb_bool32_t;
    clip_x_origin:         s32;
    clip_y_origin:         s32;
    clip_mask:             xcb_pixmap_t;
    dash_offset:           u32;
    dashes:                u32;
    arc_mode:              u32;
}

/**
* @brief xcb_change_gc_request_t
**/
xcb_change_gc_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    gc:           xcb_gcontext_t;
    value_mask:   u32;
}

/**
* @brief xcb_copy_gc_request_t
**/
xcb_copy_gc_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    src_gc:       xcb_gcontext_t;
    dst_gc:       xcb_gcontext_t;
    value_mask:   u32;
}

/**
* @brief xcb_set_dashes_request_t
**/
xcb_set_dashes_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    gc:           xcb_gcontext_t;
    dash_offset:  u16;
    dashes_len:   u16;
}

xcb_clip_ordering_t :: enum u32 {
    UNSORTED  :: 0;
    Y_SORTED  :: 1;
    YX_SORTED :: 2;
    YX_BANDED :: 3;

    XCB_CLIP_ORDERING_UNSORTED  :: UNSORTED;
    XCB_CLIP_ORDERING_Y_SORTED  :: Y_SORTED;
    XCB_CLIP_ORDERING_YX_SORTED :: YX_SORTED;
    XCB_CLIP_ORDERING_YX_BANDED :: YX_BANDED;
}

/**
* @brief xcb_set_clip_rectangles_request_t
**/
xcb_set_clip_rectangles_request_t :: struct {
    major_opcode:  u8;
    ordering:      u8;
    length:        u16;
    gc:            xcb_gcontext_t;
    clip_x_origin: s16;
    clip_y_origin: s16;
}

/**
* @brief xcb_free_gc_request_t
**/
xcb_free_gc_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    gc:           xcb_gcontext_t;
}

/**
* @brief xcb_clear_area_request_t
**/
xcb_clear_area_request_t :: struct {
    major_opcode: u8;
    exposures:    u8;
    length:       u16;
    window:       xcb_window_t;
    x:            s16;
    y:            s16;
    width:        u16;
    height:       u16;
}

/**
* @brief xcb_copy_area_request_t
**/
xcb_copy_area_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    src_drawable: xcb_drawable_t;
    dst_drawable: xcb_drawable_t;
    gc:           xcb_gcontext_t;
    src_x:        s16;
    src_y:        s16;
    dst_x:        s16;
    dst_y:        s16;
    width:        u16;
    height:       u16;
}

/**
* @brief xcb_copy_plane_request_t
**/
xcb_copy_plane_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    src_drawable: xcb_drawable_t;
    dst_drawable: xcb_drawable_t;
    gc:           xcb_gcontext_t;
    src_x:        s16;
    src_y:        s16;
    dst_x:        s16;
    dst_y:        s16;
    width:        u16;
    height:       u16;
    bit_plane:    u32;
}

xcb_coord_mode_t :: enum u32 {
    ORIGIN   :: 0;
    PREVIOUS :: 1;

    XCB_COORD_MODE_ORIGIN   :: ORIGIN;
    XCB_COORD_MODE_PREVIOUS :: PREVIOUS;
}

/**
* @brief xcb_poly_point_request_t
**/
xcb_poly_point_request_t :: struct {
    major_opcode:    u8;
    coordinate_mode: u8;
    length:          u16;
    drawable:        xcb_drawable_t;
    gc:              xcb_gcontext_t;
}

/**
* @brief xcb_poly_line_request_t
**/
xcb_poly_line_request_t :: struct {
    major_opcode:    u8;
    coordinate_mode: u8;
    length:          u16;
    drawable:        xcb_drawable_t;
    gc:              xcb_gcontext_t;
}

/**
* @brief xcb_segment_t
**/
xcb_segment_t :: struct {
    x1: s16;
    y1: s16;
    x2: s16;
    y2: s16;
}

/**
* @brief xcb_segment_iterator_t
**/
xcb_segment_iterator_t :: struct {
    data:  *xcb_segment_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_poly_segment_request_t
**/
xcb_poly_segment_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
}

/**
* @brief xcb_poly_rectangle_request_t
**/
xcb_poly_rectangle_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
}

/**
* @brief xcb_poly_arc_request_t
**/
xcb_poly_arc_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
}

xcb_poly_shape_t :: enum u32 {
    COMPLEX   :: 0;
    NONCONVEX :: 1;
    CONVEX    :: 2;

    XCB_POLY_SHAPE_COMPLEX   :: COMPLEX;
    XCB_POLY_SHAPE_NONCONVEX :: NONCONVEX;
    XCB_POLY_SHAPE_CONVEX    :: CONVEX;
}

/**
* @brief xcb_fill_poly_request_t
**/
xcb_fill_poly_request_t :: struct {
    major_opcode:    u8;
    pad0:            u8;
    length:          u16;
    drawable:        xcb_drawable_t;
    gc:              xcb_gcontext_t;
    shape:           u8;
    coordinate_mode: u8;
    pad1:            [2] u8;
}

/**
* @brief xcb_poly_fill_rectangle_request_t
**/
xcb_poly_fill_rectangle_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
}

/**
* @brief xcb_poly_fill_arc_request_t
**/
xcb_poly_fill_arc_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
}

xcb_image_format_t :: enum u32 {
    XY_BITMAP :: 0;
    XY_PIXMAP :: 1;
    Z_PIXMAP  :: 2;

    XCB_IMAGE_FORMAT_XY_BITMAP :: XY_BITMAP;
    XCB_IMAGE_FORMAT_XY_PIXMAP :: XY_PIXMAP;
    XCB_IMAGE_FORMAT_Z_PIXMAP  :: Z_PIXMAP;
}

/**
* @brief xcb_put_image_request_t
**/
xcb_put_image_request_t :: struct {
    major_opcode: u8;
    format:       u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
    width:        u16;
    height:       u16;
    dst_x:        s16;
    dst_y:        s16;
    left_pad:     u8;
    depth:        u8;
    pad0:         [2] u8;
}

/**
* @brief xcb_get_image_cookie_t
**/
xcb_get_image_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_image_request_t
**/
xcb_get_image_request_t :: struct {
    major_opcode: u8;
    format:       u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    x:            s16;
    y:            s16;
    width:        u16;
    height:       u16;
    plane_mask:   u32;
}

/**
* @brief xcb_get_image_reply_t
**/
xcb_get_image_reply_t :: struct {
    response_type: u8;
    depth:         u8;
    sequence:      u16;
    length:        u32;
    visual:        xcb_visualid_t;
    pad0:          [20] u8;
}

/**
* @brief xcb_poly_text_8_request_t
**/
xcb_poly_text_8_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
    x:            s16;
    y:            s16;
}

/**
* @brief xcb_poly_text_16_request_t
**/
xcb_poly_text_16_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
    x:            s16;
    y:            s16;
}

/**
* @brief xcb_image_text_8_request_t
**/
xcb_image_text_8_request_t :: struct {
    major_opcode: u8;
    string_len:   u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
    x:            s16;
    y:            s16;
}

/**
* @brief xcb_image_text_16_request_t
**/
xcb_image_text_16_request_t :: struct {
    major_opcode: u8;
    string_len:   u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    gc:           xcb_gcontext_t;
    x:            s16;
    y:            s16;
}

xcb_colormap_alloc_t :: enum u32 {
    NONE :: 0;
    ALL  :: 1;

    XCB_COLORMAP_ALLOC_NONE :: NONE;
    XCB_COLORMAP_ALLOC_ALL  :: ALL;
}

/**
* @brief xcb_create_colormap_request_t
**/
xcb_create_colormap_request_t :: struct {
    major_opcode: u8;
    alloc:        u8;
    length:       u16;
    mid:          xcb_colormap_t;
    window:       xcb_window_t;
    visual:       xcb_visualid_t;
}

/**
* @brief xcb_free_colormap_request_t
**/
xcb_free_colormap_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
}

/**
* @brief xcb_copy_colormap_and_free_request_t
**/
xcb_copy_colormap_and_free_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    mid:          xcb_colormap_t;
    src_cmap:     xcb_colormap_t;
}

/**
* @brief xcb_install_colormap_request_t
**/
xcb_install_colormap_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
}

/**
* @brief xcb_uninstall_colormap_request_t
**/
xcb_uninstall_colormap_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
}

/**
* @brief xcb_list_installed_colormaps_cookie_t
**/
xcb_list_installed_colormaps_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_list_installed_colormaps_request_t
**/
xcb_list_installed_colormaps_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
}

/**
* @brief xcb_list_installed_colormaps_reply_t
**/
xcb_list_installed_colormaps_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    cmaps_len:     u16;
    pad1:          [22] u8;
}

/**
* @brief xcb_alloc_color_cookie_t
**/
xcb_alloc_color_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_alloc_color_request_t
**/
xcb_alloc_color_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
    red:          u16;
    green:        u16;
    blue:         u16;
    pad1:         [2] u8;
}

/**
* @brief xcb_alloc_color_reply_t
**/
xcb_alloc_color_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    red:           u16;
    green:         u16;
    blue:          u16;
    pad1:          [2] u8;
    pixel:         u32;
}

/**
* @brief xcb_alloc_named_color_cookie_t
**/
xcb_alloc_named_color_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_alloc_named_color_request_t
**/
xcb_alloc_named_color_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
    name_len:     u16;
    pad1:         [2] u8;
}

/**
* @brief xcb_alloc_named_color_reply_t
**/
xcb_alloc_named_color_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    pixel:         u32;
    exact_red:     u16;
    exact_green:   u16;
    exact_blue:    u16;
    visual_red:    u16;
    visual_green:  u16;
    visual_blue:   u16;
}

/**
* @brief xcb_alloc_color_cells_cookie_t
**/
xcb_alloc_color_cells_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_alloc_color_cells_request_t
**/
xcb_alloc_color_cells_request_t :: struct {
    major_opcode: u8;
    contiguous:   u8;
    length:       u16;
    cmap:         xcb_colormap_t;
    colors:       u16;
    planes:       u16;
}

/**
* @brief xcb_alloc_color_cells_reply_t
**/
xcb_alloc_color_cells_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    pixels_len:    u16;
    masks_len:     u16;
    pad1:          [20] u8;
}

/**
* @brief xcb_alloc_color_planes_cookie_t
**/
xcb_alloc_color_planes_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_alloc_color_planes_request_t
**/
xcb_alloc_color_planes_request_t :: struct {
    major_opcode: u8;
    contiguous:   u8;
    length:       u16;
    cmap:         xcb_colormap_t;
    colors:       u16;
    reds:         u16;
    greens:       u16;
    blues:        u16;
}

/**
* @brief xcb_alloc_color_planes_reply_t
**/
xcb_alloc_color_planes_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    pixels_len:    u16;
    pad1:          [2] u8;
    red_mask:      u32;
    green_mask:    u32;
    blue_mask:     u32;
    pad2:          [8] u8;
}

/**
* @brief xcb_free_colors_request_t
**/
xcb_free_colors_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
    plane_mask:   u32;
}

xcb_color_flag_t :: enum u32 {
    RED   :: 1;
    GREEN :: 2;
    BLUE  :: 4;

    XCB_COLOR_FLAG_RED   :: RED;
    XCB_COLOR_FLAG_GREEN :: GREEN;
    XCB_COLOR_FLAG_BLUE  :: BLUE;
}

/**
* @brief xcb_coloritem_t
**/
xcb_coloritem_t :: struct {
    pixel: u32;
    red:   u16;
    green: u16;
    blue:  u16;
    flags: u8;
    pad0:  u8;
}

/**
* @brief xcb_coloritem_iterator_t
**/
xcb_coloritem_iterator_t :: struct {
    data:  *xcb_coloritem_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_store_colors_request_t
**/
xcb_store_colors_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
}

/**
* @brief xcb_store_named_color_request_t
**/
xcb_store_named_color_request_t :: struct {
    major_opcode: u8;
    flags:        u8;
    length:       u16;
    cmap:         xcb_colormap_t;
    pixel:        u32;
    name_len:     u16;
    pad0:         [2] u8;
}

/**
* @brief xcb_rgb_t
**/
xcb_rgb_t :: struct {
    red:   u16;
    green: u16;
    blue:  u16;
    pad0:  [2] u8;
}

/**
* @brief xcb_rgb_iterator_t
**/
xcb_rgb_iterator_t :: struct {
    data:  *xcb_rgb_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_query_colors_cookie_t
**/
xcb_query_colors_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_query_colors_request_t
**/
xcb_query_colors_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
}

/**
* @brief xcb_query_colors_reply_t
**/
xcb_query_colors_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    colors_len:    u16;
    pad1:          [22] u8;
}

/**
* @brief xcb_lookup_color_cookie_t
**/
xcb_lookup_color_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_lookup_color_request_t
**/
xcb_lookup_color_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cmap:         xcb_colormap_t;
    name_len:     u16;
    pad1:         [2] u8;
}

/**
* @brief xcb_lookup_color_reply_t
**/
xcb_lookup_color_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    exact_red:     u16;
    exact_green:   u16;
    exact_blue:    u16;
    visual_red:    u16;
    visual_green:  u16;
    visual_blue:   u16;
}

xcb_pixmap_enum_t :: enum u32 {
    XCB_PIXMAP_NONE :: 0;
}

/**
* @brief xcb_create_cursor_request_t
**/
xcb_create_cursor_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cid:          xcb_cursor_t;
    source:       xcb_pixmap_t;
    mask:         xcb_pixmap_t;
    fore_red:     u16;
    fore_green:   u16;
    fore_blue:    u16;
    back_red:     u16;
    back_green:   u16;
    back_blue:    u16;
    x:            u16;
    y:            u16;
}

xcb_font_enum_t :: enum u32 {
    XCB_FONT_NONE :: 0;
}

/**
* @brief xcb_create_glyph_cursor_request_t
**/
xcb_create_glyph_cursor_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cid:          xcb_cursor_t;
    source_font:  xcb_font_t;
    mask_font:    xcb_font_t;
    source_char:  u16;
    mask_char:    u16;
    fore_red:     u16;
    fore_green:   u16;
    fore_blue:    u16;
    back_red:     u16;
    back_green:   u16;
    back_blue:    u16;
}

/**
* @brief xcb_free_cursor_request_t
**/
xcb_free_cursor_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cursor:       xcb_cursor_t;
}

/**
* @brief xcb_recolor_cursor_request_t
**/
xcb_recolor_cursor_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    cursor:       xcb_cursor_t;
    fore_red:     u16;
    fore_green:   u16;
    fore_blue:    u16;
    back_red:     u16;
    back_green:   u16;
    back_blue:    u16;
}

xcb_query_shape_of_t :: enum u8 {
    LARGEST_CURSOR  :: 0;
    FASTEST_TILE    :: 1;
    FASTEST_STIPPLE :: 2;

    XCB_QUERY_SHAPE_OF_LARGEST_CURSOR  :: LARGEST_CURSOR;
    XCB_QUERY_SHAPE_OF_FASTEST_TILE    :: FASTEST_TILE;
    XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE :: FASTEST_STIPPLE;
}

/**
* @brief xcb_query_best_size_cookie_t
**/
xcb_query_best_size_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_query_best_size_request_t
**/
xcb_query_best_size_request_t :: struct {
    major_opcode: u8;
    _class:       u8;
    length:       u16;
    drawable:     xcb_drawable_t;
    width:        u16;
    height:       u16;
}

/**
* @brief xcb_query_best_size_reply_t
**/
xcb_query_best_size_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    width:         u16;
    height:        u16;
}

/**
* @brief xcb_query_extension_cookie_t
**/
xcb_query_extension_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_query_extension_request_t
**/
xcb_query_extension_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    name_len:     u16;
    pad1:         [2] u8;
}

/**
* @brief xcb_query_extension_reply_t
**/
xcb_query_extension_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    present:       u8;
    major_opcode:  u8;
    first_event:   u8;
    first_error:   u8;
}

/**
* @brief xcb_list_extensions_cookie_t
**/
xcb_list_extensions_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_list_extensions_request_t
**/
xcb_list_extensions_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_list_extensions_reply_t
**/
xcb_list_extensions_reply_t :: struct {
    response_type: u8;
    names_len:     u8;
    sequence:      u16;
    length:        u32;
    pad0:          [24] u8;
}

/**
* @brief xcb_change_keyboard_mapping_request_t
**/
xcb_change_keyboard_mapping_request_t :: struct {
    major_opcode:        u8;
    keycode_count:       u8;
    length:              u16;
    first_keycode:       xcb_keycode_t;
    keysyms_per_keycode: u8;
    pad0:                [2] u8;
}

/**
* @brief xcb_get_keyboard_mapping_cookie_t
**/
xcb_get_keyboard_mapping_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_keyboard_mapping_request_t
**/
xcb_get_keyboard_mapping_request_t :: struct {
    major_opcode:  u8;
    pad0:          u8;
    length:        u16;
    first_keycode: xcb_keycode_t;
    count:         u8;
}

/**
* @brief xcb_get_keyboard_mapping_reply_t
**/
xcb_get_keyboard_mapping_reply_t :: struct {
    response_type:       u8;
    keysyms_per_keycode: u8;
    sequence:            u16;
    length:              u32;
    pad0:                [24] u8;
}

xcb_kb_t :: enum u32 {
    KEY_CLICK_PERCENT :: 1;
    BELL_PERCENT      :: 2;
    BELL_PITCH        :: 4;
    BELL_DURATION     :: 8;
    LED               :: 16;
    LED_MODE          :: 32;
    KEY               :: 64;
    AUTO_REPEAT_MODE  :: 128;

    XCB_KB_KEY_CLICK_PERCENT :: KEY_CLICK_PERCENT;
    XCB_KB_BELL_PERCENT      :: BELL_PERCENT;
    XCB_KB_BELL_PITCH        :: BELL_PITCH;
    XCB_KB_BELL_DURATION     :: BELL_DURATION;
    XCB_KB_LED               :: LED;
    XCB_KB_LED_MODE          :: LED_MODE;
    XCB_KB_KEY               :: KEY;
    XCB_KB_AUTO_REPEAT_MODE  :: AUTO_REPEAT_MODE;
}

xcb_led_mode_t :: enum u32 {
    OFF :: 0;
    ON  :: 1;

    XCB_LED_MODE_OFF :: OFF;
    XCB_LED_MODE_ON  :: ON;
}

xcb_auto_repeat_mode_t :: enum u32 {
    OFF     :: 0;
    ON      :: 1;
    DEFAULT :: 2;

    XCB_AUTO_REPEAT_MODE_OFF     :: OFF;
    XCB_AUTO_REPEAT_MODE_ON      :: ON;
    XCB_AUTO_REPEAT_MODE_DEFAULT :: DEFAULT;
}

/**
* @brief xcb_change_keyboard_control_value_list_t
**/
xcb_change_keyboard_control_value_list_t :: struct {
    key_click_percent: s32;
    bell_percent:      s32;
    bell_pitch:        s32;
    bell_duration:     s32;
    led:               u32;
    led_mode:          u32;
    key:               xcb_keycode32_t;
    auto_repeat_mode:  u32;
}

/**
* @brief xcb_change_keyboard_control_request_t
**/
xcb_change_keyboard_control_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    value_mask:   u32;
}

/**
* @brief xcb_get_keyboard_control_cookie_t
**/
xcb_get_keyboard_control_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_keyboard_control_request_t
**/
xcb_get_keyboard_control_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_get_keyboard_control_reply_t
**/
xcb_get_keyboard_control_reply_t :: struct {
    response_type:      u8;
    global_auto_repeat: u8;
    sequence:           u16;
    length:             u32;
    led_mask:           u32;
    key_click_percent:  u8;
    bell_percent:       u8;
    bell_pitch:         u16;
    bell_duration:      u16;
    pad0:               [2] u8;
    auto_repeats:       [32] u8;
}

/**
* @brief xcb_bell_request_t
**/
xcb_bell_request_t :: struct {
    major_opcode: u8;
    percent:      s8;
    length:       u16;
}

/**
* @brief xcb_change_pointer_control_request_t
**/
xcb_change_pointer_control_request_t :: struct {
    major_opcode:             u8;
    pad0:                     u8;
    length:                   u16;
    acceleration_numerator:   s16;
    acceleration_denominator: s16;
    threshold:                s16;
    do_acceleration:          u8;
    do_threshold:             u8;
}

/**
* @brief xcb_get_pointer_control_cookie_t
**/
xcb_get_pointer_control_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_pointer_control_request_t
**/
xcb_get_pointer_control_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_get_pointer_control_reply_t
**/
xcb_get_pointer_control_reply_t :: struct {
    response_type:            u8;
    pad0:                     u8;
    sequence:                 u16;
    length:                   u32;
    acceleration_numerator:   u16;
    acceleration_denominator: u16;
    threshold:                u16;
    pad1:                     [18] u8;
}

xcb_blanking_t :: enum u32 {
    NOT_PREFERRED :: 0;
    PREFERRED     :: 1;
    DEFAULT       :: 2;

    XCB_BLANKING_NOT_PREFERRED :: NOT_PREFERRED;
    XCB_BLANKING_PREFERRED     :: PREFERRED;
    XCB_BLANKING_DEFAULT       :: DEFAULT;
}

xcb_exposures_t :: enum u32 {
    NOT_ALLOWED :: 0;
    ALLOWED     :: 1;
    DEFAULT     :: 2;

    XCB_EXPOSURES_NOT_ALLOWED :: NOT_ALLOWED;
    XCB_EXPOSURES_ALLOWED     :: ALLOWED;
    XCB_EXPOSURES_DEFAULT     :: DEFAULT;
}

/**
* @brief xcb_set_screen_saver_request_t
**/
xcb_set_screen_saver_request_t :: struct {
    major_opcode:    u8;
    pad0:            u8;
    length:          u16;
    timeout:         s16;
    interval:        s16;
    prefer_blanking: u8;
    allow_exposures: u8;
}

/**
* @brief xcb_get_screen_saver_cookie_t
**/
xcb_get_screen_saver_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_screen_saver_request_t
**/
xcb_get_screen_saver_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_get_screen_saver_reply_t
**/
xcb_get_screen_saver_reply_t :: struct {
    response_type:   u8;
    pad0:            u8;
    sequence:        u16;
    length:          u32;
    timeout:         u16;
    interval:        u16;
    prefer_blanking: u8;
    allow_exposures: u8;
    pad1:            [18] u8;
}

xcb_host_mode_t :: enum u32 {
    INSERT :: 0;
    DELETE :: 1;

    XCB_HOST_MODE_INSERT :: INSERT;
    XCB_HOST_MODE_DELETE :: DELETE;
}

xcb_family_t :: enum u32 {
    INTERNET           :: 0;
    DECNET             :: 1;
    CHAOS              :: 2;
    SERVER_INTERPRETED :: 5;
    INTERNET_6         :: 6;

    XCB_FAMILY_INTERNET           :: INTERNET;
    XCB_FAMILY_DECNET             :: DECNET;
    XCB_FAMILY_CHAOS              :: CHAOS;
    XCB_FAMILY_SERVER_INTERPRETED :: SERVER_INTERPRETED;
    XCB_FAMILY_INTERNET_6         :: INTERNET_6;
}

/**
* @brief xcb_change_hosts_request_t
**/
xcb_change_hosts_request_t :: struct {
    major_opcode: u8;
    mode:         u8;
    length:       u16;
    family:       u8;
    pad0:         u8;
    address_len:  u16;
}

/**
* @brief xcb_host_t
**/
xcb_host_t :: struct {
    family:      u8;
    pad0:        u8;
    address_len: u16;
}

/**
* @brief xcb_host_iterator_t
**/
xcb_host_iterator_t :: struct {
    data:  *xcb_host_t;
    rem:   s32;
    index: s32;
}

/**
* @brief xcb_list_hosts_cookie_t
**/
xcb_list_hosts_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_list_hosts_request_t
**/
xcb_list_hosts_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_list_hosts_reply_t
**/
xcb_list_hosts_reply_t :: struct {
    response_type: u8;
    mode:          u8;
    sequence:      u16;
    length:        u32;
    hosts_len:     u16;
    pad0:          [22] u8;
}

xcb_access_control_t :: enum u32 {
    DISABLE :: 0;
    ENABLE  :: 1;

    XCB_ACCESS_CONTROL_DISABLE :: DISABLE;
    XCB_ACCESS_CONTROL_ENABLE  :: ENABLE;
}

/**
* @brief xcb_set_access_control_request_t
**/
xcb_set_access_control_request_t :: struct {
    major_opcode: u8;
    mode:         u8;
    length:       u16;
}

xcb_close_down_t :: enum u32 {
    DESTROY_ALL      :: 0;
    RETAIN_PERMANENT :: 1;
    RETAIN_TEMPORARY :: 2;

    XCB_CLOSE_DOWN_DESTROY_ALL      :: DESTROY_ALL;
    XCB_CLOSE_DOWN_RETAIN_PERMANENT :: RETAIN_PERMANENT;
    XCB_CLOSE_DOWN_RETAIN_TEMPORARY :: RETAIN_TEMPORARY;
}

/**
* @brief xcb_set_close_down_mode_request_t
**/
xcb_set_close_down_mode_request_t :: struct {
    major_opcode: u8;
    mode:         u8;
    length:       u16;
}

xcb_kill_t :: enum u32 {
    XCB_KILL_ALL_TEMPORARY :: 0;
}

/**
* @brief xcb_kill_client_request_t
**/
xcb_kill_client_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    resource:     u32;
}

/**
* @brief xcb_rotate_properties_request_t
**/
xcb_rotate_properties_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
    window:       xcb_window_t;
    atoms_len:    u16;
    delta:        s16;
}

xcb_screen_saver_t :: enum u32 {
    RESET  :: 0;
    ACTIVE :: 1;

    XCB_SCREEN_SAVER_RESET  :: RESET;
    XCB_SCREEN_SAVER_ACTIVE :: ACTIVE;
}

/**
* @brief xcb_force_screen_saver_request_t
**/
xcb_force_screen_saver_request_t :: struct {
    major_opcode: u8;
    mode:         u8;
    length:       u16;
}

xcb_mapping_status_t :: enum u32 {
    SUCCESS :: 0;
    BUSY    :: 1;
    FAILURE :: 2;

    XCB_MAPPING_STATUS_SUCCESS :: SUCCESS;
    XCB_MAPPING_STATUS_BUSY    :: BUSY;
    XCB_MAPPING_STATUS_FAILURE :: FAILURE;
}

/**
* @brief xcb_set_pointer_mapping_cookie_t
**/
xcb_set_pointer_mapping_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_set_pointer_mapping_request_t
**/
xcb_set_pointer_mapping_request_t :: struct {
    major_opcode: u8;
    map_len:      u8;
    length:       u16;
}

/**
* @brief xcb_set_pointer_mapping_reply_t
**/
xcb_set_pointer_mapping_reply_t :: struct {
    response_type: u8;
    status:        u8;
    sequence:      u16;
    length:        u32;
}

/**
* @brief xcb_get_pointer_mapping_cookie_t
**/
xcb_get_pointer_mapping_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_pointer_mapping_request_t
**/
xcb_get_pointer_mapping_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_get_pointer_mapping_reply_t
**/
xcb_get_pointer_mapping_reply_t :: struct {
    response_type: u8;
    map_len:       u8;
    sequence:      u16;
    length:        u32;
    pad0:          [24] u8;
}

xcb_map_index_t :: enum u32 {
    SHIFT   :: 0;
    LOCK    :: 1;
    CONTROL :: 2;
    _1      :: 3;
    _2      :: 4;
    _3      :: 5;
    _4      :: 6;
    _5      :: 7;

    XCB_MAP_INDEX_SHIFT   :: SHIFT;
    XCB_MAP_INDEX_LOCK    :: LOCK;
    XCB_MAP_INDEX_CONTROL :: CONTROL;
    XCB_MAP_INDEX_1       :: _1;
    XCB_MAP_INDEX_2       :: _2;
    XCB_MAP_INDEX_3       :: _3;
    XCB_MAP_INDEX_4       :: _4;
    XCB_MAP_INDEX_5       :: _5;
}

/**
* @brief xcb_set_modifier_mapping_cookie_t
**/
xcb_set_modifier_mapping_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_set_modifier_mapping_request_t
**/
xcb_set_modifier_mapping_request_t :: struct {
    major_opcode:          u8;
    keycodes_per_modifier: u8;
    length:                u16;
}

/**
* @brief xcb_set_modifier_mapping_reply_t
**/
xcb_set_modifier_mapping_reply_t :: struct {
    response_type: u8;
    status:        u8;
    sequence:      u16;
    length:        u32;
}

/**
* @brief xcb_get_modifier_mapping_cookie_t
**/
xcb_get_modifier_mapping_cookie_t :: struct {
    sequence: u32;
}

/**
* @brief xcb_get_modifier_mapping_request_t
**/
xcb_get_modifier_mapping_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief xcb_get_modifier_mapping_reply_t
**/
xcb_get_modifier_mapping_reply_t :: struct {
    response_type:         u8;
    keycodes_per_modifier: u8;
    sequence:              u16;
    length:                u32;
    pad0:                  [24] u8;
}

/**
* @brief xcb_no_operation_request_t
**/
xcb_no_operation_request_t :: struct {
    major_opcode: u8;
    pad0:         u8;
    length:       u16;
}

/**
* @brief Container for authorization information.
*
* A container for authorization information to be sent to the X server.
*/
xcb_auth_info_t :: struct {
    namelen: s32; /**< Length of the string name (as returned by strlen). */
    name:    *u8; /**< String containing the authentication protocol name, such as "MIT-MAGIC-COOKIE-1" or "XDM-AUTHORIZATION-1". */
    datalen: s32; /**< Length of the data member. */
    data:    *u8; /**< Data interpreted in a protocol-specific manner. */
}

xcb_special_event :: struct {}
xcb_special_event_t :: xcb_special_event;

xcb_extension_t :: struct {}

XCB_Symbols :: struct #type_info_procedures_are_void_pointers #type_info_no_size_complaint {
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_char2b_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_char2b_t)
    */
    xcb_char2b_next:                                      #type (i: *xcb_char2b_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_char2b_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_char2b_end:                                       #type (i: xcb_char2b_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_window_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_window_t)
    */
    xcb_window_next:                                      #type (i: *xcb_window_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_window_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_window_end:                                       #type (i: xcb_window_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_pixmap_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_pixmap_t)
    */
    xcb_pixmap_next:                                      #type (i: *xcb_pixmap_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_pixmap_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_pixmap_end:                                       #type (i: xcb_pixmap_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_cursor_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_cursor_t)
    */
    xcb_cursor_next:                                      #type (i: *xcb_cursor_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_cursor_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_cursor_end:                                       #type (i: xcb_cursor_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_font_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_font_t)
    */
    xcb_font_next:                                        #type (i: *xcb_font_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_font_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_font_end:                                         #type (i: xcb_font_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_gcontext_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_gcontext_t)
    */
    xcb_gcontext_next:                                    #type (i: *xcb_gcontext_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_gcontext_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_gcontext_end:                                     #type (i: xcb_gcontext_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_colormap_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_colormap_t)
    */
    xcb_colormap_next:                                    #type (i: *xcb_colormap_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_colormap_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_colormap_end:                                     #type (i: xcb_colormap_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_atom_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_atom_t)
    */
    xcb_atom_next:                                        #type (i: *xcb_atom_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_atom_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_atom_end:                                         #type (i: xcb_atom_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_drawable_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_drawable_t)
    */
    xcb_drawable_next:                                    #type (i: *xcb_drawable_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_drawable_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_drawable_end:                                     #type (i: xcb_drawable_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_fontable_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_fontable_t)
    */
    xcb_fontable_next:                                    #type (i: *xcb_fontable_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_fontable_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_fontable_end:                                     #type (i: xcb_fontable_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_bool32_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_bool32_t)
    */
    xcb_bool32_next:                                      #type (i: *xcb_bool32_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_bool32_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_bool32_end:                                       #type (i: xcb_bool32_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_visualid_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_visualid_t)
    */
    xcb_visualid_next:                                    #type (i: *xcb_visualid_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_visualid_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_visualid_end:                                     #type (i: xcb_visualid_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_timestamp_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_timestamp_t)
    */
    xcb_timestamp_next:                                   #type (i: *xcb_timestamp_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_timestamp_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_timestamp_end:                                    #type (i: xcb_timestamp_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_keysym_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_keysym_t)
    */
    xcb_keysym_next:                                      #type (i: *xcb_keysym_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_keysym_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_keysym_end:                                       #type (i: xcb_keysym_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_keycode_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_keycode_t)
    */
    xcb_keycode_next:                                     #type (i: *xcb_keycode_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_keycode_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_keycode_end:                                      #type (i: xcb_keycode_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_keycode32_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_keycode32_t)
    */
    xcb_keycode32_next:                                   #type (i: *xcb_keycode32_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_keycode32_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_keycode32_end:                                    #type (i: xcb_keycode32_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_button_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_button_t)
    */
    xcb_button_next:                                      #type (i: *xcb_button_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_button_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_button_end:                                       #type (i: xcb_button_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_point_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_point_t)
    */
    xcb_point_next:                                       #type (i: *xcb_point_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_point_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_point_end:                                        #type (i: xcb_point_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_rectangle_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_rectangle_t)
    */
    xcb_rectangle_next:                                   #type (i: *xcb_rectangle_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_rectangle_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_rectangle_end:                                    #type (i: xcb_rectangle_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_arc_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_arc_t)
    */
    xcb_arc_next:                                         #type (i: *xcb_arc_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_arc_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_arc_end:                                          #type (i: xcb_arc_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_format_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_format_t)
    */
    xcb_format_next:                                      #type (i: *xcb_format_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_format_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_format_end:                                       #type (i: xcb_format_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_visualtype_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_visualtype_t)
    */
    xcb_visualtype_next:                                  #type (i: *xcb_visualtype_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_visualtype_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_visualtype_end:                                   #type (i: xcb_visualtype_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_depth_sizeof:                                     #type (_buffer: *void) -> s32 #c_call;
    xcb_depth_visuals:                                    #type (R: *xcb_depth_t) -> *xcb_visualtype_t #c_call;
    xcb_depth_visuals_length:                             #type (R: *xcb_depth_t) -> s32 #c_call;
    xcb_depth_visuals_iterator:                           #type (R: *xcb_depth_t) -> xcb_visualtype_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_depth_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_depth_t)
    */
    xcb_depth_next:                                       #type (i: *xcb_depth_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_depth_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_depth_end:                                        #type (i: xcb_depth_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_screen_sizeof:                                    #type (_buffer: *void) -> s32 #c_call;
    xcb_screen_allowed_depths_length:                     #type (R: *xcb_screen_t) -> s32 #c_call;
    xcb_screen_allowed_depths_iterator:                   #type (R: *xcb_screen_t) -> xcb_depth_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_screen_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_screen_t)
    */
    xcb_screen_next:                                      #type (i: *xcb_screen_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_screen_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_screen_end:                                       #type (i: xcb_screen_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_setup_request_sizeof:                             #type (_buffer: *void) -> s32 #c_call;
    xcb_setup_request_authorization_protocol_name:        #type (R: *xcb_setup_request_t) -> *u8 #c_call;
    xcb_setup_request_authorization_protocol_name_length: #type (R: *xcb_setup_request_t) -> s32 #c_call;
    xcb_setup_request_authorization_protocol_name_end:    #type (R: *xcb_setup_request_t) -> xcb_generic_iterator_t #c_call;
    xcb_setup_request_authorization_protocol_data:        #type (R: *xcb_setup_request_t) -> *u8 #c_call;
    xcb_setup_request_authorization_protocol_data_length: #type (R: *xcb_setup_request_t) -> s32 #c_call;
    xcb_setup_request_authorization_protocol_data_end:    #type (R: *xcb_setup_request_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_setup_request_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_setup_request_t)
    */
    xcb_setup_request_next:                               #type (i: *xcb_setup_request_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_setup_request_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_setup_request_end:                                #type (i: xcb_setup_request_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_setup_failed_sizeof:                              #type (_buffer: *void) -> s32 #c_call;
    xcb_setup_failed_reason:                              #type (R: *xcb_setup_failed_t) -> *u8 #c_call;
    xcb_setup_failed_reason_length:                       #type (R: *xcb_setup_failed_t) -> s32 #c_call;
    xcb_setup_failed_reason_end:                          #type (R: *xcb_setup_failed_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_setup_failed_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_setup_failed_t)
    */
    xcb_setup_failed_next:                                #type (i: *xcb_setup_failed_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_setup_failed_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_setup_failed_end:                                 #type (i: xcb_setup_failed_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_setup_authenticate_sizeof:                        #type (_buffer: *void) -> s32 #c_call;
    xcb_setup_authenticate_reason:                        #type (R: *xcb_setup_authenticate_t) -> *u8 #c_call;
    xcb_setup_authenticate_reason_length:                 #type (R: *xcb_setup_authenticate_t) -> s32 #c_call;
    xcb_setup_authenticate_reason_end:                    #type (R: *xcb_setup_authenticate_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_setup_authenticate_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_setup_authenticate_t)
    */
    xcb_setup_authenticate_next:                          #type (i: *xcb_setup_authenticate_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_setup_authenticate_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_setup_authenticate_end:                           #type (i: xcb_setup_authenticate_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_setup_sizeof:                                     #type (_buffer: *void) -> s32 #c_call;
    xcb_setup_vendor:                                     #type (R: *xcb_setup_t) -> *u8 #c_call;
    xcb_setup_vendor_length:                              #type (R: *xcb_setup_t) -> s32 #c_call;
    xcb_setup_vendor_end:                                 #type (R: *xcb_setup_t) -> xcb_generic_iterator_t #c_call;
    xcb_setup_pixmap_formats:                             #type (R: *xcb_setup_t) -> *xcb_format_t #c_call;
    xcb_setup_pixmap_formats_length:                      #type (R: *xcb_setup_t) -> s32 #c_call;
    xcb_setup_pixmap_formats_iterator:                    #type (R: *xcb_setup_t) -> xcb_format_iterator_t #c_call;
    xcb_setup_roots_length:                               #type (R: *xcb_setup_t) -> s32 #c_call;
    xcb_setup_roots_iterator:                             #type (R: *xcb_setup_t) -> xcb_screen_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_setup_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_setup_t)
    */
    xcb_setup_next:                                       #type (i: *xcb_setup_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_setup_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_setup_end:                                        #type (i: xcb_setup_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_client_message_data_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_client_message_data_t)
    */
    xcb_client_message_data_next:                         #type (i: *xcb_client_message_data_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_client_message_data_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_client_message_data_end:                          #type (i: xcb_client_message_data_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_create_window_value_list_serialize:               #type (_buffer: **void, value_mask: u32, _aux: *xcb_create_window_value_list_t) -> s32 #c_call;
    xcb_create_window_value_list_unpack:                  #type (_buffer: *void, value_mask: u32, _aux: *xcb_create_window_value_list_t) -> s32 #c_call;
    xcb_create_window_value_list_sizeof:                  #type (_buffer: *void, value_mask: u32) -> s32 #c_call;
    xcb_create_window_sizeof:                             #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief Creates a window
    *
    * @param c The connection
    * @param depth Specifies the new window's depth (TODO: what unit?).
    * \n
    * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
    * \a parent window.
    * @param wid The ID with which you will refer to the new window, created by
    * `xcb_generate_id`.
    * @param parent The parent window of the new window.
    * @param x The X coordinate of the new window.
    * @param y The Y coordinate of the new window.
    * @param width The width of the new window.
    * @param height The height of the new window.
    * @param border_width TODO:
    * \n
    * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
    * @param _class A bitmask of #xcb_window_class_t values.
    * @param _class \n
    * @param visual Specifies the id for the new window's visual.
    * \n
    * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
    * \a parent window.
    * @param value_mask A bitmask of #xcb_cw_t values.
    * @return A cookie
    *
    * Creates an unmapped window as child of the specified \a parent window. A
    * CreateNotify event will be generated. The new window is placed on top in the
    * stacking order with respect to siblings.
    *
    * The coordinate system has the X axis horizontal and the Y axis vertical with
    * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
    * of pixels, and coincide with pixel centers. Each window and pixmap has its own
    * coordinate system. For a window, the origin is inside the border at the inside,
    * upper-left corner.
    *
    * The created window is not yet displayed (mapped), call `xcb_map_window` to
    * display it.
    *
    * The created window will initially use the same cursor as its parent.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_create_window_checked:                            #type (c: *xcb_connection_t, depth: u8, wid: xcb_window_t, parent: xcb_window_t, x: s16, y: s16, width: u16, height: u16, border_width: u16, _class: xcb_window_class_t, visual: xcb_visualid_t, value_mask: xcb_cw_t, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Creates a window
    *
    * @param c The connection
    * @param depth Specifies the new window's depth (TODO: what unit?).
    * \n
    * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
    * \a parent window.
    * @param wid The ID with which you will refer to the new window, created by
    * `xcb_generate_id`.
    * @param parent The parent window of the new window.
    * @param x The X coordinate of the new window.
    * @param y The Y coordinate of the new window.
    * @param width The width of the new window.
    * @param height The height of the new window.
    * @param border_width TODO:
    * \n
    * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
    * @param _class A bitmask of #xcb_window_class_t values.
    * @param _class \n
    * @param visual Specifies the id for the new window's visual.
    * \n
    * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
    * \a parent window.
    * @param value_mask A bitmask of #xcb_cw_t values.
    * @return A cookie
    *
    * Creates an unmapped window as child of the specified \a parent window. A
    * CreateNotify event will be generated. The new window is placed on top in the
    * stacking order with respect to siblings.
    *
    * The coordinate system has the X axis horizontal and the Y axis vertical with
    * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
    * of pixels, and coincide with pixel centers. Each window and pixmap has its own
    * coordinate system. For a window, the origin is inside the border at the inside,
    * upper-left corner.
    *
    * The created window is not yet displayed (mapped), call `xcb_map_window` to
    * display it.
    *
    * The created window will initially use the same cursor as its parent.
    *
    */
    xcb_create_window:                                    #type (c: *xcb_connection_t, depth: u8, wid: xcb_window_t, parent: xcb_window_t, x: s16, y: s16, width: u16, height: u16, border_width: u16, _class: xcb_window_class_t, visual: xcb_visualid_t, value_mask: xcb_cw_t, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Creates a window
    *
    * @param c The connection
    * @param depth Specifies the new window's depth (TODO: what unit?).
    * \n
    * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
    * \a parent window.
    * @param wid The ID with which you will refer to the new window, created by
    * `xcb_generate_id`.
    * @param parent The parent window of the new window.
    * @param x The X coordinate of the new window.
    * @param y The Y coordinate of the new window.
    * @param width The width of the new window.
    * @param height The height of the new window.
    * @param border_width TODO:
    * \n
    * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
    * @param _class A bitmask of #xcb_window_class_t values.
    * @param _class \n
    * @param visual Specifies the id for the new window's visual.
    * \n
    * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
    * \a parent window.
    * @param value_mask A bitmask of #xcb_cw_t values.
    * @return A cookie
    *
    * Creates an unmapped window as child of the specified \a parent window. A
    * CreateNotify event will be generated. The new window is placed on top in the
    * stacking order with respect to siblings.
    *
    * The coordinate system has the X axis horizontal and the Y axis vertical with
    * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
    * of pixels, and coincide with pixel centers. Each window and pixmap has its own
    * coordinate system. For a window, the origin is inside the border at the inside,
    * upper-left corner.
    *
    * The created window is not yet displayed (mapped), call `xcb_map_window` to
    * display it.
    *
    * The created window will initially use the same cursor as its parent.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_create_window_aux_checked:                        #type (c: *xcb_connection_t, depth: u8, wid: xcb_window_t, parent: xcb_window_t, x: s16, y: s16, width: u16, height: u16, border_width: u16, _class: xcb_window_class_t, visual: xcb_visualid_t, value_mask: xcb_cw_t, value_list: *xcb_create_window_value_list_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Creates a window
    *
    * @param c The connection
    * @param depth Specifies the new window's depth (TODO: what unit?).
    * \n
    * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
    * \a parent window.
    * @param wid The ID with which you will refer to the new window, created by
    * `xcb_generate_id`.
    * @param parent The parent window of the new window.
    * @param x The X coordinate of the new window.
    * @param y The Y coordinate of the new window.
    * @param width The width of the new window.
    * @param height The height of the new window.
    * @param border_width TODO:
    * \n
    * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
    * @param _class A bitmask of #xcb_window_class_t values.
    * @param _class \n
    * @param visual Specifies the id for the new window's visual.
    * \n
    * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
    * \a parent window.
    * @param value_mask A bitmask of #xcb_cw_t values.
    * @return A cookie
    *
    * Creates an unmapped window as child of the specified \a parent window. A
    * CreateNotify event will be generated. The new window is placed on top in the
    * stacking order with respect to siblings.
    *
    * The coordinate system has the X axis horizontal and the Y axis vertical with
    * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
    * of pixels, and coincide with pixel centers. Each window and pixmap has its own
    * coordinate system. For a window, the origin is inside the border at the inside,
    * upper-left corner.
    *
    * The created window is not yet displayed (mapped), call `xcb_map_window` to
    * display it.
    *
    * The created window will initially use the same cursor as its parent.
    *
    */
    xcb_create_window_aux:                                #type (c: *xcb_connection_t, depth: u8, wid: xcb_window_t, parent: xcb_window_t, x: s16, y: s16, width: u16, height: u16, border_width: u16, _class: xcb_window_class_t, visual: xcb_visualid_t, value_mask: xcb_cw_t, value_list: *xcb_create_window_value_list_t) -> xcb_void_cookie_t #c_call;
    xcb_create_window_value_list:                         #type (R: *xcb_create_window_request_t) -> *void #c_call;
    xcb_change_window_attributes_value_list_serialize:    #type (_buffer: **void, value_mask: u32, _aux: *xcb_change_window_attributes_value_list_t) -> s32 #c_call;
    xcb_change_window_attributes_value_list_unpack:       #type (_buffer: *void, value_mask: u32, _aux: *xcb_change_window_attributes_value_list_t) -> s32 #c_call;
    xcb_change_window_attributes_value_list_sizeof:       #type (_buffer: *void, value_mask: u32) -> s32 #c_call;
    xcb_change_window_attributes_sizeof:                  #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief change window attributes
    *
    * @param c The connection
    * @param window The window to change.
    * @param value_mask A bitmask of #xcb_cw_t values.
    * @param value_mask \n
    * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
    * order has to correspond to the order of possible \a value_mask bits. See the
    * example.
    * @return A cookie
    *
    * Changes the attributes specified by \a value_mask for the specified \a window.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_window_attributes_checked:                 #type (c: *xcb_connection_t, window: xcb_window_t, value_mask: xcb_cw_t, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief change window attributes
    *
    * @param c The connection
    * @param window The window to change.
    * @param value_mask A bitmask of #xcb_cw_t values.
    * @param value_mask \n
    * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
    * order has to correspond to the order of possible \a value_mask bits. See the
    * example.
    * @return A cookie
    *
    * Changes the attributes specified by \a value_mask for the specified \a window.
    *
    */
    xcb_change_window_attributes:                         #type (c: *xcb_connection_t, window: xcb_window_t, value_mask: xcb_cw_t, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief change window attributes
    *
    * @param c The connection
    * @param window The window to change.
    * @param value_mask A bitmask of #xcb_cw_t values.
    * @param value_mask \n
    * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
    * order has to correspond to the order of possible \a value_mask bits. See the
    * example.
    * @return A cookie
    *
    * Changes the attributes specified by \a value_mask for the specified \a window.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_window_attributes_aux_checked:             #type (c: *xcb_connection_t, window: xcb_window_t, value_mask: xcb_cw_t, value_list: *xcb_change_window_attributes_value_list_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief change window attributes
    *
    * @param c The connection
    * @param window The window to change.
    * @param value_mask A bitmask of #xcb_cw_t values.
    * @param value_mask \n
    * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
    * order has to correspond to the order of possible \a value_mask bits. See the
    * example.
    * @return A cookie
    *
    * Changes the attributes specified by \a value_mask for the specified \a window.
    *
    */
    xcb_change_window_attributes_aux:                     #type (c: *xcb_connection_t, window: xcb_window_t, value_mask: xcb_cw_t, value_list: *xcb_change_window_attributes_value_list_t) -> xcb_void_cookie_t #c_call;
    xcb_change_window_attributes_value_list:              #type (R: *xcb_change_window_attributes_request_t) -> *void #c_call;
    /**
    * @brief Gets window attributes
    *
    * @param c The connection
    * @param window The window to get the attributes from.
    * @return A cookie
    *
    * Gets the current attributes for the specified \a window.
    *
    */
    xcb_get_window_attributes:                            #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_get_window_attributes_cookie_t #c_call;
    /**
    * @brief Gets window attributes
    *
    * @param c The connection
    * @param window The window to get the attributes from.
    * @return A cookie
    *
    * Gets the current attributes for the specified \a window.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_window_attributes_unchecked:                  #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_get_window_attributes_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_window_attributes_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_window_attributes_reply:                      #type (c: *xcb_connection_t, cookie: xcb_get_window_attributes_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_window_attributes_reply_t #c_call;
    /**
    * @brief Destroys a window
    *
    * @param c The connection
    * @param window The window to destroy.
    * @return A cookie
    *
    * Destroys the specified window and all of its subwindows. A DestroyNotify event
    * is generated for each destroyed window (a DestroyNotify event is first generated
    * for any given window's inferiors). If the window was mapped, it will be
    * automatically unmapped before destroying.
    *
    * Calling DestroyWindow on the root window will do nothing.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_destroy_window_checked:                           #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Destroys a window
    *
    * @param c The connection
    * @param window The window to destroy.
    * @return A cookie
    *
    * Destroys the specified window and all of its subwindows. A DestroyNotify event
    * is generated for each destroyed window (a DestroyNotify event is first generated
    * for any given window's inferiors). If the window was mapped, it will be
    * automatically unmapped before destroying.
    *
    * Calling DestroyWindow on the root window will do nothing.
    *
    */
    xcb_destroy_window:                                   #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_destroy_subwindows_checked:                       #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_destroy_subwindows:                               #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Changes a client's save set
    *
    * @param c The connection
    * @param mode A bitmask of #xcb_set_mode_t values.
    * @param mode Insert to add the specified window to the save set or Delete to delete it from the save set.
    * @param window The window to add or delete to/from your save set.
    * @return A cookie
    *
    * TODO: explain what the save set is for.
    *
    * This function either adds or removes the specified window to the client's (your
    * application's) save set.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_save_set_checked:                          #type (c: *xcb_connection_t, mode: u8, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Changes a client's save set
    *
    * @param c The connection
    * @param mode A bitmask of #xcb_set_mode_t values.
    * @param mode Insert to add the specified window to the save set or Delete to delete it from the save set.
    * @param window The window to add or delete to/from your save set.
    * @return A cookie
    *
    * TODO: explain what the save set is for.
    *
    * This function either adds or removes the specified window to the client's (your
    * application's) save set.
    *
    */
    xcb_change_save_set:                                  #type (c: *xcb_connection_t, mode: u8, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Reparents a window
    *
    * @param c The connection
    * @param window The window to reparent.
    * @param parent The new parent of the window.
    * @param x The X position of the window within its new parent.
    * @param y The Y position of the window within its new parent.
    * @return A cookie
    *
    * Makes the specified window a child of the specified parent window. If the
    * window is mapped, it will automatically be unmapped before reparenting and
    * re-mapped after reparenting. The window is placed in the stacking order on top
    * with respect to sibling windows.
    *
    * After reparenting, a ReparentNotify event is generated.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_reparent_window_checked:                          #type (c: *xcb_connection_t, window: xcb_window_t, parent: xcb_window_t, x: s16, y: s16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Reparents a window
    *
    * @param c The connection
    * @param window The window to reparent.
    * @param parent The new parent of the window.
    * @param x The X position of the window within its new parent.
    * @param y The Y position of the window within its new parent.
    * @return A cookie
    *
    * Makes the specified window a child of the specified parent window. If the
    * window is mapped, it will automatically be unmapped before reparenting and
    * re-mapped after reparenting. The window is placed in the stacking order on top
    * with respect to sibling windows.
    *
    * After reparenting, a ReparentNotify event is generated.
    *
    */
    xcb_reparent_window:                                  #type (c: *xcb_connection_t, window: xcb_window_t, parent: xcb_window_t, x: s16, y: s16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Makes a window visible
    *
    * @param c The connection
    * @param window The window to make visible.
    * @return A cookie
    *
    * Maps the specified window. This means making the window visible (as long as its
    * parent is visible).
    *
    * This MapWindow request will be translated to a MapRequest request if a window
    * manager is running. The window manager then decides to either map the window or
    * not. Set the override-redirect window attribute to true if you want to bypass
    * this mechanism.
    *
    * If the window manager decides to map the window (or if no window manager is
    * running), a MapNotify event is generated.
    *
    * If the window becomes viewable and no earlier contents for it are remembered,
    * the X server tiles the window with its background. If the window's background
    * is undefined, the existing screen contents are not altered, and the X server
    * generates zero or more Expose events.
    *
    * If the window type is InputOutput, an Expose event will be generated when the
    * window becomes visible. The normal response to an Expose event should be to
    * repaint the window.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_map_window_checked:                               #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Makes a window visible
    *
    * @param c The connection
    * @param window The window to make visible.
    * @return A cookie
    *
    * Maps the specified window. This means making the window visible (as long as its
    * parent is visible).
    *
    * This MapWindow request will be translated to a MapRequest request if a window
    * manager is running. The window manager then decides to either map the window or
    * not. Set the override-redirect window attribute to true if you want to bypass
    * this mechanism.
    *
    * If the window manager decides to map the window (or if no window manager is
    * running), a MapNotify event is generated.
    *
    * If the window becomes viewable and no earlier contents for it are remembered,
    * the X server tiles the window with its background. If the window's background
    * is undefined, the existing screen contents are not altered, and the X server
    * generates zero or more Expose events.
    *
    * If the window type is InputOutput, an Expose event will be generated when the
    * window becomes visible. The normal response to an Expose event should be to
    * repaint the window.
    *
    */
    xcb_map_window:                                       #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_map_subwindows_checked:                           #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_map_subwindows:                                   #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Makes a window invisible
    *
    * @param c The connection
    * @param window The window to make invisible.
    * @return A cookie
    *
    * Unmaps the specified window. This means making the window invisible (and all
    * its child windows).
    *
    * Unmapping a window leads to the `UnmapNotify` event being generated. Also,
    * `Expose` events are generated for formerly obscured windows.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_unmap_window_checked:                             #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Makes a window invisible
    *
    * @param c The connection
    * @param window The window to make invisible.
    * @return A cookie
    *
    * Unmaps the specified window. This means making the window invisible (and all
    * its child windows).
    *
    * Unmapping a window leads to the `UnmapNotify` event being generated. Also,
    * `Expose` events are generated for formerly obscured windows.
    *
    */
    xcb_unmap_window:                                     #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_unmap_subwindows_checked:                         #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_unmap_subwindows:                                 #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    xcb_configure_window_value_list_serialize:            #type (_buffer: **void, value_mask: u16, _aux: *xcb_configure_window_value_list_t) -> s32 #c_call;
    xcb_configure_window_value_list_unpack:               #type (_buffer: *void, value_mask: u16, _aux: *xcb_configure_window_value_list_t) -> s32 #c_call;
    xcb_configure_window_value_list_sizeof:               #type (_buffer: *void, value_mask: u16) -> s32 #c_call;
    xcb_configure_window_sizeof:                          #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief Configures window attributes
    *
    * @param c The connection
    * @param window The window to configure.
    * @param value_mask Bitmask of attributes to change.
    * @param value_list New values, corresponding to the attributes in value_mask. The order has to
    * correspond to the order of possible \a value_mask bits. See the example.
    * @return A cookie
    *
    * Configures a window's size, position, border width and stacking order.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_configure_window_checked:                         #type (c: *xcb_connection_t, window: xcb_window_t, value_mask: u16, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Configures window attributes
    *
    * @param c The connection
    * @param window The window to configure.
    * @param value_mask Bitmask of attributes to change.
    * @param value_list New values, corresponding to the attributes in value_mask. The order has to
    * correspond to the order of possible \a value_mask bits. See the example.
    * @return A cookie
    *
    * Configures a window's size, position, border width and stacking order.
    *
    */
    xcb_configure_window:                                 #type (c: *xcb_connection_t, window: xcb_window_t, value_mask: u16, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Configures window attributes
    *
    * @param c The connection
    * @param window The window to configure.
    * @param value_mask Bitmask of attributes to change.
    * @param value_list New values, corresponding to the attributes in value_mask. The order has to
    * correspond to the order of possible \a value_mask bits. See the example.
    * @return A cookie
    *
    * Configures a window's size, position, border width and stacking order.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_configure_window_aux_checked:                     #type (c: *xcb_connection_t, window: xcb_window_t, value_mask: u16, value_list: *xcb_configure_window_value_list_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Configures window attributes
    *
    * @param c The connection
    * @param window The window to configure.
    * @param value_mask Bitmask of attributes to change.
    * @param value_list New values, corresponding to the attributes in value_mask. The order has to
    * correspond to the order of possible \a value_mask bits. See the example.
    * @return A cookie
    *
    * Configures a window's size, position, border width and stacking order.
    *
    */
    xcb_configure_window_aux:                             #type (c: *xcb_connection_t, window: xcb_window_t, value_mask: u16, value_list: *xcb_configure_window_value_list_t) -> xcb_void_cookie_t #c_call;
    xcb_configure_window_value_list:                      #type (R: *xcb_configure_window_request_t) -> *void #c_call;
    /**
    * @brief Change window stacking order
    *
    * @param c The connection
    * @param direction A bitmask of #xcb_circulate_t values.
    * @param direction \n
    * @param window The window to raise/lower (depending on \a direction).
    * @return A cookie
    *
    * If \a direction is `XCB_CIRCULATE_RAISE_LOWEST`, the lowest mapped child (if
    * any) will be raised to the top of the stack.
    *
    * If \a direction is `XCB_CIRCULATE_LOWER_HIGHEST`, the highest mapped child will
    * be lowered to the bottom of the stack.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_circulate_window_checked:                         #type (c: *xcb_connection_t, direction: u8, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Change window stacking order
    *
    * @param c The connection
    * @param direction A bitmask of #xcb_circulate_t values.
    * @param direction \n
    * @param window The window to raise/lower (depending on \a direction).
    * @return A cookie
    *
    * If \a direction is `XCB_CIRCULATE_RAISE_LOWEST`, the lowest mapped child (if
    * any) will be raised to the top of the stack.
    *
    * If \a direction is `XCB_CIRCULATE_LOWER_HIGHEST`, the highest mapped child will
    * be lowered to the bottom of the stack.
    *
    */
    xcb_circulate_window:                                 #type (c: *xcb_connection_t, direction: u8, window: xcb_window_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Get current window geometry
    *
    * @param c The connection
    * @param drawable The drawable (`Window` or `Pixmap`) of which the geometry will be received.
    * @return A cookie
    *
    * Gets the current geometry of the specified drawable (either `Window` or `Pixmap`).
    *
    */
    xcb_get_geometry:                                     #type (c: *xcb_connection_t, drawable: xcb_drawable_t) -> xcb_get_geometry_cookie_t #c_call;
    /**
    * @brief Get current window geometry
    *
    * @param c The connection
    * @param drawable The drawable (`Window` or `Pixmap`) of which the geometry will be received.
    * @return A cookie
    *
    * Gets the current geometry of the specified drawable (either `Window` or `Pixmap`).
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_geometry_unchecked:                           #type (c: *xcb_connection_t, drawable: xcb_drawable_t) -> xcb_get_geometry_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_geometry_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_geometry_reply:                               #type (c: *xcb_connection_t, cookie: xcb_get_geometry_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_geometry_reply_t #c_call;
    xcb_query_tree_sizeof:                                #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief query the window tree
    *
    * @param c The connection
    * @param window The \a window to query.
    * @return A cookie
    *
    * Gets the root window ID, parent window ID and list of children windows for the
    * specified \a window. The children are listed in bottom-to-top stacking order.
    *
    */
    xcb_query_tree:                                       #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_query_tree_cookie_t #c_call;
    /**
    * @brief query the window tree
    *
    * @param c The connection
    * @param window The \a window to query.
    * @return A cookie
    *
    * Gets the root window ID, parent window ID and list of children windows for the
    * specified \a window. The children are listed in bottom-to-top stacking order.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_query_tree_unchecked:                             #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_query_tree_cookie_t #c_call;
    xcb_query_tree_children:                              #type (R: *xcb_query_tree_reply_t) -> *xcb_window_t #c_call;
    xcb_query_tree_children_length:                       #type (R: *xcb_query_tree_reply_t) -> s32 #c_call;
    xcb_query_tree_children_end:                          #type (R: *xcb_query_tree_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_query_tree_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_query_tree_reply:                                 #type (c: *xcb_connection_t, cookie: xcb_query_tree_cookie_t, e: **xcb_generic_error_t) -> *xcb_query_tree_reply_t #c_call;
    xcb_intern_atom_sizeof:                               #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief Get atom identifier by name
    *
    * @param c The connection
    * @param only_if_exists Return a valid atom id only if the atom already exists.
    * @param name_len The length of the following \a name.
    * @param name The name of the atom.
    * @return A cookie
    *
    * Retrieves the identifier (xcb_atom_t TODO) for the atom with the specified
    * name. Atoms are used in protocols like EWMH, for example to store window titles
    * (`_NET_WM_NAME` atom) as property of a window.
    *
    * If \a only_if_exists is 0, the atom will be created if it does not already exist.
    * If \a only_if_exists is 1, `XCB_ATOM_NONE` will be returned if the atom does
    * not yet exist.
    *
    */
    xcb_intern_atom:                                      #type (c: *xcb_connection_t, only_if_exists: u8, name_len: u16, name: *u8) -> xcb_intern_atom_cookie_t #c_call;
    /**
    * @brief Get atom identifier by name
    *
    * @param c The connection
    * @param only_if_exists Return a valid atom id only if the atom already exists.
    * @param name_len The length of the following \a name.
    * @param name The name of the atom.
    * @return A cookie
    *
    * Retrieves the identifier (xcb_atom_t TODO) for the atom with the specified
    * name. Atoms are used in protocols like EWMH, for example to store window titles
    * (`_NET_WM_NAME` atom) as property of a window.
    *
    * If \a only_if_exists is 0, the atom will be created if it does not already exist.
    * If \a only_if_exists is 1, `XCB_ATOM_NONE` will be returned if the atom does
    * not yet exist.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_intern_atom_unchecked:                            #type (c: *xcb_connection_t, only_if_exists: u8, name_len: u16, name: *u8) -> xcb_intern_atom_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_intern_atom_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_intern_atom_reply:                                #type (c: *xcb_connection_t, cookie: xcb_intern_atom_cookie_t, e: **xcb_generic_error_t) -> *xcb_intern_atom_reply_t #c_call;
    xcb_get_atom_name_sizeof:                             #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_atom_name:                                    #type (c: *xcb_connection_t, atom: xcb_atom_t) -> xcb_get_atom_name_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_atom_name_unchecked:                          #type (c: *xcb_connection_t, atom: xcb_atom_t) -> xcb_get_atom_name_cookie_t #c_call;
    xcb_get_atom_name_name:                               #type (R: *xcb_get_atom_name_reply_t) -> *u8 #c_call;
    xcb_get_atom_name_name_length:                        #type (R: *xcb_get_atom_name_reply_t) -> s32 #c_call;
    xcb_get_atom_name_name_end:                           #type (R: *xcb_get_atom_name_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_atom_name_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_atom_name_reply:                              #type (c: *xcb_connection_t, cookie: xcb_get_atom_name_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_atom_name_reply_t #c_call;
    xcb_change_property_sizeof:                           #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief Changes a window property
    *
    * @param c The connection
    * @param mode A bitmask of #xcb_prop_mode_t values.
    * @param mode \n
    * @param window The window whose property you want to change.
    * @param property The property you want to change (an atom).
    * @param type The type of the property you want to change (an atom).
    * @param format Specifies whether the data should be viewed as a list of 8-bit, 16-bit or
    * 32-bit quantities. Possible values are 8, 16 and 32. This information allows
    * the X server to correctly perform byte-swap operations as necessary.
    * @param data_len Specifies the number of elements (see \a format).
    * @param data The property data.
    * @return A cookie
    *
    * Sets or updates a property on the specified \a window. Properties are for
    * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
    * Protocols such as EWMH also use properties - for example EWMH defines the
    * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_property_checked:                          #type (c: *xcb_connection_t, mode: xcb_prop_mode_t, window: xcb_window_t, property: xcb_atom_t, type: xcb_atom_t, format: u8, data_len: u32, data: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Changes a window property
    *
    * @param c The connection
    * @param mode A bitmask of #xcb_prop_mode_t values.
    * @param mode \n
    * @param window The window whose property you want to change.
    * @param property The property you want to change (an atom).
    * @param type The type of the property you want to change (an atom).
    * @param format Specifies whether the data should be viewed as a list of 8-bit, 16-bit or
    * 32-bit quantities. Possible values are 8, 16 and 32. This information allows
    * the X server to correctly perform byte-swap operations as necessary.
    * @param data_len Specifies the number of elements (see \a format).
    * @param data The property data.
    * @return A cookie
    *
    * Sets or updates a property on the specified \a window. Properties are for
    * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
    * Protocols such as EWMH also use properties - for example EWMH defines the
    * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
    *
    */
    xcb_change_property:                                  #type (c: *xcb_connection_t, mode: xcb_prop_mode_t, window: xcb_window_t, property: xcb_atom_t, type: xcb_atom_t, format: u8, data_len: u32, data: *void) -> xcb_void_cookie_t #c_call;
    xcb_change_property_data:                             #type (R: *xcb_change_property_request_t) -> *void #c_call;
    xcb_change_property_data_length:                      #type (R: *xcb_change_property_request_t) -> s32 #c_call;
    xcb_change_property_data_end:                         #type (R: *xcb_change_property_request_t) -> xcb_generic_iterator_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_delete_property_checked:                          #type (c: *xcb_connection_t, window: xcb_window_t, property: xcb_atom_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_delete_property:                                  #type (c: *xcb_connection_t, window: xcb_window_t, property: xcb_atom_t) -> xcb_void_cookie_t #c_call;
    xcb_get_property_sizeof:                              #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief Gets a window property
    *
    * @param c The connection
    * @param _delete Whether the property should actually be deleted. For deleting a property, the
    * specified \a type has to match the actual property type.
    * @param window The window whose property you want to get.
    * @param property The property you want to get (an atom).
    * @param type The type of the property you want to get (an atom).
    * @param long_offset Specifies the offset (in 32-bit multiples) in the specified property where the
    * data is to be retrieved.
    * @param long_length Specifies how many 32-bit multiples of data should be retrieved (e.g. if you
    * set \a long_length to 4, you will receive 16 bytes of data).
    * @return A cookie
    *
    * Gets the specified \a property from the specified \a window. Properties are for
    * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
    * Protocols such as EWMH also use properties - for example EWMH defines the
    * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
    *
    * TODO: talk about \a type
    *
    * TODO: talk about `delete`
    *
    * TODO: talk about the offset/length thing. what's a valid use case?
    *
    */
    xcb_get_property:                                     #type (c: *xcb_connection_t, _delete: u8, window: xcb_window_t, property: xcb_atom_t, type: xcb_atom_t, long_offset: u32, long_length: u32) -> xcb_get_property_cookie_t #c_call;
    /**
    * @brief Gets a window property
    *
    * @param c The connection
    * @param _delete Whether the property should actually be deleted. For deleting a property, the
    * specified \a type has to match the actual property type.
    * @param window The window whose property you want to get.
    * @param property The property you want to get (an atom).
    * @param type The type of the property you want to get (an atom).
    * @param long_offset Specifies the offset (in 32-bit multiples) in the specified property where the
    * data is to be retrieved.
    * @param long_length Specifies how many 32-bit multiples of data should be retrieved (e.g. if you
    * set \a long_length to 4, you will receive 16 bytes of data).
    * @return A cookie
    *
    * Gets the specified \a property from the specified \a window. Properties are for
    * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
    * Protocols such as EWMH also use properties - for example EWMH defines the
    * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
    *
    * TODO: talk about \a type
    *
    * TODO: talk about `delete`
    *
    * TODO: talk about the offset/length thing. what's a valid use case?
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_property_unchecked:                           #type (c: *xcb_connection_t, _delete: u8, window: xcb_window_t, property: xcb_atom_t, type: xcb_atom_t, long_offset: u32, long_length: u32) -> xcb_get_property_cookie_t #c_call;
    xcb_get_property_value:                               #type (R: *xcb_get_property_reply_t) -> *void #c_call;
    xcb_get_property_value_length:                        #type (R: *xcb_get_property_reply_t) -> s32 #c_call;
    xcb_get_property_value_end:                           #type (R: *xcb_get_property_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_property_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_property_reply:                               #type (c: *xcb_connection_t, cookie: xcb_get_property_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_property_reply_t #c_call;
    xcb_list_properties_sizeof:                           #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_list_properties:                                  #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_list_properties_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_list_properties_unchecked:                        #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_list_properties_cookie_t #c_call;
    xcb_list_properties_atoms:                            #type (R: *xcb_list_properties_reply_t) -> *xcb_atom_t #c_call;
    xcb_list_properties_atoms_length:                     #type (R: *xcb_list_properties_reply_t) -> s32 #c_call;
    xcb_list_properties_atoms_end:                        #type (R: *xcb_list_properties_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_list_properties_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_list_properties_reply:                            #type (c: *xcb_connection_t, cookie: xcb_list_properties_cookie_t, e: **xcb_generic_error_t) -> *xcb_list_properties_reply_t #c_call;
    /**
    * @brief Sets the owner of a selection
    *
    * @param c The connection
    * @param owner The new owner of the selection.
    * \n
    * The special value `XCB_NONE` means that the selection will have no owner.
    * @param selection The selection.
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The selection will not be changed if \a time is earlier than the current
    * last-change time of the \a selection or is later than the current X server time.
    * Otherwise, the last-change time is set to the specified time.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @return A cookie
    *
    * Makes `window` the owner of the selection \a selection and updates the
    * last-change time of the specified selection.
    *
    * TODO: briefly explain what a selection is.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_set_selection_owner_checked:                      #type (c: *xcb_connection_t, owner: xcb_window_t, selection: xcb_atom_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Sets the owner of a selection
    *
    * @param c The connection
    * @param owner The new owner of the selection.
    * \n
    * The special value `XCB_NONE` means that the selection will have no owner.
    * @param selection The selection.
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The selection will not be changed if \a time is earlier than the current
    * last-change time of the \a selection or is later than the current X server time.
    * Otherwise, the last-change time is set to the specified time.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @return A cookie
    *
    * Makes `window` the owner of the selection \a selection and updates the
    * last-change time of the specified selection.
    *
    * TODO: briefly explain what a selection is.
    *
    */
    xcb_set_selection_owner:                              #type (c: *xcb_connection_t, owner: xcb_window_t, selection: xcb_atom_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Gets the owner of a selection
    *
    * @param c The connection
    * @param selection The selection.
    * @return A cookie
    *
    * Gets the owner of the specified selection.
    *
    * TODO: briefly explain what a selection is.
    *
    */
    xcb_get_selection_owner:                              #type (c: *xcb_connection_t, selection: xcb_atom_t) -> xcb_get_selection_owner_cookie_t #c_call;
    /**
    * @brief Gets the owner of a selection
    *
    * @param c The connection
    * @param selection The selection.
    * @return A cookie
    *
    * Gets the owner of the specified selection.
    *
    * TODO: briefly explain what a selection is.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_selection_owner_unchecked:                    #type (c: *xcb_connection_t, selection: xcb_atom_t) -> xcb_get_selection_owner_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_selection_owner_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_selection_owner_reply:                        #type (c: *xcb_connection_t, cookie: xcb_get_selection_owner_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_selection_owner_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_convert_selection_checked:                        #type (c: *xcb_connection_t, requestor: xcb_window_t, selection: xcb_atom_t, target: xcb_atom_t, property: xcb_atom_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_convert_selection:                                #type (c: *xcb_connection_t, requestor: xcb_window_t, selection: xcb_atom_t, target: xcb_atom_t, property: xcb_atom_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief send an event
    *
    * @param c The connection
    * @param propagate If \a propagate is true and no clients have selected any event on \a destination,
    * the destination is replaced with the closest ancestor of \a destination for
    * which some client has selected a type in \a event_mask and for which no
    * intervening window has that type in its do-not-propagate-mask. If no such
    * window exists or if the window is an ancestor of the focus window and
    * `InputFocus` was originally specified as the destination, the event is not sent
    * to any clients. Otherwise, the event is reported to every client selecting on
    * the final destination any of the types specified in \a event_mask.
    * @param destination The window to send this event to. Every client which selects any event within
    * \a event_mask on \a destination will get the event.
    * \n
    * The special value `XCB_SEND_EVENT_DEST_POINTER_WINDOW` refers to the window
    * that contains the mouse pointer.
    * \n
    * The special value `XCB_SEND_EVENT_DEST_ITEM_FOCUS` refers to the window which
    * has the keyboard focus.
    * @param event_mask Event_mask for determining which clients should receive the specified event.
    * See \a destination and \a propagate.
    * @param event The event to send to the specified \a destination.
    * @return A cookie
    *
    * Identifies the \a destination window, determines which clients should receive
    * the specified event and ignores any active grabs.
    *
    * The \a event must be one of the core events or an event defined by an extension,
    * so that the X server can correctly byte-swap the contents as necessary. The
    * contents of \a event are otherwise unaltered and unchecked except for the
    * `send_event` field which is forced to 'true'.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_send_event_checked:                               #type (c: *xcb_connection_t, propagate: u8, destination: xcb_window_t, event_mask: u32, event: *u8) -> xcb_void_cookie_t #c_call;
    /**
    * @brief send an event
    *
    * @param c The connection
    * @param propagate If \a propagate is true and no clients have selected any event on \a destination,
    * the destination is replaced with the closest ancestor of \a destination for
    * which some client has selected a type in \a event_mask and for which no
    * intervening window has that type in its do-not-propagate-mask. If no such
    * window exists or if the window is an ancestor of the focus window and
    * `InputFocus` was originally specified as the destination, the event is not sent
    * to any clients. Otherwise, the event is reported to every client selecting on
    * the final destination any of the types specified in \a event_mask.
    * @param destination The window to send this event to. Every client which selects any event within
    * \a event_mask on \a destination will get the event.
    * \n
    * The special value `XCB_SEND_EVENT_DEST_POINTER_WINDOW` refers to the window
    * that contains the mouse pointer.
    * \n
    * The special value `XCB_SEND_EVENT_DEST_ITEM_FOCUS` refers to the window which
    * has the keyboard focus.
    * @param event_mask Event_mask for determining which clients should receive the specified event.
    * See \a destination and \a propagate.
    * @param event The event to send to the specified \a destination.
    * @return A cookie
    *
    * Identifies the \a destination window, determines which clients should receive
    * the specified event and ignores any active grabs.
    *
    * The \a event must be one of the core events or an event defined by an extension,
    * so that the X server can correctly byte-swap the contents as necessary. The
    * contents of \a event are otherwise unaltered and unchecked except for the
    * `send_event` field which is forced to 'true'.
    *
    */
    xcb_send_event:                                       #type (c: *xcb_connection_t, propagate: u8, destination: xcb_window_t, event_mask: u32, event: *u8) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Grab the pointer
    *
    * @param c The connection
    * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
    * reported to the \a grab_window.
    * @param grab_window Specifies the window on which the pointer should be grabbed.
    * @param event_mask Specifies which pointer events are reported to the client.
    * \n
    * TODO: which values?
    * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
    * @param pointer_mode \n
    * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
    * @param keyboard_mode \n
    * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
    * move the pointer out of that window).
    * \n
    * The special value `XCB_NONE` means don't confine the pointer.
    * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
    * cursor.
    * @param time The time argument allows you to avoid certain circumstances that come up if
    * applications take a long time to respond or if there are long network delays.
    * Consider a situation where you have two applications, both of which normally
    * grab the pointer when clicked on. If both applications specify the timestamp
    * from the event, the second application may wake up faster and successfully grab
    * the pointer before the first application. The first application then will get
    * an indication that the other application grabbed the pointer before its request
    * was processed.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @return A cookie
    *
    * Actively grabs control of the pointer. Further pointer events are reported only to the grabbing client. Overrides any active pointer grab by this client.
    *
    */
    xcb_grab_pointer:                                     #type (c: *xcb_connection_t, owner_events: u8, grab_window: xcb_window_t, event_mask: u16, pointer_mode: u8, keyboard_mode: u8, confine_to: xcb_window_t, cursor: xcb_cursor_t, time: xcb_timestamp_t) -> xcb_grab_pointer_cookie_t #c_call;
    /**
    * @brief Grab the pointer
    *
    * @param c The connection
    * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
    * reported to the \a grab_window.
    * @param grab_window Specifies the window on which the pointer should be grabbed.
    * @param event_mask Specifies which pointer events are reported to the client.
    * \n
    * TODO: which values?
    * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
    * @param pointer_mode \n
    * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
    * @param keyboard_mode \n
    * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
    * move the pointer out of that window).
    * \n
    * The special value `XCB_NONE` means don't confine the pointer.
    * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
    * cursor.
    * @param time The time argument allows you to avoid certain circumstances that come up if
    * applications take a long time to respond or if there are long network delays.
    * Consider a situation where you have two applications, both of which normally
    * grab the pointer when clicked on. If both applications specify the timestamp
    * from the event, the second application may wake up faster and successfully grab
    * the pointer before the first application. The first application then will get
    * an indication that the other application grabbed the pointer before its request
    * was processed.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @return A cookie
    *
    * Actively grabs control of the pointer. Further pointer events are reported only to the grabbing client. Overrides any active pointer grab by this client.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_grab_pointer_unchecked:                           #type (c: *xcb_connection_t, owner_events: u8, grab_window: xcb_window_t, event_mask: u16, pointer_mode: u8, keyboard_mode: u8, confine_to: xcb_window_t, cursor: xcb_cursor_t, time: xcb_timestamp_t) -> xcb_grab_pointer_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_grab_pointer_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_grab_pointer_reply:                               #type (c: *xcb_connection_t, cookie: xcb_grab_pointer_cookie_t, e: **xcb_generic_error_t) -> *xcb_grab_pointer_reply_t #c_call;
    /**
    * @brief release the pointer
    *
    * @param c The connection
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The pointer will not be released if \a time is earlier than the
    * last-pointer-grab time or later than the current X server time.
    * @return A cookie
    *
    * Releases the pointer and any queued events if you actively grabbed the pointer
    * before using `xcb_grab_pointer`, `xcb_grab_button` or within a normal button
    * press.
    *
    * EnterNotify and LeaveNotify events are generated.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_ungrab_pointer_checked:                           #type (c: *xcb_connection_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief release the pointer
    *
    * @param c The connection
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The pointer will not be released if \a time is earlier than the
    * last-pointer-grab time or later than the current X server time.
    * @return A cookie
    *
    * Releases the pointer and any queued events if you actively grabbed the pointer
    * before using `xcb_grab_pointer`, `xcb_grab_button` or within a normal button
    * press.
    *
    * EnterNotify and LeaveNotify events are generated.
    *
    */
    xcb_ungrab_pointer:                                   #type (c: *xcb_connection_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Grab pointer button(s)
    *
    * @param c The connection
    * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
    * reported to the \a grab_window.
    * @param grab_window Specifies the window on which the pointer should be grabbed.
    * @param event_mask Specifies which pointer events are reported to the client.
    * \n
    * TODO: which values?
    * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
    * @param pointer_mode \n
    * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
    * @param keyboard_mode \n
    * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
    * move the pointer out of that window).
    * \n
    * The special value `XCB_NONE` means don't confine the pointer.
    * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
    * cursor.
    * @param button A bitmask of #xcb_button_index_t values.
    * @param button \n
    * @param modifiers The modifiers to grab.
    * \n
    * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
    * possible modifier combinations.
    * @return A cookie
    *
    * This request establishes a passive grab. The pointer is actively grabbed as
    * described in GrabPointer, the last-pointer-grab time is set to the time at
    * which the button was pressed (as transmitted in the ButtonPress event), and the
    * ButtonPress event is reported if all of the following conditions are true:
    *
    * The pointer is not grabbed and the specified button is logically pressed when
    * the specified modifier keys are logically down, and no other buttons or
    * modifier keys are logically down.
    *
    * The grab-window contains the pointer.
    *
    * The confine-to window (if any) is viewable.
    *
    * A passive grab on the same button/key combination does not exist on any
    * ancestor of grab-window.
    *
    * The interpretation of the remaining arguments is the same as for GrabPointer.
    * The active grab is terminated automatically when the logical state of the
    * pointer has all buttons released, independent of the logical state of modifier
    * keys. Note that the logical state of a device (as seen by means of the
    * protocol) may lag the physical state if device event processing is frozen. This
    * request overrides all previous passive grabs by the same client on the same
    * button/key combinations on the same window. A modifier of AnyModifier is
    * equivalent to issuing the request for all possible modifier combinations
    * (including the combination of no modifiers). It is not required that all
    * specified modifiers have currently assigned keycodes. A button of AnyButton is
    * equivalent to issuing the request for all possible buttons. Otherwise, it is
    * not required that the button specified currently be assigned to a physical
    * button.
    *
    * An Access error is generated if some other client has already issued a
    * GrabButton request with the same button/key combination on the same window.
    * When using AnyModifier or AnyButton, the request fails completely (no grabs are
    * established), and an Access error is generated if there is a conflicting grab
    * for any combination. The request has no effect on an active grab.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_grab_button_checked:                              #type (c: *xcb_connection_t, owner_events: u8, grab_window: xcb_window_t, event_mask: u16, pointer_mode: u8, keyboard_mode: u8, confine_to: xcb_window_t, cursor: xcb_cursor_t, button: u8, modifiers: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Grab pointer button(s)
    *
    * @param c The connection
    * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
    * reported to the \a grab_window.
    * @param grab_window Specifies the window on which the pointer should be grabbed.
    * @param event_mask Specifies which pointer events are reported to the client.
    * \n
    * TODO: which values?
    * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
    * @param pointer_mode \n
    * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
    * @param keyboard_mode \n
    * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
    * move the pointer out of that window).
    * \n
    * The special value `XCB_NONE` means don't confine the pointer.
    * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
    * cursor.
    * @param button A bitmask of #xcb_button_index_t values.
    * @param button \n
    * @param modifiers The modifiers to grab.
    * \n
    * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
    * possible modifier combinations.
    * @return A cookie
    *
    * This request establishes a passive grab. The pointer is actively grabbed as
    * described in GrabPointer, the last-pointer-grab time is set to the time at
    * which the button was pressed (as transmitted in the ButtonPress event), and the
    * ButtonPress event is reported if all of the following conditions are true:
    *
    * The pointer is not grabbed and the specified button is logically pressed when
    * the specified modifier keys are logically down, and no other buttons or
    * modifier keys are logically down.
    *
    * The grab-window contains the pointer.
    *
    * The confine-to window (if any) is viewable.
    *
    * A passive grab on the same button/key combination does not exist on any
    * ancestor of grab-window.
    *
    * The interpretation of the remaining arguments is the same as for GrabPointer.
    * The active grab is terminated automatically when the logical state of the
    * pointer has all buttons released, independent of the logical state of modifier
    * keys. Note that the logical state of a device (as seen by means of the
    * protocol) may lag the physical state if device event processing is frozen. This
    * request overrides all previous passive grabs by the same client on the same
    * button/key combinations on the same window. A modifier of AnyModifier is
    * equivalent to issuing the request for all possible modifier combinations
    * (including the combination of no modifiers). It is not required that all
    * specified modifiers have currently assigned keycodes. A button of AnyButton is
    * equivalent to issuing the request for all possible buttons. Otherwise, it is
    * not required that the button specified currently be assigned to a physical
    * button.
    *
    * An Access error is generated if some other client has already issued a
    * GrabButton request with the same button/key combination on the same window.
    * When using AnyModifier or AnyButton, the request fails completely (no grabs are
    * established), and an Access error is generated if there is a conflicting grab
    * for any combination. The request has no effect on an active grab.
    *
    */
    xcb_grab_button:                                      #type (c: *xcb_connection_t, owner_events: u8, grab_window: xcb_window_t, event_mask: u16, pointer_mode: u8, keyboard_mode: u8, confine_to: xcb_window_t, cursor: xcb_cursor_t, button: u8, modifiers: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_ungrab_button_checked:                            #type (c: *xcb_connection_t, button: u8, grab_window: xcb_window_t, modifiers: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_ungrab_button:                                    #type (c: *xcb_connection_t, button: u8, grab_window: xcb_window_t, modifiers: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_active_pointer_grab_checked:               #type (c: *xcb_connection_t, cursor: xcb_cursor_t, time: xcb_timestamp_t, event_mask: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_change_active_pointer_grab:                       #type (c: *xcb_connection_t, cursor: xcb_cursor_t, time: xcb_timestamp_t, event_mask: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Grab the keyboard
    *
    * @param c The connection
    * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
    * reported to the \a grab_window.
    * @param grab_window Specifies the window on which the pointer should be grabbed.
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
    * @param pointer_mode \n
    * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
    * @param keyboard_mode \n
    * @return A cookie
    *
    * Actively grabs control of the keyboard and generates FocusIn and FocusOut
    * events. Further key events are reported only to the grabbing client.
    *
    * Any active keyboard grab by this client is overridden. If the keyboard is
    * actively grabbed by some other client, `AlreadyGrabbed` is returned. If
    * \a grab_window is not viewable, `GrabNotViewable` is returned. If the keyboard
    * is frozen by an active grab of another client, `GrabFrozen` is returned. If the
    * specified \a time is earlier than the last-keyboard-grab time or later than the
    * current X server time, `GrabInvalidTime` is returned. Otherwise, the
    * last-keyboard-grab time is set to the specified time.
    *
    */
    xcb_grab_keyboard:                                    #type (c: *xcb_connection_t, owner_events: u8, grab_window: xcb_window_t, time: xcb_timestamp_t, pointer_mode: u8, keyboard_mode: u8) -> xcb_grab_keyboard_cookie_t #c_call;
    /**
    * @brief Grab the keyboard
    *
    * @param c The connection
    * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
    * reported to the \a grab_window.
    * @param grab_window Specifies the window on which the pointer should be grabbed.
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
    * @param pointer_mode \n
    * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
    * @param keyboard_mode \n
    * @return A cookie
    *
    * Actively grabs control of the keyboard and generates FocusIn and FocusOut
    * events. Further key events are reported only to the grabbing client.
    *
    * Any active keyboard grab by this client is overridden. If the keyboard is
    * actively grabbed by some other client, `AlreadyGrabbed` is returned. If
    * \a grab_window is not viewable, `GrabNotViewable` is returned. If the keyboard
    * is frozen by an active grab of another client, `GrabFrozen` is returned. If the
    * specified \a time is earlier than the last-keyboard-grab time or later than the
    * current X server time, `GrabInvalidTime` is returned. Otherwise, the
    * last-keyboard-grab time is set to the specified time.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_grab_keyboard_unchecked:                          #type (c: *xcb_connection_t, owner_events: u8, grab_window: xcb_window_t, time: xcb_timestamp_t, pointer_mode: u8, keyboard_mode: u8) -> xcb_grab_keyboard_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_grab_keyboard_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_grab_keyboard_reply:                              #type (c: *xcb_connection_t, cookie: xcb_grab_keyboard_cookie_t, e: **xcb_generic_error_t) -> *xcb_grab_keyboard_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_ungrab_keyboard_checked:                          #type (c: *xcb_connection_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_ungrab_keyboard:                                  #type (c: *xcb_connection_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Grab keyboard key(s)
    *
    * @param c The connection
    * @param owner_events If 1, the \a grab_window will still get the key events. If 0, events are not
    * reported to the \a grab_window.
    * @param grab_window Specifies the window on which the key should be grabbed.
    * @param modifiers The modifiers to grab.
    * \n
    * Using the special value `XCB_MOD_MASK_ANY` means grab the key with all
    * possible modifier combinations.
    * @param key The keycode of the key to grab.
    * \n
    * The special value `XCB_GRAB_ANY` means grab any key.
    * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
    * @param pointer_mode \n
    * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
    * @param keyboard_mode \n
    * @return A cookie
    *
    * Establishes a passive grab on the keyboard. In the future, the keyboard is
    * actively grabbed (as for `GrabKeyboard`), the last-keyboard-grab time is set to
    * the time at which the key was pressed (as transmitted in the KeyPress event),
    * and the KeyPress event is reported if all of the following conditions are true:
    *
    * The keyboard is not grabbed and the specified key (which can itself be a
    * modifier key) is logically pressed when the specified modifier keys are
    * logically down, and no other modifier keys are logically down.
    *
    * Either the grab_window is an ancestor of (or is) the focus window, or the
    * grab_window is a descendant of the focus window and contains the pointer.
    *
    * A passive grab on the same key combination does not exist on any ancestor of
    * grab_window.
    *
    * The interpretation of the remaining arguments is as for XGrabKeyboard.  The active grab is terminated
    * automatically when the logical state of the keyboard has the specified key released (independent of the
    * logical state of the modifier keys), at which point a KeyRelease event is reported to the grabbing window.
    *
    * Note that the logical state of a device (as seen by client applications) may lag the physical state if
    * device event processing is frozen.
    *
    * A modifiers argument of AnyModifier is equivalent to issuing the request for all possible modifier combinations (including the combination of no modifiers).  It is not required that all modifiers specified
    * have currently assigned KeyCodes.  A keycode argument of AnyKey is equivalent to issuing the request for
    * all possible KeyCodes.  Otherwise, the specified keycode must be in the range specified by min_keycode
    * and max_keycode in the connection setup, or a BadValue error results.
    *
    * If some other client has issued a XGrabKey with the same key combination on the same window, a BadAccess
    * error results.  When using AnyModifier or AnyKey, the request fails completely, and a BadAccess error
    * results (no grabs are established) if there is a conflicting grab for any combination.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_grab_key_checked:                                 #type (c: *xcb_connection_t, owner_events: u8, grab_window: xcb_window_t, modifiers: u16, key: xcb_keycode_t, pointer_mode: u8, keyboard_mode: u8) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Grab keyboard key(s)
    *
    * @param c The connection
    * @param owner_events If 1, the \a grab_window will still get the key events. If 0, events are not
    * reported to the \a grab_window.
    * @param grab_window Specifies the window on which the key should be grabbed.
    * @param modifiers The modifiers to grab.
    * \n
    * Using the special value `XCB_MOD_MASK_ANY` means grab the key with all
    * possible modifier combinations.
    * @param key The keycode of the key to grab.
    * \n
    * The special value `XCB_GRAB_ANY` means grab any key.
    * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
    * @param pointer_mode \n
    * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
    * @param keyboard_mode \n
    * @return A cookie
    *
    * Establishes a passive grab on the keyboard. In the future, the keyboard is
    * actively grabbed (as for `GrabKeyboard`), the last-keyboard-grab time is set to
    * the time at which the key was pressed (as transmitted in the KeyPress event),
    * and the KeyPress event is reported if all of the following conditions are true:
    *
    * The keyboard is not grabbed and the specified key (which can itself be a
    * modifier key) is logically pressed when the specified modifier keys are
    * logically down, and no other modifier keys are logically down.
    *
    * Either the grab_window is an ancestor of (or is) the focus window, or the
    * grab_window is a descendant of the focus window and contains the pointer.
    *
    * A passive grab on the same key combination does not exist on any ancestor of
    * grab_window.
    *
    * The interpretation of the remaining arguments is as for XGrabKeyboard.  The active grab is terminated
    * automatically when the logical state of the keyboard has the specified key released (independent of the
    * logical state of the modifier keys), at which point a KeyRelease event is reported to the grabbing window.
    *
    * Note that the logical state of a device (as seen by client applications) may lag the physical state if
    * device event processing is frozen.
    *
    * A modifiers argument of AnyModifier is equivalent to issuing the request for all possible modifier combinations (including the combination of no modifiers).  It is not required that all modifiers specified
    * have currently assigned KeyCodes.  A keycode argument of AnyKey is equivalent to issuing the request for
    * all possible KeyCodes.  Otherwise, the specified keycode must be in the range specified by min_keycode
    * and max_keycode in the connection setup, or a BadValue error results.
    *
    * If some other client has issued a XGrabKey with the same key combination on the same window, a BadAccess
    * error results.  When using AnyModifier or AnyKey, the request fails completely, and a BadAccess error
    * results (no grabs are established) if there is a conflicting grab for any combination.
    *
    */
    xcb_grab_key:                                         #type (c: *xcb_connection_t, owner_events: u8, grab_window: xcb_window_t, modifiers: u16, key: xcb_keycode_t, pointer_mode: u8, keyboard_mode: u8) -> xcb_void_cookie_t #c_call;
    /**
    * @brief release a key combination
    *
    * @param c The connection
    * @param key The keycode of the specified key combination.
    * \n
    * Using the special value `XCB_GRAB_ANY` means releasing all possible key codes.
    * @param grab_window The window on which the grabbed key combination will be released.
    * @param modifiers The modifiers of the specified key combination.
    * \n
    * Using the special value `XCB_MOD_MASK_ANY` means releasing the key combination
    * with every possible modifier combination.
    * @return A cookie
    *
    * Releases the key combination on \a grab_window if you grabbed it using
    * `xcb_grab_key` before.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_ungrab_key_checked:                               #type (c: *xcb_connection_t, key: xcb_keycode_t, grab_window: xcb_window_t, modifiers: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief release a key combination
    *
    * @param c The connection
    * @param key The keycode of the specified key combination.
    * \n
    * Using the special value `XCB_GRAB_ANY` means releasing all possible key codes.
    * @param grab_window The window on which the grabbed key combination will be released.
    * @param modifiers The modifiers of the specified key combination.
    * \n
    * Using the special value `XCB_MOD_MASK_ANY` means releasing the key combination
    * with every possible modifier combination.
    * @return A cookie
    *
    * Releases the key combination on \a grab_window if you grabbed it using
    * `xcb_grab_key` before.
    *
    */
    xcb_ungrab_key:                                       #type (c: *xcb_connection_t, key: xcb_keycode_t, grab_window: xcb_window_t, modifiers: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief release queued events
    *
    * @param c The connection
    * @param mode A bitmask of #xcb_allow_t values.
    * @param mode \n
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @return A cookie
    *
    * Releases queued events if the client has caused a device (pointer/keyboard) to
    * freeze due to grabbing it actively. This request has no effect if \a time is
    * earlier than the last-grab time of the most recent active grab for this client
    * or if \a time is later than the current X server time.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_allow_events_checked:                             #type (c: *xcb_connection_t, mode: u8, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief release queued events
    *
    * @param c The connection
    * @param mode A bitmask of #xcb_allow_t values.
    * @param mode \n
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @return A cookie
    *
    * Releases queued events if the client has caused a device (pointer/keyboard) to
    * freeze due to grabbing it actively. This request has no effect if \a time is
    * earlier than the last-grab time of the most recent active grab for this client
    * or if \a time is later than the current X server time.
    *
    */
    xcb_allow_events:                                     #type (c: *xcb_connection_t, mode: u8, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_grab_server_checked:                              #type (c: *xcb_connection_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_grab_server:                                      #type (c: *xcb_connection_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_ungrab_server_checked:                            #type (c: *xcb_connection_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_ungrab_server:                                    #type (c: *xcb_connection_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief get pointer coordinates
    *
    * @param c The connection
    * @param window A window to check if the pointer is on the same screen as \a window (see the
    * `same_screen` field in the reply).
    * @return A cookie
    *
    * Gets the root window the pointer is logically on and the pointer coordinates
    * relative to the root window's origin.
    *
    */
    xcb_query_pointer:                                    #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_query_pointer_cookie_t #c_call;
    /**
    * @brief get pointer coordinates
    *
    * @param c The connection
    * @param window A window to check if the pointer is on the same screen as \a window (see the
    * `same_screen` field in the reply).
    * @return A cookie
    *
    * Gets the root window the pointer is logically on and the pointer coordinates
    * relative to the root window's origin.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_query_pointer_unchecked:                          #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_query_pointer_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_query_pointer_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_query_pointer_reply:                              #type (c: *xcb_connection_t, cookie: xcb_query_pointer_cookie_t, e: **xcb_generic_error_t) -> *xcb_query_pointer_reply_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_timecoord_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_timecoord_t)
    */
    xcb_timecoord_next:                                   #type (i: *xcb_timecoord_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_timecoord_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_timecoord_end:                                    #type (i: xcb_timecoord_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_get_motion_events_sizeof:                         #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_motion_events:                                #type (c: *xcb_connection_t, window: xcb_window_t, start: xcb_timestamp_t, stop: xcb_timestamp_t) -> xcb_get_motion_events_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_motion_events_unchecked:                      #type (c: *xcb_connection_t, window: xcb_window_t, start: xcb_timestamp_t, stop: xcb_timestamp_t) -> xcb_get_motion_events_cookie_t #c_call;
    xcb_get_motion_events_events:                         #type (R: *xcb_get_motion_events_reply_t) -> *xcb_timecoord_t #c_call;
    xcb_get_motion_events_events_length:                  #type (R: *xcb_get_motion_events_reply_t) -> s32 #c_call;
    xcb_get_motion_events_events_iterator:                #type (R: *xcb_get_motion_events_reply_t) -> xcb_timecoord_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_motion_events_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_motion_events_reply:                          #type (c: *xcb_connection_t, cookie: xcb_get_motion_events_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_motion_events_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_translate_coordinates:                            #type (c: *xcb_connection_t, src_window: xcb_window_t, dst_window: xcb_window_t, src_x: s16, src_y: s16) -> xcb_translate_coordinates_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_translate_coordinates_unchecked:                  #type (c: *xcb_connection_t, src_window: xcb_window_t, dst_window: xcb_window_t, src_x: s16, src_y: s16) -> xcb_translate_coordinates_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_translate_coordinates_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_translate_coordinates_reply:                      #type (c: *xcb_connection_t, cookie: xcb_translate_coordinates_cookie_t, e: **xcb_generic_error_t) -> *xcb_translate_coordinates_reply_t #c_call;
    /**
    * @brief move mouse pointer
    *
    * @param c The connection
    * @param src_window If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
    * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
    * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
    * \a src_window.
    * @param dst_window If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
    * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
    * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
    * relative to the current position of the pointer.
    * @return A cookie
    *
    * Moves the mouse pointer to the specified position.
    *
    * If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
    * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
    * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
    * \a src_window.
    *
    * If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
    * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
    * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
    * relative to the current position of the pointer.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_warp_pointer_checked:                             #type (c: *xcb_connection_t, src_window: xcb_window_t, dst_window: xcb_window_t, src_x: s16, src_y: s16, src_width: u16, src_height: u16, dst_x: s16, dst_y: s16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief move mouse pointer
    *
    * @param c The connection
    * @param src_window If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
    * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
    * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
    * \a src_window.
    * @param dst_window If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
    * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
    * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
    * relative to the current position of the pointer.
    * @return A cookie
    *
    * Moves the mouse pointer to the specified position.
    *
    * If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
    * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
    * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
    * \a src_window.
    *
    * If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
    * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
    * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
    * relative to the current position of the pointer.
    *
    */
    xcb_warp_pointer:                                     #type (c: *xcb_connection_t, src_window: xcb_window_t, dst_window: xcb_window_t, src_x: s16, src_y: s16, src_width: u16, src_height: u16, dst_x: s16, dst_y: s16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Sets input focus
    *
    * @param c The connection
    * @param revert_to A bitmask of #xcb_input_focus_t values.
    * @param revert_to Specifies what happens when the \a focus window becomes unviewable (if \a focus
    * is neither `XCB_NONE` nor `XCB_POINTER_ROOT`).
    * @param focus The window to focus. All keyboard events will be reported to this window. The
    * window must be viewable (TODO), or a `xcb_match_error_t` occurs (TODO).
    * \n
    * If \a focus is `XCB_NONE` (TODO), all keyboard events are
    * discarded until a new focus window is set.
    * \n
    * If \a focus is `XCB_POINTER_ROOT` (TODO), focus is on the root window of the
    * screen on which the pointer is on currently.
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @return A cookie
    *
    * Changes the input focus and the last-focus-change time. If the specified \a time
    * is earlier than the current last-focus-change time, the request is ignored (to
    * avoid race conditions when running X over the network).
    *
    * A FocusIn and FocusOut event is generated when focus is changed.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_set_input_focus_checked:                          #type (c: *xcb_connection_t, revert_to: u8, focus: xcb_window_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Sets input focus
    *
    * @param c The connection
    * @param revert_to A bitmask of #xcb_input_focus_t values.
    * @param revert_to Specifies what happens when the \a focus window becomes unviewable (if \a focus
    * is neither `XCB_NONE` nor `XCB_POINTER_ROOT`).
    * @param focus The window to focus. All keyboard events will be reported to this window. The
    * window must be viewable (TODO), or a `xcb_match_error_t` occurs (TODO).
    * \n
    * If \a focus is `XCB_NONE` (TODO), all keyboard events are
    * discarded until a new focus window is set.
    * \n
    * If \a focus is `XCB_POINTER_ROOT` (TODO), focus is on the root window of the
    * screen on which the pointer is on currently.
    * @param time Timestamp to avoid race conditions when running X over the network.
    * \n
    * The special value `XCB_CURRENT_TIME` will be replaced with the current server
    * time.
    * @return A cookie
    *
    * Changes the input focus and the last-focus-change time. If the specified \a time
    * is earlier than the current last-focus-change time, the request is ignored (to
    * avoid race conditions when running X over the network).
    *
    * A FocusIn and FocusOut event is generated when focus is changed.
    *
    */
    xcb_set_input_focus:                                  #type (c: *xcb_connection_t, revert_to: u8, focus: xcb_window_t, time: xcb_timestamp_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_input_focus:                                  #type (c: *xcb_connection_t) -> xcb_get_input_focus_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_input_focus_unchecked:                        #type (c: *xcb_connection_t) -> xcb_get_input_focus_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_input_focus_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_input_focus_reply:                            #type (c: *xcb_connection_t, cookie: xcb_get_input_focus_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_input_focus_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_query_keymap:                                     #type (c: *xcb_connection_t) -> xcb_query_keymap_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_query_keymap_unchecked:                           #type (c: *xcb_connection_t) -> xcb_query_keymap_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_query_keymap_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_query_keymap_reply:                               #type (c: *xcb_connection_t, cookie: xcb_query_keymap_cookie_t, e: **xcb_generic_error_t) -> *xcb_query_keymap_reply_t #c_call;
    xcb_open_font_sizeof:                                 #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief opens a font
    *
    * @param c The connection
    * @param fid The ID with which you will refer to the font, created by `xcb_generate_id`.
    * @param name_len Length (in bytes) of \a name.
    * @param name A pattern describing an X core font.
    * @return A cookie
    *
    * Opens any X core font matching the given \a name (for example "-misc-fixed-*").
    *
    * Note that X core fonts are deprecated (but still supported) in favor of
    * client-side rendering using Xft.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_open_font_checked:                                #type (c: *xcb_connection_t, fid: xcb_font_t, name_len: u16, name: *u8) -> xcb_void_cookie_t #c_call;
    /**
    * @brief opens a font
    *
    * @param c The connection
    * @param fid The ID with which you will refer to the font, created by `xcb_generate_id`.
    * @param name_len Length (in bytes) of \a name.
    * @param name A pattern describing an X core font.
    * @return A cookie
    *
    * Opens any X core font matching the given \a name (for example "-misc-fixed-*").
    *
    * Note that X core fonts are deprecated (but still supported) in favor of
    * client-side rendering using Xft.
    *
    */
    xcb_open_font:                                        #type (c: *xcb_connection_t, fid: xcb_font_t, name_len: u16, name: *u8) -> xcb_void_cookie_t #c_call;
    xcb_open_font_name:                                   #type (R: *xcb_open_font_request_t) -> *u8 #c_call;
    xcb_open_font_name_length:                            #type (R: *xcb_open_font_request_t) -> s32 #c_call;
    xcb_open_font_name_end:                               #type (R: *xcb_open_font_request_t) -> xcb_generic_iterator_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_close_font_checked:                               #type (c: *xcb_connection_t, font: xcb_font_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_close_font:                                       #type (c: *xcb_connection_t, font: xcb_font_t) -> xcb_void_cookie_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_fontprop_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_fontprop_t)
    */
    xcb_fontprop_next:                                    #type (i: *xcb_fontprop_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_fontprop_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_fontprop_end:                                     #type (i: xcb_fontprop_iterator_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_charinfo_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_charinfo_t)
    */
    xcb_charinfo_next:                                    #type (i: *xcb_charinfo_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_charinfo_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_charinfo_end:                                     #type (i: xcb_charinfo_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_query_font_sizeof:                                #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief query font metrics
    *
    * @param c The connection
    * @param font The fontable (Font or Graphics Context) to query.
    * @return A cookie
    *
    * Queries information associated with the font.
    *
    */
    xcb_query_font:                                       #type (c: *xcb_connection_t, font: xcb_fontable_t) -> xcb_query_font_cookie_t #c_call;
    /**
    * @brief query font metrics
    *
    * @param c The connection
    * @param font The fontable (Font or Graphics Context) to query.
    * @return A cookie
    *
    * Queries information associated with the font.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_query_font_unchecked:                             #type (c: *xcb_connection_t, font: xcb_fontable_t) -> xcb_query_font_cookie_t #c_call;
    xcb_query_font_properties:                            #type (R: *xcb_query_font_reply_t) -> *xcb_fontprop_t #c_call;
    xcb_query_font_properties_length:                     #type (R: *xcb_query_font_reply_t) -> s32 #c_call;
    xcb_query_font_properties_iterator:                   #type (R: *xcb_query_font_reply_t) -> xcb_fontprop_iterator_t #c_call;
    xcb_query_font_char_infos:                            #type (R: *xcb_query_font_reply_t) -> *xcb_charinfo_t #c_call;
    xcb_query_font_char_infos_length:                     #type (R: *xcb_query_font_reply_t) -> s32 #c_call;
    xcb_query_font_char_infos_iterator:                   #type (R: *xcb_query_font_reply_t) -> xcb_charinfo_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_query_font_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_query_font_reply:                                 #type (c: *xcb_connection_t, cookie: xcb_query_font_cookie_t, e: **xcb_generic_error_t) -> *xcb_query_font_reply_t #c_call;
    xcb_query_text_extents_sizeof:                        #type (_buffer: *void, string_len: u32) -> s32 #c_call;
    /**
    * @brief get text extents
    *
    * @param c The connection
    * @param font The \a font to calculate text extents in. You can also pass a graphics context.
    * @param string_len The number of characters in \a string.
    * @param string The text to get text extents for.
    * @return A cookie
    *
    * Query text extents from the X11 server. This request returns the bounding box
    * of the specified 16-bit character string in the specified \a font or the font
    * contained in the specified graphics context.
    *
    * `font_ascent` is set to the maximum of the ascent metrics of all characters in
    * the string. `font_descent` is set to the maximum of the descent metrics.
    * `overall_width` is set to the sum of the character-width metrics of all
    * characters in the string. For each character in the string, let W be the sum of
    * the character-width metrics of all characters preceding it in the string. Let L
    * be the left-side-bearing metric of the character plus W. Let R be the
    * right-side-bearing metric of the character plus W. The lbearing member is set
    * to the minimum L of all characters in the string. The rbearing member is set to
    * the maximum R.
    *
    * For fonts defined with linear indexing rather than 2-byte matrix indexing, each
    * `xcb_char2b_t` structure is interpreted as a 16-bit number with byte1 as the
    * most significant byte. If the font has no defined default character, undefined
    * characters in the string are taken to have all zero metrics.
    *
    * Characters with all zero metrics are ignored. If the font has no defined
    * default_char, the undefined characters in the string are also ignored.
    *
    */
    xcb_query_text_extents:                               #type (c: *xcb_connection_t, font: xcb_fontable_t, string_len: u32, _string: *xcb_char2b_t) -> xcb_query_text_extents_cookie_t #c_call;
    /**
    * @brief get text extents
    *
    * @param c The connection
    * @param font The \a font to calculate text extents in. You can also pass a graphics context.
    * @param string_len The number of characters in \a string.
    * @param string The text to get text extents for.
    * @return A cookie
    *
    * Query text extents from the X11 server. This request returns the bounding box
    * of the specified 16-bit character string in the specified \a font or the font
    * contained in the specified graphics context.
    *
    * `font_ascent` is set to the maximum of the ascent metrics of all characters in
    * the string. `font_descent` is set to the maximum of the descent metrics.
    * `overall_width` is set to the sum of the character-width metrics of all
    * characters in the string. For each character in the string, let W be the sum of
    * the character-width metrics of all characters preceding it in the string. Let L
    * be the left-side-bearing metric of the character plus W. Let R be the
    * right-side-bearing metric of the character plus W. The lbearing member is set
    * to the minimum L of all characters in the string. The rbearing member is set to
    * the maximum R.
    *
    * For fonts defined with linear indexing rather than 2-byte matrix indexing, each
    * `xcb_char2b_t` structure is interpreted as a 16-bit number with byte1 as the
    * most significant byte. If the font has no defined default character, undefined
    * characters in the string are taken to have all zero metrics.
    *
    * Characters with all zero metrics are ignored. If the font has no defined
    * default_char, the undefined characters in the string are also ignored.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_query_text_extents_unchecked:                     #type (c: *xcb_connection_t, font: xcb_fontable_t, string_len: u32, _string: *xcb_char2b_t) -> xcb_query_text_extents_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_query_text_extents_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_query_text_extents_reply:                         #type (c: *xcb_connection_t, cookie: xcb_query_text_extents_cookie_t, e: **xcb_generic_error_t) -> *xcb_query_text_extents_reply_t #c_call;
    xcb_str_sizeof:                                       #type (_buffer: *void) -> s32 #c_call;
    xcb_str_name:                                         #type (R: *xcb_str_t) -> *u8 #c_call;
    xcb_str_name_length:                                  #type (R: *xcb_str_t) -> s32 #c_call;
    xcb_str_name_end:                                     #type (R: *xcb_str_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_str_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_str_t)
    */
    xcb_str_next:                                         #type (i: *xcb_str_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_str_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_str_end:                                          #type (i: xcb_str_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_list_fonts_sizeof:                                #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief get matching font names
    *
    * @param c The connection
    * @param max_names The maximum number of fonts to be returned.
    * @param pattern_len The length (in bytes) of \a pattern.
    * @param pattern A font pattern, for example "-misc-fixed-*".
    * \n
    * The asterisk (*) is a wildcard for any number of characters. The question mark
    * (?) is a wildcard for a single character. Use of uppercase or lowercase does
    * not matter.
    * @return A cookie
    *
    * Gets a list of available font names which match the given \a pattern.
    *
    */
    xcb_list_fonts:                                       #type (c: *xcb_connection_t, max_names: u16, pattern_len: u16, pattern: *u8) -> xcb_list_fonts_cookie_t #c_call;
    /**
    * @brief get matching font names
    *
    * @param c The connection
    * @param max_names The maximum number of fonts to be returned.
    * @param pattern_len The length (in bytes) of \a pattern.
    * @param pattern A font pattern, for example "-misc-fixed-*".
    * \n
    * The asterisk (*) is a wildcard for any number of characters. The question mark
    * (?) is a wildcard for a single character. Use of uppercase or lowercase does
    * not matter.
    * @return A cookie
    *
    * Gets a list of available font names which match the given \a pattern.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_list_fonts_unchecked:                             #type (c: *xcb_connection_t, max_names: u16, pattern_len: u16, pattern: *u8) -> xcb_list_fonts_cookie_t #c_call;
    xcb_list_fonts_names_length:                          #type (R: *xcb_list_fonts_reply_t) -> s32 #c_call;
    xcb_list_fonts_names_iterator:                        #type (R: *xcb_list_fonts_reply_t) -> xcb_str_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_list_fonts_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_list_fonts_reply:                                 #type (c: *xcb_connection_t, cookie: xcb_list_fonts_cookie_t, e: **xcb_generic_error_t) -> *xcb_list_fonts_reply_t #c_call;
    xcb_list_fonts_with_info_sizeof:                      #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief get matching font names and information
    *
    * @param c The connection
    * @param max_names The maximum number of fonts to be returned.
    * @param pattern_len The length (in bytes) of \a pattern.
    * @param pattern A font pattern, for example "-misc-fixed-*".
    * \n
    * The asterisk (*) is a wildcard for any number of characters. The question mark
    * (?) is a wildcard for a single character. Use of uppercase or lowercase does
    * not matter.
    * @return A cookie
    *
    * Gets a list of available font names which match the given \a pattern.
    *
    */
    xcb_list_fonts_with_info:                             #type (c: *xcb_connection_t, max_names: u16, pattern_len: u16, pattern: *u8) -> xcb_list_fonts_with_info_cookie_t #c_call;
    /**
    * @brief get matching font names and information
    *
    * @param c The connection
    * @param max_names The maximum number of fonts to be returned.
    * @param pattern_len The length (in bytes) of \a pattern.
    * @param pattern A font pattern, for example "-misc-fixed-*".
    * \n
    * The asterisk (*) is a wildcard for any number of characters. The question mark
    * (?) is a wildcard for a single character. Use of uppercase or lowercase does
    * not matter.
    * @return A cookie
    *
    * Gets a list of available font names which match the given \a pattern.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_list_fonts_with_info_unchecked:                   #type (c: *xcb_connection_t, max_names: u16, pattern_len: u16, pattern: *u8) -> xcb_list_fonts_with_info_cookie_t #c_call;
    xcb_list_fonts_with_info_properties:                  #type (R: *xcb_list_fonts_with_info_reply_t) -> *xcb_fontprop_t #c_call;
    xcb_list_fonts_with_info_properties_length:           #type (R: *xcb_list_fonts_with_info_reply_t) -> s32 #c_call;
    xcb_list_fonts_with_info_properties_iterator:         #type (R: *xcb_list_fonts_with_info_reply_t) -> xcb_fontprop_iterator_t #c_call;
    xcb_list_fonts_with_info_name:                        #type (R: *xcb_list_fonts_with_info_reply_t) -> *u8 #c_call;
    xcb_list_fonts_with_info_name_length:                 #type (R: *xcb_list_fonts_with_info_reply_t) -> s32 #c_call;
    xcb_list_fonts_with_info_name_end:                    #type (R: *xcb_list_fonts_with_info_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_list_fonts_with_info_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_list_fonts_with_info_reply:                       #type (c: *xcb_connection_t, cookie: xcb_list_fonts_with_info_cookie_t, e: **xcb_generic_error_t) -> *xcb_list_fonts_with_info_reply_t #c_call;
    xcb_set_font_path_sizeof:                             #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_set_font_path_checked:                            #type (c: *xcb_connection_t, font_qty: u16, font: *xcb_str_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_set_font_path:                                    #type (c: *xcb_connection_t, font_qty: u16, font: *xcb_str_t) -> xcb_void_cookie_t #c_call;
    xcb_set_font_path_font_length:                        #type (R: *xcb_set_font_path_request_t) -> s32 #c_call;
    xcb_set_font_path_font_iterator:                      #type (R: *xcb_set_font_path_request_t) -> xcb_str_iterator_t #c_call;
    xcb_get_font_path_sizeof:                             #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_font_path:                                    #type (c: *xcb_connection_t) -> xcb_get_font_path_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_font_path_unchecked:                          #type (c: *xcb_connection_t) -> xcb_get_font_path_cookie_t #c_call;
    xcb_get_font_path_path_length:                        #type (R: *xcb_get_font_path_reply_t) -> s32 #c_call;
    xcb_get_font_path_path_iterator:                      #type (R: *xcb_get_font_path_reply_t) -> xcb_str_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_font_path_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_font_path_reply:                              #type (c: *xcb_connection_t, cookie: xcb_get_font_path_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_font_path_reply_t #c_call;
    /**
    * @brief Creates a pixmap
    *
    * @param c The connection
    * @param depth TODO
    * @param pid The ID with which you will refer to the new pixmap, created by
    * `xcb_generate_id`.
    * @param drawable Drawable to get the screen from.
    * @param width The width of the new pixmap.
    * @param height The height of the new pixmap.
    * @return A cookie
    *
    * Creates a pixmap. The pixmap can only be used on the same screen as \a drawable
    * is on and only with drawables of the same \a depth.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_create_pixmap_checked:                            #type (c: *xcb_connection_t, depth: u8, pid: xcb_pixmap_t, drawable: xcb_drawable_t, width: u16, height: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Creates a pixmap
    *
    * @param c The connection
    * @param depth TODO
    * @param pid The ID with which you will refer to the new pixmap, created by
    * `xcb_generate_id`.
    * @param drawable Drawable to get the screen from.
    * @param width The width of the new pixmap.
    * @param height The height of the new pixmap.
    * @return A cookie
    *
    * Creates a pixmap. The pixmap can only be used on the same screen as \a drawable
    * is on and only with drawables of the same \a depth.
    *
    */
    xcb_create_pixmap:                                    #type (c: *xcb_connection_t, depth: u8, pid: xcb_pixmap_t, drawable: xcb_drawable_t, width: u16, height: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Destroys a pixmap
    *
    * @param c The connection
    * @param pixmap The pixmap to destroy.
    * @return A cookie
    *
    * Deletes the association between the pixmap ID and the pixmap. The pixmap
    * storage will be freed when there are no more references to it.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_free_pixmap_checked:                              #type (c: *xcb_connection_t, pixmap: xcb_pixmap_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Destroys a pixmap
    *
    * @param c The connection
    * @param pixmap The pixmap to destroy.
    * @return A cookie
    *
    * Deletes the association between the pixmap ID and the pixmap. The pixmap
    * storage will be freed when there are no more references to it.
    *
    */
    xcb_free_pixmap:                                      #type (c: *xcb_connection_t, pixmap: xcb_pixmap_t) -> xcb_void_cookie_t #c_call;
    xcb_create_gc_value_list_serialize:                   #type (_buffer: **void, value_mask: xcb_gc_t, _aux: *xcb_create_gc_value_list_t) -> s32 #c_call;
    xcb_create_gc_value_list_unpack:                      #type (_buffer: *void, value_mask: xcb_gc_t, _aux: *xcb_create_gc_value_list_t) -> s32 #c_call;
    xcb_create_gc_value_list_sizeof:                      #type (_buffer: *void, value_mask: xcb_gc_t) -> s32 #c_call;
    xcb_create_gc_sizeof:                                 #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief Creates a graphics context
    *
    * @param c The connection
    * @param cid The ID with which you will refer to the graphics context, created by
    * `xcb_generate_id`.
    * @param drawable Drawable to get the root/depth from.
    * @return A cookie
    *
    * Creates a graphics context. The graphics context can be used with any drawable
    * that has the same root and depth as the specified drawable.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_create_gc_checked:                                #type (c: *xcb_connection_t, cid: xcb_gcontext_t, drawable: xcb_drawable_t, value_mask: xcb_gc_t, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Creates a graphics context
    *
    * @param c The connection
    * @param cid The ID with which you will refer to the graphics context, created by
    * `xcb_generate_id`.
    * @param drawable Drawable to get the root/depth from.
    * @return A cookie
    *
    * Creates a graphics context. The graphics context can be used with any drawable
    * that has the same root and depth as the specified drawable.
    *
    */
    xcb_create_gc:                                        #type (c: *xcb_connection_t, cid: xcb_gcontext_t, drawable: xcb_drawable_t, value_mask: xcb_gc_t, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Creates a graphics context
    *
    * @param c The connection
    * @param cid The ID with which you will refer to the graphics context, created by
    * `xcb_generate_id`.
    * @param drawable Drawable to get the root/depth from.
    * @return A cookie
    *
    * Creates a graphics context. The graphics context can be used with any drawable
    * that has the same root and depth as the specified drawable.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_create_gc_aux_checked:                            #type (c: *xcb_connection_t, cid: xcb_gcontext_t, drawable: xcb_drawable_t, value_mask: xcb_gc_t, value_list: *xcb_create_gc_value_list_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Creates a graphics context
    *
    * @param c The connection
    * @param cid The ID with which you will refer to the graphics context, created by
    * `xcb_generate_id`.
    * @param drawable Drawable to get the root/depth from.
    * @return A cookie
    *
    * Creates a graphics context. The graphics context can be used with any drawable
    * that has the same root and depth as the specified drawable.
    *
    */
    xcb_create_gc_aux:                                    #type (c: *xcb_connection_t, cid: xcb_gcontext_t, drawable: xcb_drawable_t, value_mask: xcb_gc_t, value_list: *xcb_create_gc_value_list_t) -> xcb_void_cookie_t #c_call;
    xcb_create_gc_value_list:                             #type (R: *xcb_create_gc_request_t) -> *void #c_call;
    xcb_change_gc_value_list_serialize:                   #type (_buffer: **void, value_mask: xcb_gc_t, _aux: *xcb_change_gc_value_list_t) -> s32 #c_call;
    xcb_change_gc_value_list_unpack:                      #type (_buffer: *void, value_mask: xcb_gc_t, _aux: *xcb_change_gc_value_list_t) -> s32 #c_call;
    xcb_change_gc_value_list_sizeof:                      #type (_buffer: *void, value_mask: xcb_gc_t) -> s32 #c_call;
    xcb_change_gc_sizeof:                                 #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief change graphics context components
    *
    * @param c The connection
    * @param gc The graphics context to change.
    * @param value_mask A bitmask of #xcb_gc_t values.
    * @param value_mask \n
    * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
    * order has to correspond to the order of possible \a value_mask bits. See the
    * example.
    * @return A cookie
    *
    * Changes the components specified by \a value_mask for the specified graphics context.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_gc_checked:                                #type (c: *xcb_connection_t, gc: xcb_gcontext_t, value_mask: xcb_gc_t, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief change graphics context components
    *
    * @param c The connection
    * @param gc The graphics context to change.
    * @param value_mask A bitmask of #xcb_gc_t values.
    * @param value_mask \n
    * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
    * order has to correspond to the order of possible \a value_mask bits. See the
    * example.
    * @return A cookie
    *
    * Changes the components specified by \a value_mask for the specified graphics context.
    *
    */
    xcb_change_gc:                                        #type (c: *xcb_connection_t, gc: xcb_gcontext_t, value_mask: xcb_gc_t, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    * @brief change graphics context components
    *
    * @param c The connection
    * @param gc The graphics context to change.
    * @param value_mask A bitmask of #xcb_gc_t values.
    * @param value_mask \n
    * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
    * order has to correspond to the order of possible \a value_mask bits. See the
    * example.
    * @return A cookie
    *
    * Changes the components specified by \a value_mask for the specified graphics context.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_gc_aux_checked:                            #type (c: *xcb_connection_t, gc: xcb_gcontext_t, value_mask: xcb_gc_t, value_list: *xcb_change_gc_value_list_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief change graphics context components
    *
    * @param c The connection
    * @param gc The graphics context to change.
    * @param value_mask A bitmask of #xcb_gc_t values.
    * @param value_mask \n
    * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
    * order has to correspond to the order of possible \a value_mask bits. See the
    * example.
    * @return A cookie
    *
    * Changes the components specified by \a value_mask for the specified graphics context.
    *
    */
    xcb_change_gc_aux:                                    #type (c: *xcb_connection_t, gc: xcb_gcontext_t, value_mask: xcb_gc_t, value_list: *xcb_change_gc_value_list_t) -> xcb_void_cookie_t #c_call;
    xcb_change_gc_value_list:                             #type (R: *xcb_change_gc_request_t) -> *void #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_copy_gc_checked:                                  #type (c: *xcb_connection_t, src_gc: xcb_gcontext_t, dst_gc: xcb_gcontext_t, value_mask: u32) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_copy_gc:                                          #type (c: *xcb_connection_t, src_gc: xcb_gcontext_t, dst_gc: xcb_gcontext_t, value_mask: u32) -> xcb_void_cookie_t #c_call;
    xcb_set_dashes_sizeof:                                #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_set_dashes_checked:                               #type (c: *xcb_connection_t, gc: xcb_gcontext_t, dash_offset: u16, dashes_len: u16, dashes: *u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_set_dashes:                                       #type (c: *xcb_connection_t, gc: xcb_gcontext_t, dash_offset: u16, dashes_len: u16, dashes: *u8) -> xcb_void_cookie_t #c_call;
    xcb_set_dashes_dashes:                                #type (R: *xcb_set_dashes_request_t) -> *u8 #c_call;
    xcb_set_dashes_dashes_length:                         #type (R: *xcb_set_dashes_request_t) -> s32 #c_call;
    xcb_set_dashes_dashes_end:                            #type (R: *xcb_set_dashes_request_t) -> xcb_generic_iterator_t #c_call;
    xcb_set_clip_rectangles_sizeof:                       #type (_buffer: *void, rectangles_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_set_clip_rectangles_checked:                      #type (c: *xcb_connection_t, ordering: u8, gc: xcb_gcontext_t, clip_x_origin: s16, clip_y_origin: s16, rectangles_len: u32, rectangles: *xcb_rectangle_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_set_clip_rectangles:                              #type (c: *xcb_connection_t, ordering: u8, gc: xcb_gcontext_t, clip_x_origin: s16, clip_y_origin: s16, rectangles_len: u32, rectangles: *xcb_rectangle_t) -> xcb_void_cookie_t #c_call;
    xcb_set_clip_rectangles_rectangles:                   #type (R: *xcb_set_clip_rectangles_request_t) -> *xcb_rectangle_t #c_call;
    xcb_set_clip_rectangles_rectangles_length:            #type (R: *xcb_set_clip_rectangles_request_t) -> s32 #c_call;
    xcb_set_clip_rectangles_rectangles_iterator:          #type (R: *xcb_set_clip_rectangles_request_t) -> xcb_rectangle_iterator_t #c_call;
    /**
    * @brief Destroys a graphics context
    *
    * @param c The connection
    * @param gc The graphics context to destroy.
    * @return A cookie
    *
    * Destroys the specified \a gc and all associated storage.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_free_gc_checked:                                  #type (c: *xcb_connection_t, gc: xcb_gcontext_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Destroys a graphics context
    *
    * @param c The connection
    * @param gc The graphics context to destroy.
    * @return A cookie
    *
    * Destroys the specified \a gc and all associated storage.
    *
    */
    xcb_free_gc:                                          #type (c: *xcb_connection_t, gc: xcb_gcontext_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_clear_area_checked:                               #type (c: *xcb_connection_t, exposures: u8, window: xcb_window_t, x: s16, y: s16, width: u16, height: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_clear_area:                                       #type (c: *xcb_connection_t, exposures: u8, window: xcb_window_t, x: s16, y: s16, width: u16, height: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief copy areas
    *
    * @param c The connection
    * @param src_drawable The source drawable (Window or Pixmap).
    * @param dst_drawable The destination drawable (Window or Pixmap).
    * @param gc The graphics context to use.
    * @param src_x The source X coordinate.
    * @param src_y The source Y coordinate.
    * @param dst_x The destination X coordinate.
    * @param dst_y The destination Y coordinate.
    * @param width The width of the area to copy (in pixels).
    * @param height The height of the area to copy (in pixels).
    * @return A cookie
    *
    * Copies the specified rectangle from \a src_drawable to \a dst_drawable.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_copy_area_checked:                                #type (c: *xcb_connection_t, src_drawable: xcb_drawable_t, dst_drawable: xcb_drawable_t, gc: xcb_gcontext_t, src_x: s16, src_y: s16, dst_x: s16, dst_y: s16, width: u16, height: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief copy areas
    *
    * @param c The connection
    * @param src_drawable The source drawable (Window or Pixmap).
    * @param dst_drawable The destination drawable (Window or Pixmap).
    * @param gc The graphics context to use.
    * @param src_x The source X coordinate.
    * @param src_y The source Y coordinate.
    * @param dst_x The destination X coordinate.
    * @param dst_y The destination Y coordinate.
    * @param width The width of the area to copy (in pixels).
    * @param height The height of the area to copy (in pixels).
    * @return A cookie
    *
    * Copies the specified rectangle from \a src_drawable to \a dst_drawable.
    *
    */
    xcb_copy_area:                                        #type (c: *xcb_connection_t, src_drawable: xcb_drawable_t, dst_drawable: xcb_drawable_t, gc: xcb_gcontext_t, src_x: s16, src_y: s16, dst_x: s16, dst_y: s16, width: u16, height: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_copy_plane_checked:                               #type (c: *xcb_connection_t, src_drawable: xcb_drawable_t, dst_drawable: xcb_drawable_t, gc: xcb_gcontext_t, src_x: s16, src_y: s16, dst_x: s16, dst_y: s16, width: u16, height: u16, bit_plane: u32) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_copy_plane:                                       #type (c: *xcb_connection_t, src_drawable: xcb_drawable_t, dst_drawable: xcb_drawable_t, gc: xcb_gcontext_t, src_x: s16, src_y: s16, dst_x: s16, dst_y: s16, width: u16, height: u16, bit_plane: u32) -> xcb_void_cookie_t #c_call;
    xcb_poly_point_sizeof:                                #type (_buffer: *void, points_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_point_checked:                               #type (c: *xcb_connection_t, coordinate_mode: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, points_len: u32, points: *xcb_point_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_poly_point:                                       #type (c: *xcb_connection_t, coordinate_mode: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, points_len: u32, points: *xcb_point_t) -> xcb_void_cookie_t #c_call;
    xcb_poly_point_points:                                #type (R: *xcb_poly_point_request_t) -> *xcb_point_t #c_call;
    xcb_poly_point_points_length:                         #type (R: *xcb_poly_point_request_t) -> s32 #c_call;
    xcb_poly_point_points_iterator:                       #type (R: *xcb_poly_point_request_t) -> xcb_point_iterator_t #c_call;
    xcb_poly_line_sizeof:                                 #type (_buffer: *void, points_len: u32) -> s32 #c_call;
    /**
    * @brief draw lines
    *
    * @param c The connection
    * @param coordinate_mode A bitmask of #xcb_coord_mode_t values.
    * @param coordinate_mode \n
    * @param drawable The drawable to draw the line(s) on.
    * @param gc The graphics context to use.
    * @param points_len The number of `xcb_point_t` structures in \a points.
    * @param points An array of points.
    * @return A cookie
    *
    * Draws \a points_len-1 lines between each pair of points (point[i], point[i+1])
    * in the \a points array. The lines are drawn in the order listed in the array.
    * They join correctly at all intermediate points, and if the first and last
    * points coincide, the first and last lines also join correctly. For any given
    * line, a pixel is not drawn more than once. If thin (zero line-width) lines
    * intersect, the intersecting pixels are drawn multiple times. If wide lines
    * intersect, the intersecting pixels are drawn only once, as though the entire
    * request were a single, filled shape.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_line_checked:                                #type (c: *xcb_connection_t, coordinate_mode: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, points_len: u32, points: *xcb_point_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief draw lines
    *
    * @param c The connection
    * @param coordinate_mode A bitmask of #xcb_coord_mode_t values.
    * @param coordinate_mode \n
    * @param drawable The drawable to draw the line(s) on.
    * @param gc The graphics context to use.
    * @param points_len The number of `xcb_point_t` structures in \a points.
    * @param points An array of points.
    * @return A cookie
    *
    * Draws \a points_len-1 lines between each pair of points (point[i], point[i+1])
    * in the \a points array. The lines are drawn in the order listed in the array.
    * They join correctly at all intermediate points, and if the first and last
    * points coincide, the first and last lines also join correctly. For any given
    * line, a pixel is not drawn more than once. If thin (zero line-width) lines
    * intersect, the intersecting pixels are drawn multiple times. If wide lines
    * intersect, the intersecting pixels are drawn only once, as though the entire
    * request were a single, filled shape.
    *
    */
    xcb_poly_line:                                        #type (c: *xcb_connection_t, coordinate_mode: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, points_len: u32, points: *xcb_point_t) -> xcb_void_cookie_t #c_call;
    xcb_poly_line_points:                                 #type (R: *xcb_poly_line_request_t) -> *xcb_point_t #c_call;
    xcb_poly_line_points_length:                          #type (R: *xcb_poly_line_request_t) -> s32 #c_call;
    xcb_poly_line_points_iterator:                        #type (R: *xcb_poly_line_request_t) -> xcb_point_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_segment_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_segment_t)
    */
    xcb_segment_next:                                     #type (i: *xcb_segment_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_segment_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_segment_end:                                      #type (i: xcb_segment_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_poly_segment_sizeof:                              #type (_buffer: *void, segments_len: u32) -> s32 #c_call;
    /**
    * @brief draw lines
    *
    * @param c The connection
    * @param drawable A drawable (Window or Pixmap) to draw on.
    * @param gc The graphics context to use.
    * \n
    * TODO: document which attributes of a gc are used
    * @param segments_len The number of `xcb_segment_t` structures in \a segments.
    * @param segments An array of `xcb_segment_t` structures.
    * @return A cookie
    *
    * Draws multiple, unconnected lines. For each segment, a line is drawn between
    * (x1, y1) and (x2, y2). The lines are drawn in the order listed in the array of
    * `xcb_segment_t` structures and does not perform joining at coincident
    * endpoints. For any given line, a pixel is not drawn more than once. If lines
    * intersect, the intersecting pixels are drawn multiple times.
    *
    * TODO: include the xcb_segment_t data structure
    *
    * TODO: an example
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_segment_checked:                             #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, segments_len: u32, segments: *xcb_segment_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief draw lines
    *
    * @param c The connection
    * @param drawable A drawable (Window or Pixmap) to draw on.
    * @param gc The graphics context to use.
    * \n
    * TODO: document which attributes of a gc are used
    * @param segments_len The number of `xcb_segment_t` structures in \a segments.
    * @param segments An array of `xcb_segment_t` structures.
    * @return A cookie
    *
    * Draws multiple, unconnected lines. For each segment, a line is drawn between
    * (x1, y1) and (x2, y2). The lines are drawn in the order listed in the array of
    * `xcb_segment_t` structures and does not perform joining at coincident
    * endpoints. For any given line, a pixel is not drawn more than once. If lines
    * intersect, the intersecting pixels are drawn multiple times.
    *
    * TODO: include the xcb_segment_t data structure
    *
    * TODO: an example
    *
    */
    xcb_poly_segment:                                     #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, segments_len: u32, segments: *xcb_segment_t) -> xcb_void_cookie_t #c_call;
    xcb_poly_segment_segments:                            #type (R: *xcb_poly_segment_request_t) -> *xcb_segment_t #c_call;
    xcb_poly_segment_segments_length:                     #type (R: *xcb_poly_segment_request_t) -> s32 #c_call;
    xcb_poly_segment_segments_iterator:                   #type (R: *xcb_poly_segment_request_t) -> xcb_segment_iterator_t #c_call;
    xcb_poly_rectangle_sizeof:                            #type (_buffer: *void, rectangles_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_rectangle_checked:                           #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, rectangles_len: u32, rectangles: *xcb_rectangle_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_poly_rectangle:                                   #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, rectangles_len: u32, rectangles: *xcb_rectangle_t) -> xcb_void_cookie_t #c_call;
    xcb_poly_rectangle_rectangles:                        #type (R: *xcb_poly_rectangle_request_t) -> *xcb_rectangle_t #c_call;
    xcb_poly_rectangle_rectangles_length:                 #type (R: *xcb_poly_rectangle_request_t) -> s32 #c_call;
    xcb_poly_rectangle_rectangles_iterator:               #type (R: *xcb_poly_rectangle_request_t) -> xcb_rectangle_iterator_t #c_call;
    xcb_poly_arc_sizeof:                                  #type (_buffer: *void, arcs_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_arc_checked:                                 #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, arcs_len: u32, arcs: *xcb_arc_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_poly_arc:                                         #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, arcs_len: u32, arcs: *xcb_arc_t) -> xcb_void_cookie_t #c_call;
    xcb_poly_arc_arcs:                                    #type (R: *xcb_poly_arc_request_t) -> *xcb_arc_t #c_call;
    xcb_poly_arc_arcs_length:                             #type (R: *xcb_poly_arc_request_t) -> s32 #c_call;
    xcb_poly_arc_arcs_iterator:                           #type (R: *xcb_poly_arc_request_t) -> xcb_arc_iterator_t #c_call;
    xcb_fill_poly_sizeof:                                 #type (_buffer: *void, points_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_fill_poly_checked:                                #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, shape: u8, coordinate_mode: u8, points_len: u32, points: *xcb_point_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_fill_poly:                                        #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, shape: u8, coordinate_mode: u8, points_len: u32, points: *xcb_point_t) -> xcb_void_cookie_t #c_call;
    xcb_fill_poly_points:                                 #type (R: *xcb_fill_poly_request_t) -> *xcb_point_t #c_call;
    xcb_fill_poly_points_length:                          #type (R: *xcb_fill_poly_request_t) -> s32 #c_call;
    xcb_fill_poly_points_iterator:                        #type (R: *xcb_fill_poly_request_t) -> xcb_point_iterator_t #c_call;
    xcb_poly_fill_rectangle_sizeof:                       #type (_buffer: *void, rectangles_len: u32) -> s32 #c_call;
    /**
    * @brief Fills rectangles
    *
    * @param c The connection
    * @param drawable The drawable (Window or Pixmap) to draw on.
    * @param gc The graphics context to use.
    * \n
    * The following graphics context components are used: function, plane-mask,
    * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
    * \n
    * The following graphics context mode-dependent components are used:
    * foreground, background, tile, stipple, tile-stipple-x-origin, and
    * tile-stipple-y-origin.
    * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
    * @param rectangles The rectangles to fill.
    * @return A cookie
    *
    * Fills the specified rectangle(s) in the order listed in the array. For any
    * given rectangle, each pixel is not drawn more than once. If rectangles
    * intersect, the intersecting pixels are drawn multiple times.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_fill_rectangle_checked:                      #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, rectangles_len: u32, rectangles: *xcb_rectangle_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Fills rectangles
    *
    * @param c The connection
    * @param drawable The drawable (Window or Pixmap) to draw on.
    * @param gc The graphics context to use.
    * \n
    * The following graphics context components are used: function, plane-mask,
    * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
    * \n
    * The following graphics context mode-dependent components are used:
    * foreground, background, tile, stipple, tile-stipple-x-origin, and
    * tile-stipple-y-origin.
    * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
    * @param rectangles The rectangles to fill.
    * @return A cookie
    *
    * Fills the specified rectangle(s) in the order listed in the array. For any
    * given rectangle, each pixel is not drawn more than once. If rectangles
    * intersect, the intersecting pixels are drawn multiple times.
    *
    */
    xcb_poly_fill_rectangle:                              #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, rectangles_len: u32, rectangles: *xcb_rectangle_t) -> xcb_void_cookie_t #c_call;
    xcb_poly_fill_rectangle_rectangles:                   #type (R: *xcb_poly_fill_rectangle_request_t) -> *xcb_rectangle_t #c_call;
    xcb_poly_fill_rectangle_rectangles_length:            #type (R: *xcb_poly_fill_rectangle_request_t) -> s32 #c_call;
    xcb_poly_fill_rectangle_rectangles_iterator:          #type (R: *xcb_poly_fill_rectangle_request_t) -> xcb_rectangle_iterator_t #c_call;
    xcb_poly_fill_arc_sizeof:                             #type (_buffer: *void, arcs_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_fill_arc_checked:                            #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, arcs_len: u32, arcs: *xcb_arc_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_poly_fill_arc:                                    #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, arcs_len: u32, arcs: *xcb_arc_t) -> xcb_void_cookie_t #c_call;
    xcb_poly_fill_arc_arcs:                               #type (R: *xcb_poly_fill_arc_request_t) -> *xcb_arc_t #c_call;
    xcb_poly_fill_arc_arcs_length:                        #type (R: *xcb_poly_fill_arc_request_t) -> s32 #c_call;
    xcb_poly_fill_arc_arcs_iterator:                      #type (R: *xcb_poly_fill_arc_request_t) -> xcb_arc_iterator_t #c_call;
    xcb_put_image_sizeof:                                 #type (_buffer: *void, data_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_put_image_checked:                                #type (c: *xcb_connection_t, format: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, width: u16, height: u16, dst_x: s16, dst_y: s16, left_pad: u8, depth: u8, data_len: u32, data: *u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_put_image:                                        #type (c: *xcb_connection_t, format: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, width: u16, height: u16, dst_x: s16, dst_y: s16, left_pad: u8, depth: u8, data_len: u32, data: *u8) -> xcb_void_cookie_t #c_call;
    xcb_put_image_data:                                   #type (R: *xcb_put_image_request_t) -> *u8 #c_call;
    xcb_put_image_data_length:                            #type (R: *xcb_put_image_request_t) -> s32 #c_call;
    xcb_put_image_data_end:                               #type (R: *xcb_put_image_request_t) -> xcb_generic_iterator_t #c_call;
    xcb_get_image_sizeof:                                 #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_image:                                        #type (c: *xcb_connection_t, format: u8, drawable: xcb_drawable_t, x: s16, y: s16, width: u16, height: u16, plane_mask: u32) -> xcb_get_image_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_image_unchecked:                              #type (c: *xcb_connection_t, format: u8, drawable: xcb_drawable_t, x: s16, y: s16, width: u16, height: u16, plane_mask: u32) -> xcb_get_image_cookie_t #c_call;
    xcb_get_image_data:                                   #type (R: *xcb_get_image_reply_t) -> *u8 #c_call;
    xcb_get_image_data_length:                            #type (R: *xcb_get_image_reply_t) -> s32 #c_call;
    xcb_get_image_data_end:                               #type (R: *xcb_get_image_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_image_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_image_reply:                                  #type (c: *xcb_connection_t, cookie: xcb_get_image_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_image_reply_t #c_call;
    xcb_poly_text_8_sizeof:                               #type (_buffer: *void, items_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_text_8_checked:                              #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, x: s16, y: s16, items_len: u32, items: *u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_poly_text_8:                                      #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, x: s16, y: s16, items_len: u32, items: *u8) -> xcb_void_cookie_t #c_call;
    xcb_poly_text_8_items:                                #type (R: *xcb_poly_text_8_request_t) -> *u8 #c_call;
    xcb_poly_text_8_items_length:                         #type (R: *xcb_poly_text_8_request_t) -> s32 #c_call;
    xcb_poly_text_8_items_end:                            #type (R: *xcb_poly_text_8_request_t) -> xcb_generic_iterator_t #c_call;
    xcb_poly_text_16_sizeof:                              #type (_buffer: *void, items_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_poly_text_16_checked:                             #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, x: s16, y: s16, items_len: u32, items: *u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_poly_text_16:                                     #type (c: *xcb_connection_t, drawable: xcb_drawable_t, gc: xcb_gcontext_t, x: s16, y: s16, items_len: u32, items: *u8) -> xcb_void_cookie_t #c_call;
    xcb_poly_text_16_items:                               #type (R: *xcb_poly_text_16_request_t) -> *u8 #c_call;
    xcb_poly_text_16_items_length:                        #type (R: *xcb_poly_text_16_request_t) -> s32 #c_call;
    xcb_poly_text_16_items_end:                           #type (R: *xcb_poly_text_16_request_t) -> xcb_generic_iterator_t #c_call;
    xcb_image_text_8_sizeof:                              #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief Draws text
    *
    * @param c The connection
    * @param string_len The length of the \a string. Note that this parameter limited by 255 due to
    * using 8 bits!
    * @param drawable The drawable (Window or Pixmap) to draw text on.
    * @param gc The graphics context to use.
    * \n
    * The following graphics context components are used: plane-mask, foreground,
    * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
    * @param x The x coordinate of the first character, relative to the origin of \a drawable.
    * @param y The y coordinate of the first character, relative to the origin of \a drawable.
    * @param string The string to draw. Only the first 255 characters are relevant due to the data
    * type of \a string_len.
    * @return A cookie
    *
    * Fills the destination rectangle with the background pixel from \a gc, then
    * paints the text with the foreground pixel from \a gc. The upper-left corner of
    * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
    * the height is font-ascent + font-descent. The overall-width, font-ascent and
    * font-descent are as returned by `xcb_query_text_extents` (TODO).
    *
    * Note that using X core fonts is deprecated (but still supported) in favor of
    * client-side rendering using Xft.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_image_text_8_checked:                             #type (c: *xcb_connection_t, string_len: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, x: s16, y: s16, _string: *u8) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Draws text
    *
    * @param c The connection
    * @param string_len The length of the \a string. Note that this parameter limited by 255 due to
    * using 8 bits!
    * @param drawable The drawable (Window or Pixmap) to draw text on.
    * @param gc The graphics context to use.
    * \n
    * The following graphics context components are used: plane-mask, foreground,
    * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
    * @param x The x coordinate of the first character, relative to the origin of \a drawable.
    * @param y The y coordinate of the first character, relative to the origin of \a drawable.
    * @param string The string to draw. Only the first 255 characters are relevant due to the data
    * type of \a string_len.
    * @return A cookie
    *
    * Fills the destination rectangle with the background pixel from \a gc, then
    * paints the text with the foreground pixel from \a gc. The upper-left corner of
    * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
    * the height is font-ascent + font-descent. The overall-width, font-ascent and
    * font-descent are as returned by `xcb_query_text_extents` (TODO).
    *
    * Note that using X core fonts is deprecated (but still supported) in favor of
    * client-side rendering using Xft.
    *
    */
    xcb_image_text_8:                                     #type (c: *xcb_connection_t, string_len: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, x: s16, y: s16, _string: *u8) -> xcb_void_cookie_t #c_call;
    xcb_image_text_8_string:                              #type (R: *xcb_image_text_8_request_t) -> *u8 #c_call;
    xcb_image_text_8_string_length:                       #type (R: *xcb_image_text_8_request_t) -> s32 #c_call;
    xcb_image_text_8_string_end:                          #type (R: *xcb_image_text_8_request_t) -> xcb_generic_iterator_t #c_call;
    xcb_image_text_16_sizeof:                             #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief Draws text
    *
    * @param c The connection
    * @param string_len The length of the \a string in characters. Note that this parameter limited by
    * 255 due to using 8 bits!
    * @param drawable The drawable (Window or Pixmap) to draw text on.
    * @param gc The graphics context to use.
    * \n
    * The following graphics context components are used: plane-mask, foreground,
    * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
    * @param x The x coordinate of the first character, relative to the origin of \a drawable.
    * @param y The y coordinate of the first character, relative to the origin of \a drawable.
    * @param string The string to draw. Only the first 255 characters are relevant due to the data
    * type of \a string_len. Every character uses 2 bytes (hence the 16 in this
    * request's name).
    * @return A cookie
    *
    * Fills the destination rectangle with the background pixel from \a gc, then
    * paints the text with the foreground pixel from \a gc. The upper-left corner of
    * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
    * the height is font-ascent + font-descent. The overall-width, font-ascent and
    * font-descent are as returned by `xcb_query_text_extents` (TODO).
    *
    * Note that using X core fonts is deprecated (but still supported) in favor of
    * client-side rendering using Xft.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_image_text_16_checked:                            #type (c: *xcb_connection_t, string_len: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, x: s16, y: s16, _string: *xcb_char2b_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Draws text
    *
    * @param c The connection
    * @param string_len The length of the \a string in characters. Note that this parameter limited by
    * 255 due to using 8 bits!
    * @param drawable The drawable (Window or Pixmap) to draw text on.
    * @param gc The graphics context to use.
    * \n
    * The following graphics context components are used: plane-mask, foreground,
    * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
    * @param x The x coordinate of the first character, relative to the origin of \a drawable.
    * @param y The y coordinate of the first character, relative to the origin of \a drawable.
    * @param string The string to draw. Only the first 255 characters are relevant due to the data
    * type of \a string_len. Every character uses 2 bytes (hence the 16 in this
    * request's name).
    * @return A cookie
    *
    * Fills the destination rectangle with the background pixel from \a gc, then
    * paints the text with the foreground pixel from \a gc. The upper-left corner of
    * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
    * the height is font-ascent + font-descent. The overall-width, font-ascent and
    * font-descent are as returned by `xcb_query_text_extents` (TODO).
    *
    * Note that using X core fonts is deprecated (but still supported) in favor of
    * client-side rendering using Xft.
    *
    */
    xcb_image_text_16:                                    #type (c: *xcb_connection_t, string_len: u8, drawable: xcb_drawable_t, gc: xcb_gcontext_t, x: s16, y: s16, _string: *xcb_char2b_t) -> xcb_void_cookie_t #c_call;
    xcb_image_text_16_string:                             #type (R: *xcb_image_text_16_request_t) -> *xcb_char2b_t #c_call;
    xcb_image_text_16_string_length:                      #type (R: *xcb_image_text_16_request_t) -> s32 #c_call;
    xcb_image_text_16_string_iterator:                    #type (R: *xcb_image_text_16_request_t) -> xcb_char2b_iterator_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_create_colormap_checked:                          #type (c: *xcb_connection_t, alloc: u8, mid: xcb_colormap_t, window: xcb_window_t, visual: xcb_visualid_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_create_colormap:                                  #type (c: *xcb_connection_t, alloc: u8, mid: xcb_colormap_t, window: xcb_window_t, visual: xcb_visualid_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_free_colormap_checked:                            #type (c: *xcb_connection_t, cmap: xcb_colormap_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_free_colormap:                                    #type (c: *xcb_connection_t, cmap: xcb_colormap_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_copy_colormap_and_free_checked:                   #type (c: *xcb_connection_t, mid: xcb_colormap_t, src_cmap: xcb_colormap_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_copy_colormap_and_free:                           #type (c: *xcb_connection_t, mid: xcb_colormap_t, src_cmap: xcb_colormap_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_install_colormap_checked:                         #type (c: *xcb_connection_t, cmap: xcb_colormap_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_install_colormap:                                 #type (c: *xcb_connection_t, cmap: xcb_colormap_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_uninstall_colormap_checked:                       #type (c: *xcb_connection_t, cmap: xcb_colormap_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_uninstall_colormap:                               #type (c: *xcb_connection_t, cmap: xcb_colormap_t) -> xcb_void_cookie_t #c_call;
    xcb_list_installed_colormaps_sizeof:                  #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_list_installed_colormaps:                         #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_list_installed_colormaps_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_list_installed_colormaps_unchecked:               #type (c: *xcb_connection_t, window: xcb_window_t) -> xcb_list_installed_colormaps_cookie_t #c_call;
    xcb_list_installed_colormaps_cmaps:                   #type (R: *xcb_list_installed_colormaps_reply_t) -> *xcb_colormap_t #c_call;
    xcb_list_installed_colormaps_cmaps_length:            #type (R: *xcb_list_installed_colormaps_reply_t) -> s32 #c_call;
    xcb_list_installed_colormaps_cmaps_end:               #type (R: *xcb_list_installed_colormaps_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_list_installed_colormaps_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_list_installed_colormaps_reply:                   #type (c: *xcb_connection_t, cookie: xcb_list_installed_colormaps_cookie_t, e: **xcb_generic_error_t) -> *xcb_list_installed_colormaps_reply_t #c_call;
    /**
    * @brief Allocate a color
    *
    * @param c The connection
    * @param cmap TODO
    * @param red The red value of your color.
    * @param green The green value of your color.
    * @param blue The blue value of your color.
    * @return A cookie
    *
    * Allocates a read-only colormap entry corresponding to the closest RGB value
    * supported by the hardware. If you are using TrueColor, you can take a shortcut
    * and directly calculate the color pixel value to avoid the round trip. But, for
    * example, on 16-bit color setups (VNC), you can easily get the closest supported
    * RGB value to the RGB value you are specifying.
    *
    */
    xcb_alloc_color:                                      #type (c: *xcb_connection_t, cmap: xcb_colormap_t, red: u16, green: u16, blue: u16) -> xcb_alloc_color_cookie_t #c_call;
    /**
    * @brief Allocate a color
    *
    * @param c The connection
    * @param cmap TODO
    * @param red The red value of your color.
    * @param green The green value of your color.
    * @param blue The blue value of your color.
    * @return A cookie
    *
    * Allocates a read-only colormap entry corresponding to the closest RGB value
    * supported by the hardware. If you are using TrueColor, you can take a shortcut
    * and directly calculate the color pixel value to avoid the round trip. But, for
    * example, on 16-bit color setups (VNC), you can easily get the closest supported
    * RGB value to the RGB value you are specifying.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_alloc_color_unchecked:                            #type (c: *xcb_connection_t, cmap: xcb_colormap_t, red: u16, green: u16, blue: u16) -> xcb_alloc_color_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_alloc_color_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_alloc_color_reply:                                #type (c: *xcb_connection_t, cookie: xcb_alloc_color_cookie_t, e: **xcb_generic_error_t) -> *xcb_alloc_color_reply_t #c_call;
    xcb_alloc_named_color_sizeof:                         #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_alloc_named_color:                                #type (c: *xcb_connection_t, cmap: xcb_colormap_t, name_len: u16, name: *u8) -> xcb_alloc_named_color_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_alloc_named_color_unchecked:                      #type (c: *xcb_connection_t, cmap: xcb_colormap_t, name_len: u16, name: *u8) -> xcb_alloc_named_color_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_alloc_named_color_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_alloc_named_color_reply:                          #type (c: *xcb_connection_t, cookie: xcb_alloc_named_color_cookie_t, e: **xcb_generic_error_t) -> *xcb_alloc_named_color_reply_t #c_call;
    xcb_alloc_color_cells_sizeof:                         #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_alloc_color_cells:                                #type (c: *xcb_connection_t, contiguous: u8, cmap: xcb_colormap_t, colors: u16, planes: u16) -> xcb_alloc_color_cells_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_alloc_color_cells_unchecked:                      #type (c: *xcb_connection_t, contiguous: u8, cmap: xcb_colormap_t, colors: u16, planes: u16) -> xcb_alloc_color_cells_cookie_t #c_call;
    xcb_alloc_color_cells_pixels:                         #type (R: *xcb_alloc_color_cells_reply_t) -> *u32 #c_call;
    xcb_alloc_color_cells_pixels_length:                  #type (R: *xcb_alloc_color_cells_reply_t) -> s32 #c_call;
    xcb_alloc_color_cells_pixels_end:                     #type (R: *xcb_alloc_color_cells_reply_t) -> xcb_generic_iterator_t #c_call;
    xcb_alloc_color_cells_masks:                          #type (R: *xcb_alloc_color_cells_reply_t) -> *u32 #c_call;
    xcb_alloc_color_cells_masks_length:                   #type (R: *xcb_alloc_color_cells_reply_t) -> s32 #c_call;
    xcb_alloc_color_cells_masks_end:                      #type (R: *xcb_alloc_color_cells_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_alloc_color_cells_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_alloc_color_cells_reply:                          #type (c: *xcb_connection_t, cookie: xcb_alloc_color_cells_cookie_t, e: **xcb_generic_error_t) -> *xcb_alloc_color_cells_reply_t #c_call;
    xcb_alloc_color_planes_sizeof:                        #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_alloc_color_planes:                               #type (c: *xcb_connection_t, contiguous: u8, cmap: xcb_colormap_t, colors: u16, reds: u16, greens: u16, blues: u16) -> xcb_alloc_color_planes_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_alloc_color_planes_unchecked:                     #type (c: *xcb_connection_t, contiguous: u8, cmap: xcb_colormap_t, colors: u16, reds: u16, greens: u16, blues: u16) -> xcb_alloc_color_planes_cookie_t #c_call;
    xcb_alloc_color_planes_pixels:                        #type (R: *xcb_alloc_color_planes_reply_t) -> *u32 #c_call;
    xcb_alloc_color_planes_pixels_length:                 #type (R: *xcb_alloc_color_planes_reply_t) -> s32 #c_call;
    xcb_alloc_color_planes_pixels_end:                    #type (R: *xcb_alloc_color_planes_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_alloc_color_planes_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_alloc_color_planes_reply:                         #type (c: *xcb_connection_t, cookie: xcb_alloc_color_planes_cookie_t, e: **xcb_generic_error_t) -> *xcb_alloc_color_planes_reply_t #c_call;
    xcb_free_colors_sizeof:                               #type (_buffer: *void, pixels_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_free_colors_checked:                              #type (c: *xcb_connection_t, cmap: xcb_colormap_t, plane_mask: u32, pixels_len: u32, pixels: *u32) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_free_colors:                                      #type (c: *xcb_connection_t, cmap: xcb_colormap_t, plane_mask: u32, pixels_len: u32, pixels: *u32) -> xcb_void_cookie_t #c_call;
    xcb_free_colors_pixels:                               #type (R: *xcb_free_colors_request_t) -> *u32 #c_call;
    xcb_free_colors_pixels_length:                        #type (R: *xcb_free_colors_request_t) -> s32 #c_call;
    xcb_free_colors_pixels_end:                           #type (R: *xcb_free_colors_request_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_coloritem_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_coloritem_t)
    */
    xcb_coloritem_next:                                   #type (i: *xcb_coloritem_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_coloritem_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_coloritem_end:                                    #type (i: xcb_coloritem_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_store_colors_sizeof:                              #type (_buffer: *void, items_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_store_colors_checked:                             #type (c: *xcb_connection_t, cmap: xcb_colormap_t, items_len: u32, items: *xcb_coloritem_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_store_colors:                                     #type (c: *xcb_connection_t, cmap: xcb_colormap_t, items_len: u32, items: *xcb_coloritem_t) -> xcb_void_cookie_t #c_call;
    xcb_store_colors_items:                               #type (R: *xcb_store_colors_request_t) -> *xcb_coloritem_t #c_call;
    xcb_store_colors_items_length:                        #type (R: *xcb_store_colors_request_t) -> s32 #c_call;
    xcb_store_colors_items_iterator:                      #type (R: *xcb_store_colors_request_t) -> xcb_coloritem_iterator_t #c_call;
    xcb_store_named_color_sizeof:                         #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_store_named_color_checked:                        #type (c: *xcb_connection_t, flags: u8, cmap: xcb_colormap_t, pixel: u32, name_len: u16, name: *u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_store_named_color:                                #type (c: *xcb_connection_t, flags: u8, cmap: xcb_colormap_t, pixel: u32, name_len: u16, name: *u8) -> xcb_void_cookie_t #c_call;
    xcb_store_named_color_name:                           #type (R: *xcb_store_named_color_request_t) -> *u8 #c_call;
    xcb_store_named_color_name_length:                    #type (R: *xcb_store_named_color_request_t) -> s32 #c_call;
    xcb_store_named_color_name_end:                       #type (R: *xcb_store_named_color_request_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_rgb_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_rgb_t)
    */
    xcb_rgb_next:                                         #type (i: *xcb_rgb_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_rgb_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_rgb_end:                                          #type (i: xcb_rgb_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_query_colors_sizeof:                              #type (_buffer: *void, pixels_len: u32) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_query_colors:                                     #type (c: *xcb_connection_t, cmap: xcb_colormap_t, pixels_len: u32, pixels: *u32) -> xcb_query_colors_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_query_colors_unchecked:                           #type (c: *xcb_connection_t, cmap: xcb_colormap_t, pixels_len: u32, pixels: *u32) -> xcb_query_colors_cookie_t #c_call;
    xcb_query_colors_colors:                              #type (R: *xcb_query_colors_reply_t) -> *xcb_rgb_t #c_call;
    xcb_query_colors_colors_length:                       #type (R: *xcb_query_colors_reply_t) -> s32 #c_call;
    xcb_query_colors_colors_iterator:                     #type (R: *xcb_query_colors_reply_t) -> xcb_rgb_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_query_colors_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_query_colors_reply:                               #type (c: *xcb_connection_t, cookie: xcb_query_colors_cookie_t, e: **xcb_generic_error_t) -> *xcb_query_colors_reply_t #c_call;
    xcb_lookup_color_sizeof:                              #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_lookup_color:                                     #type (c: *xcb_connection_t, cmap: xcb_colormap_t, name_len: u16, name: *u8) -> xcb_lookup_color_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_lookup_color_unchecked:                           #type (c: *xcb_connection_t, cmap: xcb_colormap_t, name_len: u16, name: *u8) -> xcb_lookup_color_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_lookup_color_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_lookup_color_reply:                               #type (c: *xcb_connection_t, cookie: xcb_lookup_color_cookie_t, e: **xcb_generic_error_t) -> *xcb_lookup_color_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_create_cursor_checked:                            #type (c: *xcb_connection_t, cid: xcb_cursor_t, source: xcb_pixmap_t, mask: xcb_pixmap_t, fore_red: u16, fore_green: u16, fore_blue: u16, back_red: u16, back_green: u16, back_blue: u16, x: u16, y: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_create_cursor:                                    #type (c: *xcb_connection_t, cid: xcb_cursor_t, source: xcb_pixmap_t, mask: xcb_pixmap_t, fore_red: u16, fore_green: u16, fore_blue: u16, back_red: u16, back_green: u16, back_blue: u16, x: u16, y: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief create cursor
    *
    * @param c The connection
    * @param cid The ID with which you will refer to the cursor, created by `xcb_generate_id`.
    * @param source_font In which font to look for the cursor glyph.
    * @param mask_font In which font to look for the mask glyph.
    * @param source_char The glyph of \a source_font to use.
    * @param mask_char The glyph of \a mask_font to use as a mask: Pixels which are set to 1 define
    * which source pixels are displayed. All pixels which are set to 0 are not
    * displayed.
    * @param fore_red The red value of the foreground color.
    * @param fore_green The green value of the foreground color.
    * @param fore_blue The blue value of the foreground color.
    * @param back_red The red value of the background color.
    * @param back_green The green value of the background color.
    * @param back_blue The blue value of the background color.
    * @return A cookie
    *
    * Creates a cursor from a font glyph. X provides a set of standard cursor shapes
    * in a special font named cursor. Applications are encouraged to use this
    * interface for their cursors because the font can be customized for the
    * individual display type.
    *
    * All pixels which are set to 1 in the source will use the foreground color (as
    * specified by \a fore_red, \a fore_green and \a fore_blue). All pixels set to 0
    * will use the background color (as specified by \a back_red, \a back_green and
    * \a back_blue).
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_create_glyph_cursor_checked:                      #type (c: *xcb_connection_t, cid: xcb_cursor_t, source_font: xcb_font_t, mask_font: xcb_font_t, source_char: u16, mask_char: u16, fore_red: u16, fore_green: u16, fore_blue: u16, back_red: u16, back_green: u16, back_blue: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief create cursor
    *
    * @param c The connection
    * @param cid The ID with which you will refer to the cursor, created by `xcb_generate_id`.
    * @param source_font In which font to look for the cursor glyph.
    * @param mask_font In which font to look for the mask glyph.
    * @param source_char The glyph of \a source_font to use.
    * @param mask_char The glyph of \a mask_font to use as a mask: Pixels which are set to 1 define
    * which source pixels are displayed. All pixels which are set to 0 are not
    * displayed.
    * @param fore_red The red value of the foreground color.
    * @param fore_green The green value of the foreground color.
    * @param fore_blue The blue value of the foreground color.
    * @param back_red The red value of the background color.
    * @param back_green The green value of the background color.
    * @param back_blue The blue value of the background color.
    * @return A cookie
    *
    * Creates a cursor from a font glyph. X provides a set of standard cursor shapes
    * in a special font named cursor. Applications are encouraged to use this
    * interface for their cursors because the font can be customized for the
    * individual display type.
    *
    * All pixels which are set to 1 in the source will use the foreground color (as
    * specified by \a fore_red, \a fore_green and \a fore_blue). All pixels set to 0
    * will use the background color (as specified by \a back_red, \a back_green and
    * \a back_blue).
    *
    */
    xcb_create_glyph_cursor:                              #type (c: *xcb_connection_t, cid: xcb_cursor_t, source_font: xcb_font_t, mask_font: xcb_font_t, source_char: u16, mask_char: u16, fore_red: u16, fore_green: u16, fore_blue: u16, back_red: u16, back_green: u16, back_blue: u16) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Deletes a cursor
    *
    * @param c The connection
    * @param cursor The cursor to destroy.
    * @return A cookie
    *
    * Deletes the association between the cursor resource ID and the specified
    * cursor. The cursor is freed when no other resource references it.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_free_cursor_checked:                              #type (c: *xcb_connection_t, cursor: xcb_cursor_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Deletes a cursor
    *
    * @param c The connection
    * @param cursor The cursor to destroy.
    * @return A cookie
    *
    * Deletes the association between the cursor resource ID and the specified
    * cursor. The cursor is freed when no other resource references it.
    *
    */
    xcb_free_cursor:                                      #type (c: *xcb_connection_t, cursor: xcb_cursor_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_recolor_cursor_checked:                           #type (c: *xcb_connection_t, cursor: xcb_cursor_t, fore_red: u16, fore_green: u16, fore_blue: u16, back_red: u16, back_green: u16, back_blue: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_recolor_cursor:                                   #type (c: *xcb_connection_t, cursor: xcb_cursor_t, fore_red: u16, fore_green: u16, fore_blue: u16, back_red: u16, back_green: u16, back_blue: u16) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_query_best_size:                                  #type (c: *xcb_connection_t, _class: xcb_query_shape_of_t, drawable: xcb_drawable_t, width: u16, height: u16) -> xcb_query_best_size_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_query_best_size_unchecked:                        #type (c: *xcb_connection_t, _class: xcb_query_shape_of_t, drawable: xcb_drawable_t, width: u16, height: u16) -> xcb_query_best_size_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_query_best_size_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_query_best_size_reply:                            #type (c: *xcb_connection_t, cookie: xcb_query_best_size_cookie_t, e: **xcb_generic_error_t) -> *xcb_query_best_size_reply_t #c_call;
    xcb_query_extension_sizeof:                           #type (_buffer: *void) -> s32 #c_call;
    /**
    * @brief check if extension is present
    *
    * @param c The connection
    * @param name_len The length of \a name in bytes.
    * @param name The name of the extension to query, for example "RANDR". This is case
    * sensitive!
    * @return A cookie
    *
    * Determines if the specified extension is present on this X11 server.
    *
    * Every extension has a unique `major_opcode` to identify requests, the minor
    * opcodes and request formats are extension-specific. If the extension provides
    * events and errors, the `first_event` and `first_error` fields in the reply are
    * set accordingly.
    *
    * There should rarely be a need to use this request directly, XCB provides the
    * `xcb_get_extension_data` function instead.
    *
    */
    xcb_query_extension:                                  #type (c: *xcb_connection_t, name_len: u16, name: *u8) -> xcb_query_extension_cookie_t #c_call;
    /**
    * @brief check if extension is present
    *
    * @param c The connection
    * @param name_len The length of \a name in bytes.
    * @param name The name of the extension to query, for example "RANDR". This is case
    * sensitive!
    * @return A cookie
    *
    * Determines if the specified extension is present on this X11 server.
    *
    * Every extension has a unique `major_opcode` to identify requests, the minor
    * opcodes and request formats are extension-specific. If the extension provides
    * events and errors, the `first_event` and `first_error` fields in the reply are
    * set accordingly.
    *
    * There should rarely be a need to use this request directly, XCB provides the
    * `xcb_get_extension_data` function instead.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_query_extension_unchecked:                        #type (c: *xcb_connection_t, name_len: u16, name: *u8) -> xcb_query_extension_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_query_extension_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_query_extension_reply:                            #type (c: *xcb_connection_t, cookie: xcb_query_extension_cookie_t, e: **xcb_generic_error_t) -> *xcb_query_extension_reply_t #c_call;
    xcb_list_extensions_sizeof:                           #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_list_extensions:                                  #type (c: *xcb_connection_t) -> xcb_list_extensions_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_list_extensions_unchecked:                        #type (c: *xcb_connection_t) -> xcb_list_extensions_cookie_t #c_call;
    xcb_list_extensions_names_length:                     #type (R: *xcb_list_extensions_reply_t) -> s32 #c_call;
    xcb_list_extensions_names_iterator:                   #type (R: *xcb_list_extensions_reply_t) -> xcb_str_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_list_extensions_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_list_extensions_reply:                            #type (c: *xcb_connection_t, cookie: xcb_list_extensions_cookie_t, e: **xcb_generic_error_t) -> *xcb_list_extensions_reply_t #c_call;
    xcb_change_keyboard_mapping_sizeof:                   #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_keyboard_mapping_checked:                  #type (c: *xcb_connection_t, keycode_count: u8, first_keycode: xcb_keycode_t, keysyms_per_keycode: u8, keysyms: *xcb_keysym_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_change_keyboard_mapping:                          #type (c: *xcb_connection_t, keycode_count: u8, first_keycode: xcb_keycode_t, keysyms_per_keycode: u8, keysyms: *xcb_keysym_t) -> xcb_void_cookie_t #c_call;
    xcb_change_keyboard_mapping_keysyms:                  #type (R: *xcb_change_keyboard_mapping_request_t) -> *xcb_keysym_t #c_call;
    xcb_change_keyboard_mapping_keysyms_length:           #type (R: *xcb_change_keyboard_mapping_request_t) -> s32 #c_call;
    xcb_change_keyboard_mapping_keysyms_end:              #type (R: *xcb_change_keyboard_mapping_request_t) -> xcb_generic_iterator_t #c_call;
    xcb_get_keyboard_mapping_sizeof:                      #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_keyboard_mapping:                             #type (c: *xcb_connection_t, first_keycode: xcb_keycode_t, count: u8) -> xcb_get_keyboard_mapping_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_keyboard_mapping_unchecked:                   #type (c: *xcb_connection_t, first_keycode: xcb_keycode_t, count: u8) -> xcb_get_keyboard_mapping_cookie_t #c_call;
    xcb_get_keyboard_mapping_keysyms:                     #type (R: *xcb_get_keyboard_mapping_reply_t) -> *xcb_keysym_t #c_call;
    xcb_get_keyboard_mapping_keysyms_length:              #type (R: *xcb_get_keyboard_mapping_reply_t) -> s32 #c_call;
    xcb_get_keyboard_mapping_keysyms_end:                 #type (R: *xcb_get_keyboard_mapping_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_keyboard_mapping_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_keyboard_mapping_reply:                       #type (c: *xcb_connection_t, cookie: xcb_get_keyboard_mapping_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_keyboard_mapping_reply_t #c_call;
    xcb_change_keyboard_control_value_list_serialize:     #type (_buffer: **void, value_mask: u32, _aux: *xcb_change_keyboard_control_value_list_t) -> s32 #c_call;
    xcb_change_keyboard_control_value_list_unpack:        #type (_buffer: *void, value_mask: u32, _aux: *xcb_change_keyboard_control_value_list_t) -> s32 #c_call;
    xcb_change_keyboard_control_value_list_sizeof:        #type (_buffer: *void, value_mask: u32) -> s32 #c_call;
    xcb_change_keyboard_control_sizeof:                   #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_keyboard_control_checked:                  #type (c: *xcb_connection_t, value_mask: u32, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_change_keyboard_control:                          #type (c: *xcb_connection_t, value_mask: u32, value_list: *void) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_keyboard_control_aux_checked:              #type (c: *xcb_connection_t, value_mask: u32, value_list: *xcb_change_keyboard_control_value_list_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_change_keyboard_control_aux:                      #type (c: *xcb_connection_t, value_mask: u32, value_list: *xcb_change_keyboard_control_value_list_t) -> xcb_void_cookie_t #c_call;
    xcb_change_keyboard_control_value_list:               #type (R: *xcb_change_keyboard_control_request_t) -> *void #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_keyboard_control:                             #type (c: *xcb_connection_t) -> xcb_get_keyboard_control_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_keyboard_control_unchecked:                   #type (c: *xcb_connection_t) -> xcb_get_keyboard_control_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_keyboard_control_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_keyboard_control_reply:                       #type (c: *xcb_connection_t, cookie: xcb_get_keyboard_control_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_keyboard_control_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_bell_checked:                                     #type (c: *xcb_connection_t, percent: s8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_bell:                                             #type (c: *xcb_connection_t, percent: s8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_pointer_control_checked:                   #type (c: *xcb_connection_t, acceleration_numerator: s16, acceleration_denominator: s16, threshold: s16, do_acceleration: u8, do_threshold: u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_change_pointer_control:                           #type (c: *xcb_connection_t, acceleration_numerator: s16, acceleration_denominator: s16, threshold: s16, do_acceleration: u8, do_threshold: u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_pointer_control:                              #type (c: *xcb_connection_t) -> xcb_get_pointer_control_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_pointer_control_unchecked:                    #type (c: *xcb_connection_t) -> xcb_get_pointer_control_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_pointer_control_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_pointer_control_reply:                        #type (c: *xcb_connection_t, cookie: xcb_get_pointer_control_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_pointer_control_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_set_screen_saver_checked:                         #type (c: *xcb_connection_t, timeout: s16, interval: s16, prefer_blanking: u8, allow_exposures: u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_set_screen_saver:                                 #type (c: *xcb_connection_t, timeout: s16, interval: s16, prefer_blanking: u8, allow_exposures: u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_screen_saver:                                 #type (c: *xcb_connection_t) -> xcb_get_screen_saver_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_screen_saver_unchecked:                       #type (c: *xcb_connection_t) -> xcb_get_screen_saver_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_screen_saver_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_screen_saver_reply:                           #type (c: *xcb_connection_t, cookie: xcb_get_screen_saver_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_screen_saver_reply_t #c_call;
    xcb_change_hosts_sizeof:                              #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_change_hosts_checked:                             #type (c: *xcb_connection_t, mode: u8, family: u8, address_len: u16, address: *u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_change_hosts:                                     #type (c: *xcb_connection_t, mode: u8, family: u8, address_len: u16, address: *u8) -> xcb_void_cookie_t #c_call;
    xcb_change_hosts_address:                             #type (R: *xcb_change_hosts_request_t) -> *u8 #c_call;
    xcb_change_hosts_address_length:                      #type (R: *xcb_change_hosts_request_t) -> s32 #c_call;
    xcb_change_hosts_address_end:                         #type (R: *xcb_change_hosts_request_t) -> xcb_generic_iterator_t #c_call;
    xcb_host_sizeof:                                      #type (_buffer: *void) -> s32 #c_call;
    xcb_host_address:                                     #type (R: *xcb_host_t) -> *u8 #c_call;
    xcb_host_address_length:                              #type (R: *xcb_host_t) -> s32 #c_call;
    xcb_host_address_end:                                 #type (R: *xcb_host_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Get the next element of the iterator
    * @param i Pointer to a xcb_host_iterator_t
    *
    * Get the next element in the iterator. The member rem is
    * decreased by one. The member data points to the next
    * element. The member index is increased by sizeof(xcb_host_t)
    */
    xcb_host_next:                                        #type (i: *xcb_host_iterator_t) -> void #c_call;
    /**
    * Return the iterator pointing to the last element
    * @param i An xcb_host_iterator_t
    * @return  The iterator pointing to the last element
    *
    * Set the current element in the iterator to the last element.
    * The member rem is set to 0. The member data points to the
    * last element.
    */
    xcb_host_end:                                         #type (i: xcb_host_iterator_t) -> xcb_generic_iterator_t #c_call;
    xcb_list_hosts_sizeof:                                #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_list_hosts:                                       #type (c: *xcb_connection_t) -> xcb_list_hosts_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_list_hosts_unchecked:                             #type (c: *xcb_connection_t) -> xcb_list_hosts_cookie_t #c_call;
    xcb_list_hosts_hosts_length:                          #type (R: *xcb_list_hosts_reply_t) -> s32 #c_call;
    xcb_list_hosts_hosts_iterator:                        #type (R: *xcb_list_hosts_reply_t) -> xcb_host_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_list_hosts_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_list_hosts_reply:                                 #type (c: *xcb_connection_t, cookie: xcb_list_hosts_cookie_t, e: **xcb_generic_error_t) -> *xcb_list_hosts_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_set_access_control_checked:                       #type (c: *xcb_connection_t, mode: u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_set_access_control:                               #type (c: *xcb_connection_t, mode: u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_set_close_down_mode_checked:                      #type (c: *xcb_connection_t, mode: u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_set_close_down_mode:                              #type (c: *xcb_connection_t, mode: u8) -> xcb_void_cookie_t #c_call;
    /**
    * @brief kills a client
    *
    * @param c The connection
    * @param resource Any resource belonging to the client (for example a Window), used to identify
    * the client connection.
    * \n
    * The special value of `XCB_KILL_ALL_TEMPORARY`, the resources of all clients
    * that have terminated in `RetainTemporary` (TODO) are destroyed.
    * @return A cookie
    *
    * Forces a close down of the client that created the specified \a resource.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_kill_client_checked:                              #type (c: *xcb_connection_t, resource: u32) -> xcb_void_cookie_t #c_call;
    /**
    * @brief kills a client
    *
    * @param c The connection
    * @param resource Any resource belonging to the client (for example a Window), used to identify
    * the client connection.
    * \n
    * The special value of `XCB_KILL_ALL_TEMPORARY`, the resources of all clients
    * that have terminated in `RetainTemporary` (TODO) are destroyed.
    * @return A cookie
    *
    * Forces a close down of the client that created the specified \a resource.
    *
    */
    xcb_kill_client:                                      #type (c: *xcb_connection_t, resource: u32) -> xcb_void_cookie_t #c_call;
    xcb_rotate_properties_sizeof:                         #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_rotate_properties_checked:                        #type (c: *xcb_connection_t, window: xcb_window_t, atoms_len: u16, delta: s16, atoms: *xcb_atom_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_rotate_properties:                                #type (c: *xcb_connection_t, window: xcb_window_t, atoms_len: u16, delta: s16, atoms: *xcb_atom_t) -> xcb_void_cookie_t #c_call;
    xcb_rotate_properties_atoms:                          #type (R: *xcb_rotate_properties_request_t) -> *xcb_atom_t #c_call;
    xcb_rotate_properties_atoms_length:                   #type (R: *xcb_rotate_properties_request_t) -> s32 #c_call;
    xcb_rotate_properties_atoms_end:                      #type (R: *xcb_rotate_properties_request_t) -> xcb_generic_iterator_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_force_screen_saver_checked:                       #type (c: *xcb_connection_t, mode: u8) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_force_screen_saver:                               #type (c: *xcb_connection_t, mode: u8) -> xcb_void_cookie_t #c_call;
    xcb_set_pointer_mapping_sizeof:                       #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_set_pointer_mapping:                              #type (c: *xcb_connection_t, map_len: u8, map: *u8) -> xcb_set_pointer_mapping_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_set_pointer_mapping_unchecked:                    #type (c: *xcb_connection_t, map_len: u8, map: *u8) -> xcb_set_pointer_mapping_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_set_pointer_mapping_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_set_pointer_mapping_reply:                        #type (c: *xcb_connection_t, cookie: xcb_set_pointer_mapping_cookie_t, e: **xcb_generic_error_t) -> *xcb_set_pointer_mapping_reply_t #c_call;
    xcb_get_pointer_mapping_sizeof:                       #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_pointer_mapping:                              #type (c: *xcb_connection_t) -> xcb_get_pointer_mapping_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_pointer_mapping_unchecked:                    #type (c: *xcb_connection_t) -> xcb_get_pointer_mapping_cookie_t #c_call;
    xcb_get_pointer_mapping_map:                          #type (R: *xcb_get_pointer_mapping_reply_t) -> *u8 #c_call;
    xcb_get_pointer_mapping_map_length:                   #type (R: *xcb_get_pointer_mapping_reply_t) -> s32 #c_call;
    xcb_get_pointer_mapping_map_end:                      #type (R: *xcb_get_pointer_mapping_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_pointer_mapping_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_pointer_mapping_reply:                        #type (c: *xcb_connection_t, cookie: xcb_get_pointer_mapping_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_pointer_mapping_reply_t #c_call;
    xcb_set_modifier_mapping_sizeof:                      #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_set_modifier_mapping:                             #type (c: *xcb_connection_t, keycodes_per_modifier: u8, keycodes: *xcb_keycode_t) -> xcb_set_modifier_mapping_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_set_modifier_mapping_unchecked:                   #type (c: *xcb_connection_t, keycodes_per_modifier: u8, keycodes: *xcb_keycode_t) -> xcb_set_modifier_mapping_cookie_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_set_modifier_mapping_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_set_modifier_mapping_reply:                       #type (c: *xcb_connection_t, cookie: xcb_set_modifier_mapping_cookie_t, e: **xcb_generic_error_t) -> *xcb_set_modifier_mapping_reply_t #c_call;
    xcb_get_modifier_mapping_sizeof:                      #type (_buffer: *void) -> s32 #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_get_modifier_mapping:                             #type (c: *xcb_connection_t) -> xcb_get_modifier_mapping_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will cause
    * a reply to be generated. Any returned error will be
    * placed in the event queue.
    */
    xcb_get_modifier_mapping_unchecked:                   #type (c: *xcb_connection_t) -> xcb_get_modifier_mapping_cookie_t #c_call;
    xcb_get_modifier_mapping_keycodes:                    #type (R: *xcb_get_modifier_mapping_reply_t) -> *xcb_keycode_t #c_call;
    xcb_get_modifier_mapping_keycodes_length:             #type (R: *xcb_get_modifier_mapping_reply_t) -> s32 #c_call;
    xcb_get_modifier_mapping_keycodes_end:                #type (R: *xcb_get_modifier_mapping_reply_t) -> xcb_generic_iterator_t #c_call;
    /**
    * Return the reply
    * @param c      The connection
    * @param cookie The cookie
    * @param e      The xcb_generic_error_t supplied
    *
    * Returns the reply of the request asked by
    *
    * The parameter @p e supplied to this function must be NULL if
    * xcb_get_modifier_mapping_unchecked(). is used.
    * Otherwise, it stores the error if any.
    *
    * The returned value must be freed by the caller using free().
    */
    xcb_get_modifier_mapping_reply:                       #type (c: *xcb_connection_t, cookie: xcb_get_modifier_mapping_cookie_t, e: **xcb_generic_error_t) -> *xcb_get_modifier_mapping_reply_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    * This form can be used only if the request will not cause
    * a reply to be generated. Any returned error will be
    * saved for handling by xcb_request_check().
    */
    xcb_no_operation_checked:                             #type (c: *xcb_connection_t) -> xcb_void_cookie_t #c_call;
    /**
    *
    * @param c The connection
    * @return A cookie
    *
    * Delivers a request to the X server.
    *
    */
    xcb_no_operation:                                     #type (c: *xcb_connection_t) -> xcb_void_cookie_t #c_call;
    /**
    * @brief Forces any buffered output to be written to the server.
    * @param c The connection to the X server.
    * @return > @c 0 on success, <= @c 0 otherwise.
    *
    * Forces any buffered output to be written to the server. Blocks
    * until the write is complete.
    */
    xcb_flush:                                            #type (c: *xcb_connection_t) -> s32 #c_call;
    /**
    * @brief Returns the maximum request length that this server accepts.
    * @param c The connection to the X server.
    * @return The maximum request length field.
    *
    * In the absence of the BIG-REQUESTS extension, returns the
    * maximum request length field from the connection setup data, which
    * may be as much as 65535. If the server supports BIG-REQUESTS, then
    * the maximum request length field from the reply to the
    * BigRequestsEnable request will be returned instead.
    *
    * Note that this length is measured in four-byte units, making the
    * theoretical maximum lengths roughly 256kB without BIG-REQUESTS and
    * 16GB with.
    */
    xcb_get_maximum_request_length:                       #type (c: *xcb_connection_t) -> u32 #c_call;
    /**
    * @brief Prefetch the maximum request length without blocking.
    * @param c The connection to the X server.
    *
    * Without blocking, does as much work as possible toward computing
    * the maximum request length accepted by the X server.
    *
    * Invoking this function may cause a call to xcb_big_requests_enable,
    * but will not block waiting for the reply.
    * xcb_get_maximum_request_length will return the prefetched data
    * after possibly blocking while the reply is retrieved.
    *
    * Note that in order for this function to be fully non-blocking, the
    * application must previously have called
    * xcb_prefetch_extension_data(c, &xcb_big_requests_id) and the reply
    * must have already arrived.
    */
    xcb_prefetch_maximum_request_length:                  #type (c: *xcb_connection_t) -> void #c_call;
    /**
    * @brief Returns the next event or error from the server.
    * @param c The connection to the X server.
    * @return The next event from the server.
    *
    * Returns the next event or error from the server, or returns null in
    * the event of an I/O error. Blocks until either an event or error
    * arrive, or an I/O error occurs.
    */
    xcb_wait_for_event:                                   #type (c: *xcb_connection_t) -> *xcb_generic_event_t #c_call;
    /**
    * @brief Returns the next event or error from the server.
    * @param c The connection to the X server.
    * @return The next event from the server.
    *
    * Returns the next event or error from the server, if one is
    * available, or returns @c NULL otherwise. If no event is available, that
    * might be because an I/O error like connection close occurred while
    * attempting to read the next event, in which case the connection is
    * shut down when this function returns.
    */
    xcb_poll_for_event:                                   #type (c: *xcb_connection_t) -> *xcb_generic_event_t #c_call;
    /**
    * @brief Returns the next event without reading from the connection.
    * @param c The connection to the X server.
    * @return The next already queued event from the server.
    *
    * This is a version of xcb_poll_for_event that only examines the
    * event queue for new events. The function doesn't try to read new
    * events from the connection if no queued events are found.
    *
    * This function is useful for callers that know in advance that all
    * interesting events have already been read from the connection. For
    * example, callers might use xcb_wait_for_reply and be interested
    * only of events that preceded a specific reply.
    */
    xcb_poll_for_queued_event:                            #type (c: *xcb_connection_t) -> *xcb_generic_event_t #c_call;
    /**
    * @brief Returns the next event from a special queue
    */
    xcb_poll_for_special_event:                           #type (c: *xcb_connection_t, se: *xcb_special_event_t) -> *xcb_generic_event_t #c_call;
    /**
    * @brief Returns the next event from a special queue, blocking until one arrives
    */
    xcb_wait_for_special_event:                           #type (c: *xcb_connection_t, se: *xcb_special_event_t) -> *xcb_generic_event_t #c_call;
    /**
    * @brief Listen for a special event
    */
    xcb_register_for_special_xge:                         #type (c: *xcb_connection_t, ext: *xcb_extension_t, eid: u32, stamp: *u32) -> *xcb_special_event_t #c_call;
    /**
    * @brief Stop listening for a special event
    */
    xcb_unregister_for_special_event:                     #type (c: *xcb_connection_t, se: *xcb_special_event_t) -> void #c_call;
    /**
    * @brief Return the error for a request, or NULL if none can ever arrive.
    * @param c The connection to the X server.
    * @param cookie The request cookie.
    * @return The error for the request, or NULL if none can ever arrive.
    *
    * The xcb_void_cookie_t cookie supplied to this function must have resulted
    * from a call to xcb_[request_name]_checked().  This function will block
    * until one of two conditions happens.  If an error is received, it will be
    * returned.  If a reply to a subsequent request has already arrived, no error
    * can arrive for this request, so this function will return NULL.
    *
    * Note that this function will perform a sync if needed to ensure that the
    * sequence number will advance beyond that provided in cookie; this is a
    * convenience to avoid races in determining whether the sync is needed.
    */
    xcb_request_check:                                    #type (c: *xcb_connection_t, cookie: xcb_void_cookie_t) -> *xcb_generic_error_t #c_call;
    /**
    * @brief Discards the reply for a request.
    * @param c The connection to the X server.
    * @param sequence The request sequence number from a cookie.
    *
    * Discards the reply for a request. Additionally, any error generated
    * by the request is also discarded (unless it was an _unchecked request
    * and the error has already arrived).
    *
    * This function will not block even if the reply is not yet available.
    *
    * Note that the sequence really does have to come from an xcb cookie;
    * this function is not designed to operate on socket-handoff replies.
    */
    xcb_discard_reply:                                    #type (c: *xcb_connection_t, sequence: u32) -> void #c_call;
    /**
    * @brief Discards the reply for a request, given by a 64bit sequence number
    * @param c The connection to the X server.
    * @param sequence 64-bit sequence number as returned by xcb_send_request64().
    *
    * Discards the reply for a request. Additionally, any error generated
    * by the request is also discarded (unless it was an _unchecked request
    * and the error has already arrived).
    *
    * This function will not block even if the reply is not yet available.
    *
    * Note that the sequence really does have to come from xcb_send_request64();
    * the cookie sequence number is defined as "unsigned" int and therefore
    * not 64-bit on all platforms.
    * This function is not designed to operate on socket-handoff replies.
    *
    * Unlike its xcb_discard_reply() counterpart, the given sequence number is not
    * automatically "widened" to 64-bit.
    */
    xcb_discard_reply64:                                  #type (c: *xcb_connection_t, sequence: u64) -> void #c_call;
    /**
    * @brief Caches reply information from QueryExtension requests.
    * @param c The connection.
    * @param ext The extension data.
    * @return A pointer to the xcb_query_extension_reply_t for the extension.
    *
    * This function is the primary interface to the "extension cache",
    * which caches reply information from QueryExtension
    * requests. Invoking this function may cause a call to
    * xcb_query_extension to retrieve extension information from the
    * server, and may block until extension data is received from the
    * server.
    *
    * The result must not be freed. This storage is managed by the cache
    * itself.
    */
    xcb_get_extension_data:                               #type (c: *xcb_connection_t, ext: *xcb_extension_t) -> *xcb_query_extension_reply_t #c_call;
    /**
    * @brief Prefetch of extension data into the extension cache
    * @param c The connection.
    * @param ext The extension data.
    *
    * This function allows a "prefetch" of extension data into the
    * extension cache. Invoking the function may cause a call to
    * xcb_query_extension, but will not block waiting for the
    * reply. xcb_get_extension_data will return the prefetched data after
    * possibly blocking while it is retrieved.
    */
    xcb_prefetch_extension_data:                          #type (c: *xcb_connection_t, ext: *xcb_extension_t) -> void #c_call;
    /**
    * @brief Access the data returned by the server.
    * @param c The connection.
    * @return A pointer to an xcb_setup_t structure.
    *
    * Accessor for the data returned by the server when the xcb_connection_t
    * was initialized. This data includes
    * - the server's required format for images,
    * - a list of available visuals,
    * - a list of available screens,
    * - the server's maximum request length (in the absence of the
    * BIG-REQUESTS extension),
    * - and other assorted information.
    *
    * See the X protocol specification for more details.
    *
    * The result must not be freed.
    */
    xcb_get_setup:                                        #type (c: *xcb_connection_t) -> *xcb_setup_t #c_call;
    /**
    * @brief Access the file descriptor of the connection.
    * @param c The connection.
    * @return The file descriptor.
    *
    * Accessor for the file descriptor that was passed to the
    * xcb_connect_to_fd call that returned @p c.
    */
    xcb_get_file_descriptor:                              #type (c: *xcb_connection_t) -> s32 #c_call;
    /**
    * @brief Test whether the connection has shut down due to a fatal error.
    * @param c The connection.
    * @return > 0 if the connection is in an error state; 0 otherwise.
    *
    * Some errors that occur in the context of an xcb_connection_t
    * are unrecoverable. When such an error occurs, the
    * connection is shut down and further operations on the
    * xcb_connection_t have no effect, but memory will not be freed until
    * xcb_disconnect() is called on the xcb_connection_t.
    *
    * @return XCB_CONN_ERROR, because of socket errors, pipe errors or other stream errors.
    * @return XCB_CONN_CLOSED_EXT_NOTSUPPORTED, when extension not supported.
    * @return XCB_CONN_CLOSED_MEM_INSUFFICIENT, when memory not available.
    * @return XCB_CONN_CLOSED_REQ_LEN_EXCEED, exceeding request length that server accepts.
    * @return XCB_CONN_CLOSED_PARSE_ERR, error during parsing display string.
    * @return XCB_CONN_CLOSED_INVALID_SCREEN, because the server does not have a screen matching the display.
    */
    xcb_connection_has_error:                             #type (c: *xcb_connection_t) -> s32 #c_call;
    /**
    * @brief Connects to the X server.
    * @param fd The file descriptor.
    * @param auth_info Authentication data.
    * @return A newly allocated xcb_connection_t structure.
    *
    * Connects to an X server, given the open socket @p fd and the
    * xcb_auth_info_t @p auth_info. The file descriptor @p fd is
    * bidirectionally connected to an X server. If the connection
    * should be unauthenticated, @p auth_info must be @c
    * NULL.
    *
    * Always returns a non-NULL pointer to a xcb_connection_t, even on failure.
    * Callers need to use xcb_connection_has_error() to check for failure.
    * When finished, use xcb_disconnect() to close the connection and free
    * the structure.
    */
    xcb_connect_to_fd:                                    #type (fd: s32, auth_info: *xcb_auth_info_t) -> *xcb_connection_t #c_call;
    /**
    * @brief Closes the connection.
    * @param c The connection.
    *
    * Closes the file descriptor and frees all memory associated with the
    * connection @c c. If @p c is @c NULL, nothing is done.
    */
    xcb_disconnect:                                       #type (c: *xcb_connection_t) -> void #c_call;
    /**
    * @brief Parses a display string name in the form documented by X(7x).
    * @param name The name of the display.
    * @param host A pointer to a malloc'd copy of the hostname.
    * @param display A pointer to the display number.
    * @param screen A pointer to the screen number.
    * @return 0 on failure, non 0 otherwise.
    *
    * Parses the display string name @p display_name in the form
    * documented by X(7x). Has no side effects on failure. If
    * @p displayname is @c NULL or empty, it uses the environment
    * variable DISPLAY. @p hostp is a pointer to a newly allocated string
    * that contain the host name. @p displayp is set to the display
    * number and @p screenp to the preferred screen number. @p screenp
    * can be @c NULL. If @p displayname does not contain a screen number,
    * it is set to @c 0.
    */
    xcb_parse_display:                                    #type (name: *u8, host: **u8, display: *s32, screen: *s32) -> s32 #c_call;
    /**
    * @brief Connects to the X server.
    * @param displayname The name of the display.
    * @param screenp A pointer to a preferred screen number.
    * @return A newly allocated xcb_connection_t structure.
    *
    * Connects to the X server specified by @p displayname. If @p
    * displayname is @c NULL, uses the value of the DISPLAY environment
    * variable. If a particular screen on that server is preferred, the
    * int pointed to by @p screenp (if not @c NULL) will be set to that
    * screen; otherwise the screen will be set to 0.
    *
    * Always returns a non-NULL pointer to a xcb_connection_t, even on failure.
    * Callers need to use xcb_connection_has_error() to check for failure.
    * When finished, use xcb_disconnect() to close the connection and free
    * the structure.
    */
    xcb_connect:                                          #type (displayname: *u8, screenp: *s32) -> *xcb_connection_t #c_call;
    /**
    * @brief Connects to the X server, using an authorization information.
    * @param display The name of the display.
    * @param auth The authorization information.
    * @param screen A pointer to a preferred screen number.
    * @return A newly allocated xcb_connection_t structure.
    *
    * Connects to the X server specified by @p displayname, using the
    * authorization @p auth. If a particular screen on that server is
    * preferred, the int pointed to by @p screenp (if not @c NULL) will
    * be set to that screen; otherwise @p screenp will be set to 0.
    *
    * Always returns a non-NULL pointer to a xcb_connection_t, even on failure.
    * Callers need to use xcb_connection_has_error() to check for failure.
    * When finished, use xcb_disconnect() to close the connection and free
    * the structure.
    */
    xcb_connect_to_display_with_auth_info:                #type (display: *u8, auth: *xcb_auth_info_t, screen: *s32) -> *xcb_connection_t #c_call;
    /**
    * @brief Allocates an XID for a new object.
    * @param c The connection.
    * @return A newly allocated XID, or -1 on failure.
    *
    * Allocates an XID for a new object. Typically used just prior to
    * various object creation functions, such as xcb_create_window.
    */
    xcb_generate_id:                                      #type (c: *xcb_connection_t) -> u32 #c_call;
    /**
    * @brief Obtain number of bytes read from the connection.
    * @param c The connection
    * @return Number of bytes read from the server.
    *
    * Returns cumulative number of bytes received from the connection.
    *
    * This retrieves the total number of bytes read from this connection,
    * to be used for diagnostic/monitoring/informative purposes.
    */
    xcb_total_read:                                       #type (c: *xcb_connection_t) -> u64 #c_call;
    /**
    *
    * @brief Obtain number of bytes written to the connection.
    * @param c The connection
    * @return Number of bytes written to the server.
    *
    * Returns cumulative number of bytes sent to the connection.
    *
    * This retrieves the total number of bytes written to this connection,
    * to be used for diagnostic/monitoring/informative purposes.
    */
    xcb_total_written:                                    #type (c: *xcb_connection_t) -> u64 #c_call;
}

#scope_file

