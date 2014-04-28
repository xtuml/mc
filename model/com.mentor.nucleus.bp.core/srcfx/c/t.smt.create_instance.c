if ( te_class->Persistent ) {
T_b(ws);
T_b(te_var->buffer);
T_b(" = (");
T_b(te_class->GeneratedName);
T_b(" *) ");
T_b(te_instance->module);
T_b("");
T_b(te_instance->create_persistent);
T_b("");
T_b("( ");
T_b(dom_id);
T_b(", ");
T_b(te_class->system_class_number);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(te_var->buffer);
T_b(" = (");
T_b(te_class->GeneratedName);
T_b(" *) ");
T_b(te_class->GeneratedName);
T_b("_Create();");
T_b("\n");
}
if ( 0!=strcmp("",init_uniques) ) {
}
