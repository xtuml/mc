T_b(ws);
T_b("{");
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(te_evt->GeneratedName);
T_b(" * ");
T_b(te_eq->event_message_variable);
T_b(" = (");
T_b(te_evt->GeneratedName);
T_b(" *) ");
T_b(te_instance->module);
T_b(te_eq->new);
T_b("( ");
T_b(var_name);
T_b(", &");
T_b(te_evt->GeneratedName);
T_b("c );");
T_b("\n");
T_b(parameters);
T_b("\n");
} else {
T_b(" ");
T_b(te_eq->base_event_type);
T_b(" * ");
T_b(te_eq->event_message_variable);
T_b(" = ");
T_b(te_instance->module);
T_b(te_eq->new);
T_b("( ");
T_b(var_name);
T_b(", &");
T_b(te_evt->GeneratedName);
T_b("c );");
T_b("\n");
}
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b("  ");
T_b(te_eq->event_message_variable);
T_b("->sc_e = &(");
T_b(te_instance->module);
T_b("sc_");
T_b(te_evt->GeneratedName);
T_b(");");
T_b("\n");
}
if ( self_directed ) {
T_b(ws);
T_b("  ");
T_b(te_instance->module);
T_b(te_eq->self);
T_b("( ");
if ( 0!=strcmp("",parameters) ) {
T_b("(");
T_b(te_eq->base_event_type);
T_b(" *) ");
}
T_b(te_eq->event_message_variable);
T_b(" );");
T_b("\n");
} else {
if ( false ) {
if ( 1 == 3 ) {
T_b(ws);
T_b("  ");
T_b(te_instance->self);
T_b(" = (");
T_b(te_instance->handle);
T_b(") ");
T_b(te_instance->global_self);
T_b("();");
T_b("\n");
T_b("  ");
T_b("if ( ");
T_b(te_instance->self);
T_b(" == 0 ) { ");
T_b(te_instance->self);
T_b(" = (");
T_b(te_instance->handle);
T_b(") &");
T_b(te_instance->self);
T_b("; }");
T_b("\n");
}
if ( ( ( 1 == 5 ) || ( 1 == 4 ) ) || ( 1 == 2 ) ) {
T_b(ws);
T_b("  SetEventSendingInstance( ");
T_b(te_eq->event_message_variable);
T_b(", ");
T_b(te_instance->global_self);
T_b("() );");
T_b("\n");
} else if ( ( ( 1 == 3 ) || ( 1 == 1 ) ) || ( 1 == 0 ) ) {
T_b(ws);
T_b("  SetEventSendingInstance( ");
T_b(te_eq->event_message_variable);
T_b(", ");
T_b(te_instance->self);
T_b(" );");
T_b("\n");
} else {
}
}
T_b(ws);
T_b("  ");
T_b(te_instance->module);
T_b(te_eq->non_self);
T_b("( ");
if ( 0!=strcmp("",parameters) ) {
T_b("(");
T_b(te_eq->base_event_type);
T_b(" *) ");
}
T_b(te_eq->event_message_variable);
T_b(" );");
T_b("\n");
}
T_b(ws);
T_b("}");
T_b("\n");
