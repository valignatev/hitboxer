//
// This file was auto-generated using the following command:
//
// jai generate_bindings.jai
//



XCB_SYNC_MAJOR_VERSION :: 3;
XCB_SYNC_MINOR_VERSION :: 1;

XCB_SYNC_COUNTER :: 0;

XCB_SYNC_ALARM :: 1;

XCB_SYNC_INITIALIZE :: 0;

XCB_SYNC_LIST_SYSTEM_COUNTERS :: 1;

XCB_SYNC_CREATE_COUNTER :: 2;

XCB_SYNC_DESTROY_COUNTER :: 6;

XCB_SYNC_QUERY_COUNTER :: 5;

XCB_SYNC_AWAIT :: 7;

XCB_SYNC_CHANGE_COUNTER :: 4;

XCB_SYNC_SET_COUNTER :: 3;

XCB_SYNC_CREATE_ALARM :: 8;

XCB_SYNC_CHANGE_ALARM :: 9;

XCB_SYNC_DESTROY_ALARM :: 11;

XCB_SYNC_QUERY_ALARM :: 10;

XCB_SYNC_SET_PRIORITY :: 12;

XCB_SYNC_GET_PRIORITY :: 13;

XCB_SYNC_CREATE_FENCE :: 14;

XCB_SYNC_TRIGGER_FENCE :: 15;

XCB_SYNC_RESET_FENCE :: 16;

XCB_SYNC_DESTROY_FENCE :: 17;

XCB_SYNC_QUERY_FENCE :: 18;

XCB_SYNC_AWAIT_FENCE :: 19;

XCB_SYNC_COUNTER_NOTIFY :: 0;

XCB_SYNC_ALARM_NOTIFY :: 1;

xcb_sync_alarm_t :: u32;

xcb_sync_alarm_iterator_t :: struct {
    data:  *xcb_sync_alarm_t;
    rem:   s32;
    index: s32;
}

xcb_sync_alarmstate_t :: enum u32 {
    ACTIVE    :: 0;
    INACTIVE  :: 1;
    DESTROYED :: 2;

    XCB_SYNC_ALARMSTATE_ACTIVE    :: ACTIVE;
    XCB_SYNC_ALARMSTATE_INACTIVE  :: INACTIVE;
    XCB_SYNC_ALARMSTATE_DESTROYED :: DESTROYED;
}

xcb_sync_counter_t :: u32;

xcb_sync_counter_iterator_t :: struct {
    data:  *xcb_sync_counter_t;
    rem:   s32;
    index: s32;
}

xcb_sync_fence_t :: u32;

xcb_sync_fence_iterator_t :: struct {
    data:  *xcb_sync_fence_t;
    rem:   s32;
    index: s32;
}

xcb_sync_testtype_t :: enum u32 {
    POSITIVE_TRANSITION :: 0;
    NEGATIVE_TRANSITION :: 1;
    POSITIVE_COMPARISON :: 2;
    NEGATIVE_COMPARISON :: 3;

    XCB_SYNC_TESTTYPE_POSITIVE_TRANSITION :: POSITIVE_TRANSITION;
    XCB_SYNC_TESTTYPE_NEGATIVE_TRANSITION :: NEGATIVE_TRANSITION;
    XCB_SYNC_TESTTYPE_POSITIVE_COMPARISON :: POSITIVE_COMPARISON;
    XCB_SYNC_TESTTYPE_NEGATIVE_COMPARISON :: NEGATIVE_COMPARISON;
}

xcb_sync_valuetype_t :: enum u32 {
    ABSOLUTE :: 0;
    RELATIVE :: 1;

    XCB_SYNC_VALUETYPE_ABSOLUTE :: ABSOLUTE;
    XCB_SYNC_VALUETYPE_RELATIVE :: RELATIVE;
}

xcb_sync_ca_t :: enum u32 {
    COUNTER    :: 1;
    VALUE_TYPE :: 2;
    VALUE      :: 4;
    TEST_TYPE  :: 8;
    DELTA      :: 16;
    EVENTS     :: 32;

    XCB_SYNC_CA_COUNTER    :: COUNTER;
    XCB_SYNC_CA_VALUE_TYPE :: VALUE_TYPE;
    XCB_SYNC_CA_VALUE      :: VALUE;
    XCB_SYNC_CA_TEST_TYPE  :: TEST_TYPE;
    XCB_SYNC_CA_DELTA      :: DELTA;
    XCB_SYNC_CA_EVENTS     :: EVENTS;
}

