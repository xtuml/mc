if ( te_c->DetectEmpty ) {
T_b(ws);
T_b("if ( 0 == ");
T_b(te_var->buffer);
T_b(" ) {");
T_b("\n");
T_b(ws);
T_b("  XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(te_class->Key_Lett);
T_b("\", \"");
T_b(te_instance->delete);
T_b("\" );");
T_b("\n");
T_b(ws);
T_b("}");
T_b("\n");
}
T_b(ws);
T_b(te_instance->module);
T_b("");
if ( te_class->Persistent ) {
T_b(te_instance->delete_persistent);
T_b("");
} else {
T_b(te_instance->delete);
T_b("");
}
T_b("( (");
T_b(te_instance->handle);
T_b(") ");
T_b(te_var->buffer);
T_b(", ");
T_b(dom_id);
T_b(", ");
T_b(te_class->system_class_number);
T_b(" );");
T_b("\n");
