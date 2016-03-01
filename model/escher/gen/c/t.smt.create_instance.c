T_b(ws);
T_b(te_var->buffer);
T_b(" = (");
T_b(te_class->GeneratedName);
T_b(" *) ");
T_b(te_instance->module);
T_b("");
if ( te_class->Persistent ) {
T_b(te_instance->create_persistent);
T_b("");
} else {
T_b(te_instance->create);
T_b("");
}
T_b("( ");
T_b(dom_id);
T_b(", ");
T_b(te_class->system_class_number);
T_b(" );");
T_b("\n");
if ( 0!=strcmp("",init_uniques) ) {
T_b(ws);
T_b(init_uniques);
T_b("");
}
