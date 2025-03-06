x11_translate_key_code :: (xkey: X11.KeySym) -> Input.Key_Code {
    using Input.Key_Code;
    using X11.Known_Keysyms;

    key := cast(X11.Known_Keysyms)xkey;

    if key == 32 || key == XK_KP_Space return SPACEBAR;

    if key == XK_Left || key == XK_KP_Left
        return ARROW_LEFT;
    if key == XK_Right || key == XK_KP_Right
        return ARROW_RIGHT;
    if key == XK_Up || key == XK_KP_Up
        return ARROW_UP;
    if key == XK_Down || key == XK_KP_Down
        return ARROW_DOWN;
    if (key == XK_Shift_L) || (key == XK_Shift_R)
        return SHIFT;
    if key == XK_Escape
        return ESCAPE;
    if key == XK_Return
        return ENTER;
    if (key == XK_Control_L) || (key == XK_Control_R)
        return CTRL;
    if (key == XK_Alt_L) || (key == XK_Alt_R) || (key == XK_ISO_Level3_Shift)
        return .ALT;
    if (key == XK_Meta_L) || (key == XK_Meta_R)
        return .META;
    if key == XK_BackSpace
        return BACKSPACE;
    if key == XK_Delete || key == XK_KP_Delete
        return DELETE;
    if key == XK_Tab || key == XK_KP_Tab || key == XK_ISO_Left_Tab
        return TAB;
    if key == XK_F1
        return F1;
    if key == XK_F2
        return F2;
    if key == XK_F3
        return F3;
    if key == XK_F4
        return F4;
    if key == XK_F5
        return F5;
    if key == XK_F6
        return F6;
    if key == XK_F7
        return F7;
    if key == XK_F8
        return F8;
    if key == XK_F9
        return F9;
    if key == XK_F10
        return F10;
    if key == XK_F11
        return F11;
    if key == XK_F12
        return F12;
    if key == XK_F13
        return F13;
    if key == XK_F14
        return F14;
    if key == XK_F15
        return F15;
    if key == XK_F16
        return F16;
    if key == XK_F17
        return F17;
    if key == XK_F18
        return F18;
    if key == XK_F19
        return F19;
    if key == XK_F20
        return F20;
    if key == XK_F21
        return F21;
    if key == XK_F22
        return F22;
    if key == XK_F23
        return F23;
    if key == XK_F24
        return F24;
    if key == XK_Home || key == XK_KP_Home
        return HOME;
    if key == XK_End || key == XK_KP_End
        return END;
    if key == XK_Insert || key == XK_KP_Insert
        return INSERT;
    if key == XK_Page_Up || key == XK_KP_Page_Up
        return PAGE_UP;
    if key == XK_Page_Down || key == XK_KP_Page_Down
        return PAGE_DOWN;

    if key == XK_KP_Enter
        return NUMPAD_ENTER;
    if key == XK_KP_Multiply
        return NUMPAD_MULTIPLY;
    if key == XK_KP_Add
        return NUMPAD_ADD;
    if key == XK_KP_Subtract
        return NUMPAD_SUBTRACT;
    if key == XK_KP_Decimal
        return NUMPAD_DECIMAL;
    if key == XK_KP_Divide
        return NUMPAD_DIVIDE;
    if key == XK_KP_0
        return NUMPAD_0;
    if key == XK_KP_1
        return NUMPAD_1;
    if key == XK_KP_2
        return NUMPAD_2;
    if key == XK_KP_3
        return NUMPAD_3;
    if key == XK_KP_4
        return NUMPAD_4;
    if key == XK_KP_5
        return NUMPAD_5;
    if key == XK_KP_6
        return NUMPAD_6;
    if key == XK_KP_7
        return NUMPAD_7;
    if key == XK_KP_8
        return NUMPAD_8;
    if key == XK_KP_9
        return NUMPAD_9;

    key = key & 0xFF;
    if (key >= #char "a") && (key <= #char "z") return cast(Input.Key_Code) (key - 0x20);
    if key > 32 && key < 127 return cast(Input.Key_Code) key;

    return UNKNOWN;
}

X11 :: struct {
    XID :: u64;
    KeySym :: XID;

    using Known_Keysyms :: enum KeySym {
        XK_ISO_Left_Tab            ::  0xfe20;

        XK_BackSpace               ::  0xff08;
        XK_Tab                     ::  0xff09;
        XK_Linefeed                ::  0xff0a;
        XK_Clear                   ::  0xff0b;
        XK_Return                  ::  0xff0d;
        XK_Pause                   ::  0xff13;
        XK_Scroll_Lock             ::  0xff14;
        XK_Sys_Req                 ::  0xff15;
        XK_Escape                  ::  0xff1b;
        XK_Delete                  ::  0xffff;

        XK_Home                    ::  0xff50;
        XK_Left                    ::  0xff51;
        XK_Up                      ::  0xff52;
        XK_Right                   ::  0xff53;
        XK_Down                    ::  0xff54;
        XK_Prior                   ::  0xff55;
        XK_Page_Up                 ::  0xff55;
        XK_Next                    ::  0xff56;
        XK_Page_Down               ::  0xff56;
        XK_End                     ::  0xff57;
        XK_Begin                   ::  0xff58;

        XK_F1                      ::  0xffbe;
        XK_F2                      ::  0xffbf;
        XK_F3                      ::  0xffc0;
        XK_F4                      ::  0xffc1;
        XK_F5                      ::  0xffc2;
        XK_F6                      ::  0xffc3;
        XK_F7                      ::  0xffc4;
        XK_F8                      ::  0xffc5;
        XK_F9                      ::  0xffc6;
        XK_F10                     ::  0xffc7;
        XK_F11                     ::  0xffc8;
        XK_L1                      ::  0xffc8;
        XK_F12                     ::  0xffc9;
        XK_L2                      ::  0xffc9;
        XK_F13                     ::  0xffca;
        XK_L3                      ::  0xffca;
        XK_F14                     ::  0xffcb;
        XK_L4                      ::  0xffcb;
        XK_F15                     ::  0xffcc;
        XK_L5                      ::  0xffcc;
        XK_F16                     ::  0xffcd;
        XK_L6                      ::  0xffcd;
        XK_F17                     ::  0xffce;
        XK_L7                      ::  0xffce;
        XK_F18                     ::  0xffcf;
        XK_L8                      ::  0xffcf;
        XK_F19                     ::  0xffd0;
        XK_L9                      ::  0xffd0;
        XK_F20                     ::  0xffd1;
        XK_L10                     ::  0xffd1;
        XK_F21                     ::  0xffd2;
        XK_R1                      ::  0xffd2;
        XK_F22                     ::  0xffd3;
        XK_R2                      ::  0xffd3;
        XK_F23                     ::  0xffd4;
        XK_R3                      ::  0xffd4;
        XK_F24                     ::  0xffd5;
        XK_R4                      ::  0xffd5;
        XK_F25                     ::  0xffd6;
        XK_R5                      ::  0xffd6;
        XK_F26                     ::  0xffd7;
        XK_R6                      ::  0xffd7;
        XK_F27                     ::  0xffd8;
        XK_R7                      ::  0xffd8;
        XK_F28                     ::  0xffd9;
        XK_R8                      ::  0xffd9;
        XK_F29                     ::  0xffda;
        XK_R9                      ::  0xffda;
        XK_F30                     ::  0xffdb;
        XK_R10                     ::  0xffdb;
        XK_F31                     ::  0xffdc;
        XK_R11                     ::  0xffdc;
        XK_F32                     ::  0xffdd;
        XK_R12                     ::  0xffdd;
        XK_F33                     ::  0xffde;
        XK_R13                     ::  0xffde;
        XK_F34                     ::  0xffdf;
        XK_R14                     ::  0xffdf;
        XK_F35                     ::  0xffe0;
        XK_R15                     ::  0xffe0;


        XK_Shift_L                 ::  0xffe1;
        XK_Shift_R                 ::  0xffe2;
        XK_Control_L               ::  0xffe3;
        XK_Control_R               ::  0xffe4;
        XK_Caps_Lock               ::  0xffe5;
        XK_Shift_Lock              ::  0xffe6;

        XK_Meta_L                  ::  0xffe7;
        XK_Meta_R                  ::  0xffe8;
        XK_Alt_L                   ::  0xffe9;
        XK_Alt_R                   ::  0xffea;
        XK_Super_L                 ::  0xffeb;
        XK_Super_R                 ::  0xffec;
        XK_Hyper_L                 ::  0xffed;
        XK_Hyper_R                 ::  0xffee;

        XK_space                   ::  0x0020;
        XK_exclam                  ::  0x0021;
        XK_quotedbl                ::  0x0022;
        XK_numbersign              ::  0x0023;
        XK_dollar                  ::  0x0024;
        XK_percent                 ::  0x0025;
        XK_ampersand               ::  0x0026;
        XK_apostrophe              ::  0x0027;
        XK_quoteright              ::  0x0027;
        XK_parenleft               ::  0x0028;
        XK_parenright              ::  0x0029;
        XK_asterisk                ::  0x002a;
        XK_plus                    ::  0x002b;
        XK_comma                   ::  0x002c;
        XK_minus                   ::  0x002d;
        XK_period                  ::  0x002e;
        XK_slash                   ::  0x002f;
        XK_0                       ::  0x0030;
        XK_1                       ::  0x0031;
        XK_2                       ::  0x0032;
        XK_3                       ::  0x0033;
        XK_4                       ::  0x0034;
        XK_5                       ::  0x0035;
        XK_6                       ::  0x0036;
        XK_7                       ::  0x0037;
        XK_8                       ::  0x0038;
        XK_9                       ::  0x0039;
        XK_colon                   ::  0x003a;
        XK_semicolon               ::  0x003b;
        XK_less                    ::  0x003c;
        XK_equal                   ::  0x003d;
        XK_greater                 ::  0x003e;
        XK_question                ::  0x003f;
        XK_at                      ::  0x0040;
        XK_A                       ::  0x0041;
        XK_B                       ::  0x0042;
        XK_C                       ::  0x0043;
        XK_D                       ::  0x0044;
        XK_E                       ::  0x0045;
        XK_F                       ::  0x0046;
        XK_G                       ::  0x0047;
        XK_H                       ::  0x0048;
        XK_I                       ::  0x0049;
        XK_J                       ::  0x004a;
        XK_K                       ::  0x004b;
        XK_L                       ::  0x004c;
        XK_M                       ::  0x004d;
        XK_N                       ::  0x004e;
        XK_O                       ::  0x004f;
        XK_P                       ::  0x0050;
        XK_Q                       ::  0x0051;
        XK_R                       ::  0x0052;
        XK_S                       ::  0x0053;
        XK_T                       ::  0x0054;
        XK_U                       ::  0x0055;
        XK_V                       ::  0x0056;
        XK_W                       ::  0x0057;
        XK_X                       ::  0x0058;
        XK_Y                       ::  0x0059;
        XK_Z                       ::  0x005a;
        XK_bracketleft             ::  0x005b;
        XK_backslash               ::  0x005c;
        XK_bracketright            ::  0x005d;
        XK_asciicircum             ::  0x005e;
        XK_underscore              ::  0x005f;
        XK_grave                   ::  0x0060;
        XK_quoteleft               ::  0x0060;
        XK_a                       ::  0x0061;
        XK_b                       ::  0x0062;
        XK_c                       ::  0x0063;
        XK_d                       ::  0x0064;
        XK_e                       ::  0x0065;
        XK_f                       ::  0x0066;
        XK_g                       ::  0x0067;
        XK_h                       ::  0x0068;
        XK_i                       ::  0x0069;
        XK_j                       ::  0x006a;
        XK_k                       ::  0x006b;
        XK_l                       ::  0x006c;
        XK_m                       ::  0x006d;
        XK_n                       ::  0x006e;
        XK_o                       ::  0x006f;
        XK_p                       ::  0x0070;
        XK_q                       ::  0x0071;
        XK_r                       ::  0x0072;
        XK_s                       ::  0x0073;
        XK_t                       ::  0x0074;
        XK_u                       ::  0x0075;
        XK_v                       ::  0x0076;
        XK_w                       ::  0x0077;
        XK_x                       ::  0x0078;
        XK_y                       ::  0x0079;
        XK_z                       ::  0x007a;
        XK_braceleft               ::  0x007b;
        XK_bar                     ::  0x007c;
        XK_braceright              ::  0x007d;
        XK_asciitilde              ::  0x007e;

        XK_Insert                  ::  0xff63;

        XK_KP_Space                ::  0xff80;
        XK_KP_Tab                  ::  0xff89;
        XK_KP_Enter                ::  0xff8d;
        XK_KP_F1                   ::  0xff91;
        XK_KP_F2                   ::  0xff92;
        XK_KP_F3                   ::  0xff93;
        XK_KP_F4                   ::  0xff94;
        XK_KP_Home                 ::  0xff95;
        XK_KP_Left                 ::  0xff96;
        XK_KP_Up                   ::  0xff97;
        XK_KP_Right                ::  0xff98;
        XK_KP_Down                 ::  0xff99;
        XK_KP_Prior                ::  0xff9a;
        XK_KP_Page_Up              ::  0xff9a;
        XK_KP_Next                 ::  0xff9b;
        XK_KP_Page_Down            ::  0xff9b;
        XK_KP_End                  ::  0xff9c;
        XK_KP_Begin                ::  0xff9d;
        XK_KP_Insert               ::  0xff9e;
        XK_KP_Delete               ::  0xff9f;
        XK_KP_Equal                ::  0xffbd;
        XK_KP_Multiply             ::  0xffaa;
        XK_KP_Add                  ::  0xffab;
        XK_KP_Separator            ::  0xffac;
        XK_KP_Subtract             ::  0xffad;
        XK_KP_Decimal              ::  0xffae;
        XK_KP_Divide               ::  0xffaf;
        XK_KP_0                    ::  0xffb0;
        XK_KP_1                    ::  0xffb1;
        XK_KP_2                    ::  0xffb2;
        XK_KP_3                    ::  0xffb3;
        XK_KP_4                    ::  0xffb4;
        XK_KP_5                    ::  0xffb5;
        XK_KP_6                    ::  0xffb6;
        XK_KP_7                    ::  0xffb7;
        XK_KP_8                    ::  0xffb8;
        XK_KP_9                    ::  0xffb9;

        XK_ISO_Level3_Shift        ::  0xfe03;
    }
}
