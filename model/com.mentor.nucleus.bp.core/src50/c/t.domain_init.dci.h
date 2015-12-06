T_b("  ");
T_b("public:");
T_b("\n");
T_b("    ");
T_b("virtual ");
T_b(te_extent->type);
T_b(" * ");
T_b(te_instance->get_dci);
T_b("( const ");
T_b(te_typemap->object_number_name);
T_b(" cn ) { return ");
T_b(te_dci->array_name);
T_b("[cn]; }");
T_b("\n");
if ( not_empty te_sm ) {
if ( te_thread->enabled ) {
T_b("    ");
T_b("virtual ");
T_b(te_typemap->object_number_name);
T_b(" * ");
T_b(te_instance->get_thread_assignment);
T_b("( void ) { return &");
T_b(te_dci->task_list);
T_b("[0]; }");
T_b("\n");
}
T_b("    ");
T_b("virtual ");
T_b(class_dispatch_array->element_type);
T_b(" * ");
T_b(te_instance->get_event_dispatcher);
T_b("( void ) { return ");
T_b(class_dispatch_array->result);
T_b("; }");
T_b("\n");
}
T_b("  ");
T_b("private:");
T_b("\n");
T_b("    ");
T_b("static ");
T_b(te_cia->class_info_type);
T_b(" * const ");
T_b(te_dci->array_name);
T_b("[];");
T_b("\n");
if ( not_empty te_sm ) {
if ( te_thread->enabled ) {
T_b("    ");
T_b("static ");
T_b(te_typemap->object_number_name);
T_b(" ");
T_b(te_dci->task_list);
T_b("[];");
T_b("\n");
}
T_b("    ");
T_b("static ");
T_b(class_dispatch_array->element_type);
T_b(" ");
T_b(class_dispatch_array->result);
T_b("[];");
T_b("\n");
}
