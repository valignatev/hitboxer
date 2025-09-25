//
// This file was auto-generated using the following command:
//
// ./generate_bindings
//


/*
* udev - library context
*
* reads the udev config and system environment
* allows custom logging
*/
udev_context :: struct {}

/*
* udev_list
*
* access to libudev generated lists
*/
udev_list_entry :: struct {}

/*
* udev_device
*
* access to sysfs/kernel devices
*/
udev_device :: struct {}

/*
* udev_monitor
*
* access to kernel uevents and udev events
*/
udev_monitor :: struct {}

/*
* udev_enumerate
*
* search sysfs for specific devices and provide a sorted list
*/
udev_enumerate :: struct {}

/*
* udev_queue
*
* access to the currently running udev events
*/
udev_queue :: struct {}

/*
*  udev_hwdb
*
*  access to the static hardware properties database
*/
udev_hwdb :: struct {}

Libudev_Symbols :: struct #type_info_procedures_are_void_pointers {
    udev_ref:                                        #type (udev: *udev_context) -> *udev_context #c_call;
    udev_unref:                                      #type (udev: *udev_context) -> *udev_context #c_call;
    udev_new:                                        #type () -> *udev_context #c_call;
    udev_set_log_fn:                                 #type (udev: *udev_context, log_fn: *void /* function type contained C va_list argument */) -> void #c_call;
    udev_get_log_priority:                           #type (udev: *udev_context) -> s32 #c_call;
    udev_set_log_priority:                           #type (udev: *udev_context, priority: s32) -> void #c_call;
    udev_get_userdata:                               #type (udev: *udev_context) -> *void #c_call;
    udev_set_userdata:                               #type (udev: *udev_context, userdata: *void) -> void #c_call;
    udev_list_entry_get_next:                        #type (list_entry: *udev_list_entry) -> *udev_list_entry #c_call;
    udev_list_entry_get_by_name:                     #type (list_entry: *udev_list_entry, name: *u8) -> *udev_list_entry #c_call;
    udev_list_entry_get_name:                        #type (list_entry: *udev_list_entry) -> *u8 #c_call;
    udev_list_entry_get_value:                       #type (list_entry: *udev_list_entry) -> *u8 #c_call;
    udev_device_ref:                                 #type (udev_device_: *udev_device) -> *udev_device #c_call;
    udev_device_unref:                               #type (udev_device_: *udev_device) -> *udev_device #c_call;
    udev_device_get_udev:                            #type (udev_device_: *udev_device) -> *udev_context #c_call;
    udev_device_new_from_syspath:                    #type (udev: *udev_context, syspath: *u8) -> *udev_device #c_call;
    udev_device_new_from_devnum:                     #type (udev: *udev_context, type: u8, devnum: dev_t) -> *udev_device #c_call;
    udev_device_new_from_subsystem_sysname:          #type (udev: *udev_context, subsystem: *u8, sysname: *u8) -> *udev_device #c_call;
    udev_device_new_from_device_id:                  #type (udev: *udev_context, id: *u8) -> *udev_device #c_call;
    udev_device_new_from_environment:                #type (udev: *udev_context) -> *udev_device #c_call;
    /* udev_device_get_parent_*() does not take a reference on the returned device, it is automatically unref'd with the parent */
    udev_device_get_parent:                          #type (udev_device_: *udev_device) -> *udev_device #c_call;
    udev_device_get_parent_with_subsystem_devtype:   #type (udev_device_: *udev_device, subsystem: *u8, devtype: *u8) -> *udev_device #c_call;
    /* retrieve device properties */
    udev_device_get_devpath:                         #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_subsystem:                       #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_devtype:                         #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_syspath:                         #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_sysname:                         #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_sysnum:                          #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_devnode:                         #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_is_initialized:                  #type (udev_device_: *udev_device) -> s32 #c_call;
    udev_device_get_devlinks_list_entry:             #type (udev_device_: *udev_device) -> *udev_list_entry #c_call;
    udev_device_get_properties_list_entry:           #type (udev_device_: *udev_device) -> *udev_list_entry #c_call;
    udev_device_get_tags_list_entry:                 #type (udev_device_: *udev_device) -> *udev_list_entry #c_call;
    udev_device_get_current_tags_list_entry:         #type (udev_device_: *udev_device) -> *udev_list_entry #c_call;
    udev_device_get_sysattr_list_entry:              #type (udev_device_: *udev_device) -> *udev_list_entry #c_call;
    udev_device_get_property_value:                  #type (udev_device_: *udev_device, key: *u8) -> *u8 #c_call;
    udev_device_get_driver:                          #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_devnum:                          #type (udev_device_: *udev_device) -> dev_t #c_call;
    udev_device_get_action:                          #type (udev_device_: *udev_device) -> *u8 #c_call;
    udev_device_get_seqnum:                          #type (udev_device_: *udev_device) -> u64 #c_call;
    udev_device_get_usec_since_initialized:          #type (udev_device_: *udev_device) -> u64 #c_call;
    udev_device_get_sysattr_value:                   #type (udev_device_: *udev_device, sysattr: *u8) -> *u8 #c_call;
    udev_device_set_sysattr_value:                   #type (udev_device_: *udev_device, sysattr: *u8, value: *u8) -> s32 #c_call;
    udev_device_has_tag:                             #type (udev_device_: *udev_device, tag: *u8) -> s32 #c_call;
    udev_device_has_current_tag:                     #type (udev_device_: *udev_device, tag: *u8) -> s32 #c_call;
    udev_monitor_ref:                                #type (udev_monitor_: *udev_monitor) -> *udev_monitor #c_call;
    udev_monitor_unref:                              #type (udev_monitor_: *udev_monitor) -> *udev_monitor #c_call;
    udev_monitor_get_udev:                           #type (udev_monitor_: *udev_monitor) -> *udev_context #c_call;
    /* kernel and udev generated events over netlink */
    udev_monitor_new_from_netlink:                   #type (udev: *udev_context, name: *u8) -> *udev_monitor #c_call;
    /* bind socket */
    udev_monitor_enable_receiving:                   #type (udev_monitor_: *udev_monitor) -> s32 #c_call;
    udev_monitor_set_receive_buffer_size:            #type (udev_monitor_: *udev_monitor, size: s32) -> s32 #c_call;
    udev_monitor_get_fd:                             #type (udev_monitor_: *udev_monitor) -> s32 #c_call;
    udev_monitor_receive_device:                     #type (udev_monitor_: *udev_monitor) -> *udev_device #c_call;
    /* in-kernel socket filters to select messages that get delivered to a listener */
    udev_monitor_filter_add_match_subsystem_devtype: #type (udev_monitor_: *udev_monitor, subsystem: *u8, devtype: *u8) -> s32 #c_call;
    udev_monitor_filter_add_match_tag:               #type (udev_monitor_: *udev_monitor, tag: *u8) -> s32 #c_call;
    udev_monitor_filter_update:                      #type (udev_monitor_: *udev_monitor) -> s32 #c_call;
    udev_monitor_filter_remove:                      #type (udev_monitor_: *udev_monitor) -> s32 #c_call;
    udev_enumerate_ref:                              #type (udev_enumerate_: *udev_enumerate) -> *udev_enumerate #c_call;
    udev_enumerate_unref:                            #type (udev_enumerate_: *udev_enumerate) -> *udev_enumerate #c_call;
    udev_enumerate_get_udev:                         #type (udev_enumerate_: *udev_enumerate) -> *udev_context #c_call;
    udev_enumerate_new:                              #type (udev: *udev_context) -> *udev_enumerate #c_call;
    /* device properties filter */
    udev_enumerate_add_match_subsystem:              #type (udev_enumerate_: *udev_enumerate, subsystem: *u8) -> s32 #c_call;
    udev_enumerate_add_nomatch_subsystem:            #type (udev_enumerate_: *udev_enumerate, subsystem: *u8) -> s32 #c_call;
    udev_enumerate_add_match_sysattr:                #type (udev_enumerate_: *udev_enumerate, sysattr: *u8, value: *u8) -> s32 #c_call;
    udev_enumerate_add_nomatch_sysattr:              #type (udev_enumerate_: *udev_enumerate, sysattr: *u8, value: *u8) -> s32 #c_call;
    udev_enumerate_add_match_property:               #type (udev_enumerate_: *udev_enumerate, property: *u8, value: *u8) -> s32 #c_call;
    udev_enumerate_add_match_sysname:                #type (udev_enumerate_: *udev_enumerate, sysname: *u8) -> s32 #c_call;
    udev_enumerate_add_match_tag:                    #type (udev_enumerate_: *udev_enumerate, tag: *u8) -> s32 #c_call;
    udev_enumerate_add_match_parent:                 #type (udev_enumerate_: *udev_enumerate, parent: *udev_device) -> s32 #c_call;
    udev_enumerate_add_match_is_initialized:         #type (udev_enumerate_: *udev_enumerate) -> s32 #c_call;
    udev_enumerate_add_syspath:                      #type (udev_enumerate_: *udev_enumerate, syspath: *u8) -> s32 #c_call;
    /* run enumeration with active filters */
    udev_enumerate_scan_devices:                     #type (udev_enumerate_: *udev_enumerate) -> s32 #c_call;
    udev_enumerate_scan_subsystems:                  #type (udev_enumerate_: *udev_enumerate) -> s32 #c_call;
    /* return device list */
    udev_enumerate_get_list_entry:                   #type (udev_enumerate_: *udev_enumerate) -> *udev_list_entry #c_call;
    udev_queue_ref:                                  #type (udev_queue_: *udev_queue) -> *udev_queue #c_call;
    udev_queue_unref:                                #type (udev_queue_: *udev_queue) -> *udev_queue #c_call;
    udev_queue_get_udev:                             #type (udev_queue_: *udev_queue) -> *udev_context #c_call;
    udev_queue_new:                                  #type (udev: *udev_context) -> *udev_queue #c_call;
    udev_queue_get_kernel_seqnum:                    #type (udev_queue_: *udev_queue) -> u64 #c_call;
    udev_queue_get_udev_seqnum:                      #type (udev_queue_: *udev_queue) -> u64 #c_call;
    udev_queue_get_udev_is_active:                   #type (udev_queue_: *udev_queue) -> s32 #c_call;
    udev_queue_get_queue_is_empty:                   #type (udev_queue_: *udev_queue) -> s32 #c_call;
    udev_queue_get_seqnum_is_finished:               #type (udev_queue_: *udev_queue, seqnum: u64) -> s32 #c_call;
    udev_queue_get_seqnum_sequence_is_finished:      #type (udev_queue_: *udev_queue, start: u64, end: u64) -> s32 #c_call;
    udev_queue_get_fd:                               #type (udev_queue_: *udev_queue) -> s32 #c_call;
    udev_queue_flush:                                #type (udev_queue_: *udev_queue) -> s32 #c_call;
    udev_queue_get_queued_list_entry:                #type (udev_queue_: *udev_queue) -> *udev_list_entry #c_call;
    udev_hwdb_new:                                   #type (udev: *udev_context) -> *udev_hwdb #c_call;
    udev_hwdb_ref:                                   #type (hwdb: *udev_hwdb) -> *udev_hwdb #c_call;
    udev_hwdb_unref:                                 #type (hwdb: *udev_hwdb) -> *udev_hwdb #c_call;
    udev_hwdb_get_properties_list_entry:             #type (hwdb: *udev_hwdb, modalias: *u8, flags: u32) -> *udev_list_entry #c_call;
    /*
    * udev_util
    *
    * udev specific utilities
    */
    udev_util_encode_string:                         #type (str: *u8, str_enc: *u8, len: u64) -> s32 #c_call;
}

#scope_file

