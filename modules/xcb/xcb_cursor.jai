//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



xcb_cursor_context_t :: struct {}

XCB_Cursor_Symbols :: struct #type_info_procedures_are_void_pointers {
    /**
    * Create a new @ref xcb_cursor_context_t.
    *
    * @param conn A working XCB connection, which will be used until you destroy
    * the context with @ref xcb_cursor_context_free ().
    * @param screen The xcb_screen_t to use (e.g. for getting the RESOURCE_MANAGER
    * contents, for creating cursors on, for using the size as fallback when
    * calculating the best cursor size).
    * @param ctx A pointer to an xcb_cursor_context_t* which will be modified to
    * refer to the newly created context.
    * @return 0 on success, a negative error code otherwise.
    *
    * @ingroup xcb_cursor_context_t
    */
    context_new:  #type (conn: *xcb_connection_t, screen: *xcb_screen_t, ctx: **xcb_cursor_context_t) -> s32 #c_call;
    /**
    * Loads the specified cursor, either from the cursor theme or by falling back
    * to the X11 "cursor" font.
    *
    * @param ctx A cursor context, created with @ref xcb_cursor_context_new ()
    * @param name The name of the cursor to load, e.g. "watch".
    * @returns The ID of the created cursor. When you are done using it, use
    * xcb_free_cursor. Calling @ref xcb_cursor_context_free () will NOT free the
    * created cursor.
    *
    */
    load_cursor:  #type (ctx: *xcb_cursor_context_t, name: *u8) -> xcb_cursor_t #c_call;
    /**
    * Frees the @ref xcb_cursor_context_t.
    *
    * @param ctx The context to free.
    *
    */
    context_free: #type (ctx: *xcb_cursor_context_t) -> void #c_call;
}

#scope_file