xcb_sync_int64_t :: struct {
    hi: s32;
    lo: u32;
}

xcb_sync_int64_iterator_t :: struct {
    data:  *xcb_sync_int64_t;
    rem:   s32;
    index: s32;
}

xcb_sync_systemcounter_t :: struct {
    counter:    xcb_sync_counter_t;
    resolution: xcb_sync_int64_t;
    name_len:   u16;
}

xcb_sync_systemcounter_iterator_t :: struct {
    data:  *xcb_sync_systemcounter_t;
    rem:   s32;
    index: s32;
}

xcb_sync_trigger_t :: struct {
    counter:    xcb_sync_counter_t;
    wait_type:  u32;
    wait_value: xcb_sync_int64_t;
    test_type:  u32;
}

xcb_sync_trigger_iterator_t :: struct {
    data:  *xcb_sync_trigger_t;
    rem:   s32;
    index: s32;
}

xcb_sync_waitcondition_t :: struct {
    trigger:         xcb_sync_trigger_t;
    event_threshold: xcb_sync_int64_t;
}

xcb_sync_waitcondition_iterator_t :: struct {
    data:  *xcb_sync_waitcondition_t;
    rem:   s32;
    index: s32;
}

xcb_sync_counter_error_t :: struct {
    response_type: u8;
    error_code:    u8;
    sequence:      u16;
    bad_counter:   u32;
    minor_opcode:  u16;
    major_opcode:  u8;
}

xcb_sync_alarm_error_t :: struct {
    response_type: u8;
    error_code:    u8;
    sequence:      u16;
    bad_alarm:     u32;
    minor_opcode:  u16;
    major_opcode:  u8;
}

xcb_sync_initialize_cookie_t :: struct {
    sequence: u32;
}

xcb_sync_initialize_request_t :: struct {
    major_opcode:          u8;
    minor_opcode:          u8;
    length:                u16;
    desired_major_version: u8;
    desired_minor_version: u8;
}

xcb_sync_initialize_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    major_version: u8;
    minor_version: u8;
    pad1:          [22] u8;
}

xcb_sync_list_system_counters_cookie_t :: struct {
    sequence: u32;
}

xcb_sync_list_system_counters_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
}

xcb_sync_list_system_counters_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    counters_len:  u32;
    pad1:          [20] u8;
}

xcb_sync_create_counter_request_t :: struct {
    major_opcode:  u8;
    minor_opcode:  u8;
    length:        u16;
    id:            xcb_sync_counter_t;
    initial_value: xcb_sync_int64_t;
}

xcb_sync_destroy_counter_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    counter:      xcb_sync_counter_t;
}

xcb_sync_query_counter_cookie_t :: struct {
    sequence: u32;
}

xcb_sync_query_counter_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    counter:      xcb_sync_counter_t;
}

xcb_sync_query_counter_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    counter_value: xcb_sync_int64_t;
}

xcb_sync_await_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
}

xcb_sync_change_counter_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    counter:      xcb_sync_counter_t;
    amount:       xcb_sync_int64_t;
}

xcb_sync_set_counter_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    counter:      xcb_sync_counter_t;
    value:        xcb_sync_int64_t;
}

xcb_sync_create_alarm_value_list_t :: struct {
    counter:   xcb_sync_counter_t;
    valueType: u32;
    value:     xcb_sync_int64_t;
    testType:  u32;
    delta:     xcb_sync_int64_t;
    events:    u32;
}

xcb_sync_create_alarm_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    id:           xcb_sync_alarm_t;
    value_mask:   u32;
}

xcb_sync_change_alarm_value_list_t :: struct {
    counter:   xcb_sync_counter_t;
    valueType: u32;
    value:     xcb_sync_int64_t;
    testType:  u32;
    delta:     xcb_sync_int64_t;
    events:    u32;
}

