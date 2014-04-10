T_b(ws);
T_b(ass_te_class->scope);
T_b(unrelate_method);
T_b("( ");
if ( is_reflexive ) {
T_b(one_te_var->buffer);
T_b(", ");
T_b(oth_te_var->buffer);
T_b(", ");
} else {
if ( left_obj_is_aone ) {
T_b(one_te_var->buffer);
T_b(", ");
T_b(oth_te_var->buffer);
T_b(", ");
} else {
T_b(oth_te_var->buffer);
T_b(", ");
T_b(one_te_var->buffer);
T_b(", ");
}
}
T_b(ass_te_var->buffer);
T_b(thismodule);
T_b(" );");
T_b("\n");
