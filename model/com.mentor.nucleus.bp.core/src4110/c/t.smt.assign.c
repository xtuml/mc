if ( 0!=strcmp("",te_assign->array_spec) ) {
if ( 4 == te_assign->Core_Typ ) {
if ( te_sys->InstanceLoading ) {
T_b(ws);
T_b(te_assign->lval);
T_b(" = ");
T_b(te_instance->module);
T_b(te_string->strcpy);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(te_instance->module);
T_b(te_string->strcpy);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(" );");
T_b("\n");
}
} else {
if ( 0 == te_assign->rval_dimensions ) {
T_b(ws);
T_b(te_assign->lval);
T_b(" = ");
T_b(te_assign->rval);
T_b(";");
T_b("\n");
} else {
T_b(ws);
T_b(te_instance->module);
T_b(te_string->memmove);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(", ");
if ( is_parameter ) {
T_b("sizeof( ");
T_b(te_assign->rval);
T_b("[0] ) * ");
T_b(T_s(element_count));
T_b(" );");
T_b("\n");
} else {
T_b("sizeof( ");
T_b(te_assign->rval);
T_b(" ) );");
T_b("\n");
}
}
}
} else if ( ( 9 == te_assign->Core_Typ ) || ( 21 == te_assign->Core_Typ ) ) {
T_b(ws);
T_b(te_set->scope);
T_b(te_set->copy);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(" );");
T_b("\n");
} else if ( 4 == te_assign->Core_Typ ) {
if ( te_sys->InstanceLoading ) {
T_b(ws);
T_b(te_assign->lval);
T_b(" = ");
T_b(te_instance->module);
T_b(te_string->strcpy);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(te_instance->module);
T_b(te_string->strcpy);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(" );");
T_b("\n");
}
} else {
T_b(ws);
T_b(te_assign->lval);
T_b(" = ");
T_b(te_assign->rval);
T_b(";");
T_b("\n");
}