xcb_sync_change_alarm_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    id:           xcb_sync_alarm_t;
    value_mask:   u32;
}

xcb_sync_destroy_alarm_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    alarm:        xcb_sync_alarm_t;
}

xcb_sync_query_alarm_cookie_t :: struct {
    sequence: u32;
}

xcb_sync_query_alarm_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    alarm:        xcb_sync_alarm_t;
}

xcb_sync_query_alarm_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    trigger:       xcb_sync_trigger_t;
    delta:         xcb_sync_int64_t;
    events:        u8;
    state:         u8;
    pad1:          [2] u8;
}

xcb_sync_set_priority_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    id:           u32;
    priority:     s32;
}

xcb_sync_get_priority_cookie_t :: struct {
    sequence: u32;
}

xcb_sync_get_priority_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    id:           u32;
}

xcb_sync_get_priority_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    priority:      s32;
}

xcb_sync_create_fence_request_t :: struct {
    major_opcode:        u8;
    minor_opcode:        u8;
    length:              u16;
    drawable:            xcb_drawable_t;
    fence:               xcb_sync_fence_t;
    initially_triggered: u8;
}

xcb_sync_trigger_fence_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    fence:        xcb_sync_fence_t;
}

xcb_sync_reset_fence_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    fence:        xcb_sync_fence_t;
}

xcb_sync_destroy_fence_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    fence:        xcb_sync_fence_t;
}

xcb_sync_query_fence_cookie_t :: struct {
    sequence: u32;
}

xcb_sync_query_fence_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
    fence:        xcb_sync_fence_t;
}

xcb_sync_query_fence_reply_t :: struct {
    response_type: u8;
    pad0:          u8;
    sequence:      u16;
    length:        u32;
    triggered:     u8;
    pad1:          [23] u8;
}

xcb_sync_await_fence_request_t :: struct {
    major_opcode: u8;
    minor_opcode: u8;
    length:       u16;
}

xcb_sync_counter_notify_event_t :: struct {
    response_type: u8;
    kind:          u8;
    sequence:      u16;
    counter:       xcb_sync_counter_t;
    wait_value:    xcb_sync_int64_t;
    counter_value: xcb_sync_int64_t;
    timestamp:     xcb_timestamp_t;
    count:         u16;
    destroyed:     u8;
    pad0:          u8;
}

xcb_sync_alarm_notify_event_t :: struct {
    response_type: u8;
    kind:          u8;
    sequence:      u16;
    alarm:         xcb_sync_alarm_t;
    counter_value: xcb_sync_int64_t;
    alarm_value:   xcb_sync_int64_t;
    timestamp:     xcb_timestamp_t;
    state:         u8;
    pad0:          [3] u8;
}

