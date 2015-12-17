if ( 0!=strcmp("",parameters) ) {
T_b(ws);
T_b(te_var->buffer);
T_b(" = (");
T_b(te_evt->GeneratedName);
T_b(" *) ");
T_b(te_instance->module);
T_b(te_eq->new);
T_b("( (void *) ");
T_b(recipient);
T_b(", &");
T_b(te_evt->GeneratedName);
T_b("c );");
T_b("\n");
T_b(ws);
T_b(parameters);
T_b("");
} else {
T_b(ws);
T_b(te_var->buffer);
T_b(" = ");
T_b(te_instance->module);
T_b(te_eq->new);
T_b("( (void *) ");
T_b(recipient);
T_b(", &");
T_b(te_evt->GeneratedName);
T_b("c );");
T_b("\n");
}
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b(ws);
T_b(te_var->buffer);
T_b("->sc_e = &(");
T_b(te_instance->module);
T_b("sc_");
T_b(te_evt->GeneratedName);
T_b(");");
T_b("\n");
}