XCB_Sync_Symbols :: struct #type_info_procedures_are_void_pointers {
    id:                                     *xcb_extension_t;
    alarm_next:                             #type (i: *xcb_sync_alarm_iterator_t) -> void #c_call;
    alarm_end:                              #type (i: xcb_sync_alarm_iterator_t) -> xcb_generic_iterator_t #c_call;
    counter_next:                           #type (i: *xcb_sync_counter_iterator_t) -> void #c_call;
    counter_end:                            #type (i: xcb_sync_counter_iterator_t) -> xcb_generic_iterator_t #c_call;
    fence_next:                             #type (i: *xcb_sync_fence_iterator_t) -> void #c_call;
    fence_end:                              #type (i: xcb_sync_fence_iterator_t) -> xcb_generic_iterator_t #c_call;
    int64_next:                             #type (i: *xcb_sync_int64_iterator_t) -> void #c_call;
    int64_end:                              #type (i: xcb_sync_int64_iterator_t) -> xcb_generic_iterator_t #c_call;
    systemcounter_sizeof:                   #type (_buffer: *void) -> s32 #c_call;
    systemcounter_name:                     #type (R: *xcb_sync_systemcounter_t) -> *u8 #c_call;
    systemcounter_name_length:              #type (R: *xcb_sync_systemcounter_t) -> s32 #c_call;
    systemcounter_name_end:                 #type (R: *xcb_sync_systemcounter_t) -> xcb_generic_iterator_t #c_call;
    systemcounter_next:                     #type (i: *xcb_sync_systemcounter_iterator_t) -> void #c_call;
    systemcounter_end:                      #type (i: xcb_sync_systemcounter_iterator_t) -> xcb_generic_iterator_t #c_call;
    trigger_next:                           #type (i: *xcb_sync_trigger_iterator_t) -> void #c_call;
    trigger_end:                            #type (i: xcb_sync_trigger_iterator_t) -> xcb_generic_iterator_t #c_call;
    waitcondition_next:                     #type (i: *xcb_sync_waitcondition_iterator_t) -> void #c_call;
    waitcondition_end:                      #type (i: xcb_sync_waitcondition_iterator_t) -> xcb_generic_iterator_t #c_call;
    initialize:                             #type (c: *xcb_connection_t, desired_major_version: u8, desired_minor_version: u8) -> xcb_sync_initialize_cookie_t #c_call;
    initialize_unchecked:                   #type (c: *xcb_connection_t, desired_major_version: u8, desired_minor_version: u8) -> xcb_sync_initialize_cookie_t #c_call;
    initialize_reply:                       #type (c: *xcb_connection_t, cookie: xcb_sync_initialize_cookie_t, e: **xcb_generic_error_t) -> *xcb_sync_initialize_reply_t #c_call;
    list_system_counters_sizeof:            #type (_buffer: *void) -> s32 #c_call;
    list_system_counters:                   #type (c: *xcb_connection_t) -> xcb_sync_list_system_counters_cookie_t #c_call;
    list_system_counters_unchecked:         #type (c: *xcb_connection_t) -> xcb_sync_list_system_counters_cookie_t #c_call;
    list_system_counters_counters_length:   #type (R: *xcb_sync_list_system_counters_reply_t) -> s32 #c_call;
    list_system_counters_counters_iterator: #type (R: *xcb_sync_list_system_counters_reply_t) -> xcb_sync_systemcounter_iterator_t #c_call;
    list_system_counters_reply:             #type (c: *xcb_connection_t, cookie: xcb_sync_list_system_counters_cookie_t, e: **xcb_generic_error_t) -> *xcb_sync_list_system_counters_reply_t #c_call;
    create_counter_checked:                 #type (c: *xcb_connection_t, id: xcb_sync_counter_t, initial_value: xcb_sync_int64_t) -> xcb_void_cookie_t #c_call;
    create_counter:                         #type (c: *xcb_connection_t, id: xcb_sync_counter_t, initial_value: xcb_sync_int64_t) -> xcb_void_cookie_t #c_call;
    destroy_counter_checked:                #type (c: *xcb_connection_t, counter: xcb_sync_counter_t) -> xcb_void_cookie_t #c_call;
    destroy_counter:                        #type (c: *xcb_connection_t, counter: xcb_sync_counter_t) -> xcb_void_cookie_t #c_call;
    query_counter:                          #type (c: *xcb_connection_t, counter: xcb_sync_counter_t) -> xcb_sync_query_counter_cookie_t #c_call;
    query_counter_unchecked:                #type (c: *xcb_connection_t, counter: xcb_sync_counter_t) -> xcb_sync_query_counter_cookie_t #c_call;
    query_counter_reply:                    #type (c: *xcb_connection_t, cookie: xcb_sync_query_counter_cookie_t, e: **xcb_generic_error_t) -> *xcb_sync_query_counter_reply_t #c_call;
    await_sizeof:                           #type (_buffer: *void, wait_list_len: u32) -> s32 #c_call;
    await_checked:                          #type (c: *xcb_connection_t, wait_list_len: u32, wait_list: *xcb_sync_waitcondition_t) -> xcb_void_cookie_t #c_call;
    await:                                  #type (c: *xcb_connection_t, wait_list_len: u32, wait_list: *xcb_sync_waitcondition_t) -> xcb_void_cookie_t #c_call;
    await_wait_list:                        #type (R: *xcb_sync_await_request_t) -> *xcb_sync_waitcondition_t #c_call;
    await_wait_list_length:                 #type (R: *xcb_sync_await_request_t) -> s32 #c_call;
    await_wait_list_iterator:               #type (R: *xcb_sync_await_request_t) -> xcb_sync_waitcondition_iterator_t #c_call;
    change_counter_checked:                 #type (c: *xcb_connection_t, counter: xcb_sync_counter_t, amount: xcb_sync_int64_t) -> xcb_void_cookie_t #c_call;
    change_counter:                         #type (c: *xcb_connection_t, counter: xcb_sync_counter_t, amount: xcb_sync_int64_t) -> xcb_void_cookie_t #c_call;
    set_counter_checked:                    #type (c: *xcb_connection_t, counter: xcb_sync_counter_t, value: xcb_sync_int64_t) -> xcb_void_cookie_t #c_call;
    set_counter:                            #type (c: *xcb_connection_t, counter: xcb_sync_counter_t, value: xcb_sync_int64_t) -> xcb_void_cookie_t #c_call;
    create_alarm_value_list_serialize:      #type (_buffer: **void, value_mask: u32, _aux: *xcb_sync_create_alarm_value_list_t) -> s32 #c_call;
    create_alarm_value_list_unpack:         #type (_buffer: *void, value_mask: u32, _aux: *xcb_sync_create_alarm_value_list_t) -> s32 #c_call;
    create_alarm_value_list_sizeof:         #type (_buffer: *void, value_mask: u32) -> s32 #c_call;
    create_alarm_sizeof:                    #type (_buffer: *void) -> s32 #c_call;
    create_alarm_checked:                   #type (c: *xcb_connection_t, id: xcb_sync_alarm_t, value_mask: u32, value_list: *void) -> xcb_void_cookie_t #c_call;
    create_alarm:                           #type (c: *xcb_connection_t, id: xcb_sync_alarm_t, value_mask: u32, value_list: *void) -> xcb_void_cookie_t #c_call;
    create_alarm_aux_checked:               #type (c: *xcb_connection_t, id: xcb_sync_alarm_t, value_mask: u32, value_list: *xcb_sync_create_alarm_value_list_t) -> xcb_void_cookie_t #c_call;
    create_alarm_aux:                       #type (c: *xcb_connection_t, id: xcb_sync_alarm_t, value_mask: u32, value_list: *xcb_sync_create_alarm_value_list_t) -> xcb_void_cookie_t #c_call;
    create_alarm_value_list:                #type (R: *xcb_sync_create_alarm_request_t) -> *void #c_call;
    change_alarm_value_list_serialize:      #type (_buffer: **void, value_mask: u32, _aux: *xcb_sync_change_alarm_value_list_t) -> s32 #c_call;
    change_alarm_value_list_unpack:         #type (_buffer: *void, value_mask: u32, _aux: *xcb_sync_change_alarm_value_list_t) -> s32 #c_call;
    change_alarm_value_list_sizeof:         #type (_buffer: *void, value_mask: u32) -> s32 #c_call;
    change_alarm_sizeof:                    #type (_buffer: *void) -> s32 #c_call;
    change_alarm_checked:                   #type (c: *xcb_connection_t, id: xcb_sync_alarm_t, value_mask: u32, value_list: *void) -> xcb_void_cookie_t #c_call;
    change_alarm:                           #type (c: *xcb_connection_t, id: xcb_sync_alarm_t, value_mask: u32, value_list: *void) -> xcb_void_cookie_t #c_call;
    change_alarm_aux_checked:               #type (c: *xcb_connection_t, id: xcb_sync_alarm_t, value_mask: u32, value_list: *xcb_sync_change_alarm_value_list_t) -> xcb_void_cookie_t #c_call;
    change_alarm_aux:                       #type (c: *xcb_connection_t, id: xcb_sync_alarm_t, value_mask: u32, value_list: *xcb_sync_change_alarm_value_list_t) -> xcb_void_cookie_t #c_call;
    change_alarm_value_list:                #type (R: *xcb_sync_change_alarm_request_t) -> *void #c_call;
    destroy_alarm_checked:                  #type (c: *xcb_connection_t, alarm: xcb_sync_alarm_t) -> xcb_void_cookie_t #c_call;
    destroy_alarm:                          #type (c: *xcb_connection_t, alarm: xcb_sync_alarm_t) -> xcb_void_cookie_t #c_call;
    query_alarm:                            #type (c: *xcb_connection_t, alarm: xcb_sync_alarm_t) -> xcb_sync_query_alarm_cookie_t #c_call;
    query_alarm_unchecked:                  #type (c: *xcb_connection_t, alarm: xcb_sync_alarm_t) -> xcb_sync_query_alarm_cookie_t #c_call;
    query_alarm_reply:                      #type (c: *xcb_connection_t, cookie: xcb_sync_query_alarm_cookie_t, e: **xcb_generic_error_t) -> *xcb_sync_query_alarm_reply_t #c_call;
    set_priority_checked:                   #type (c: *xcb_connection_t, id: u32, priority: s32) -> xcb_void_cookie_t #c_call;
    set_priority:                           #type (c: *xcb_connection_t, id: u32, priority: s32) -> xcb_void_cookie_t #c_call;
    get_priority:                           #type (c: *xcb_connection_t, id: u32) -> xcb_sync_get_priority_cookie_t #c_call;
    get_priority_unchecked:                 #type (c: *xcb_connection_t, id: u32) -> xcb_sync_get_priority_cookie_t #c_call;
    get_priority_reply:                     #type (c: *xcb_connection_t, cookie: xcb_sync_get_priority_cookie_t, e: **xcb_generic_error_t) -> *xcb_sync_get_priority_reply_t #c_call;
    create_fence_checked:                   #type (c: *xcb_connection_t, drawable: xcb_drawable_t, fence: xcb_sync_fence_t, initially_triggered: u8) -> xcb_void_cookie_t #c_call;
    create_fence:                           #type (c: *xcb_connection_t, drawable: xcb_drawable_t, fence: xcb_sync_fence_t, initially_triggered: u8) -> xcb_void_cookie_t #c_call;
    trigger_fence_checked:                  #type (c: *xcb_connection_t, fence: xcb_sync_fence_t) -> xcb_void_cookie_t #c_call;
    trigger_fence:                          #type (c: *xcb_connection_t, fence: xcb_sync_fence_t) -> xcb_void_cookie_t #c_call;
    reset_fence_checked:                    #type (c: *xcb_connection_t, fence: xcb_sync_fence_t) -> xcb_void_cookie_t #c_call;
    reset_fence:                            #type (c: *xcb_connection_t, fence: xcb_sync_fence_t) -> xcb_void_cookie_t #c_call;
    destroy_fence_checked:                  #type (c: *xcb_connection_t, fence: xcb_sync_fence_t) -> xcb_void_cookie_t #c_call;
    destroy_fence:                          #type (c: *xcb_connection_t, fence: xcb_sync_fence_t) -> xcb_void_cookie_t #c_call;
    query_fence:                            #type (c: *xcb_connection_t, fence: xcb_sync_fence_t) -> xcb_sync_query_fence_cookie_t #c_call;
    query_fence_unchecked:                  #type (c: *xcb_connection_t, fence: xcb_sync_fence_t) -> xcb_sync_query_fence_cookie_t #c_call;
    query_fence_reply:                      #type (c: *xcb_connection_t, cookie: xcb_sync_query_fence_cookie_t, e: **xcb_generic_error_t) -> *xcb_sync_query_fence_reply_t #c_call;
    await_fence_sizeof:                     #type (_buffer: *void, fence_list_len: u32) -> s32 #c_call;
    await_fence_checked:                    #type (c: *xcb_connection_t, fence_list_len: u32, fence_list: *xcb_sync_fence_t) -> xcb_void_cookie_t #c_call;
    await_fence:                            #type (c: *xcb_connection_t, fence_list_len: u32, fence_list: *xcb_sync_fence_t) -> xcb_void_cookie_t #c_call;
    await_fence_fence_list:                 #type (R: *xcb_sync_await_fence_request_t) -> *xcb_sync_fence_t #c_call;
    await_fence_fence_list_length:          #type (R: *xcb_sync_await_fence_request_t) -> s32 #c_call;
    await_fence_fence_list_end:             #type (R: *xcb_sync_await_fence_request_t) -> xcb_generic_iterator_t #c_call;
}

#scope_file

