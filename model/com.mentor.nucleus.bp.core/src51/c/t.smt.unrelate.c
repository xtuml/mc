if ( is_reflexive ) {
T_b(ws);
T_b(te_class->scope);
T_b(unrelate_method);
T_b("( ");
T_b(one_te_var->buffer);
T_b(", ");
T_b(oth_te_var->buffer);
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
if ( left_is_formalizer ) {
T_b(ws);
T_b(te_class->scope);
T_b(unrelate_method);
T_b("( ");
T_b(oth_te_var->buffer);
T_b(", ");
T_b(one_te_var->buffer);
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(te_class->scope);
T_b(unrelate_method);
T_b("( ");
T_b(one_te_var->buffer);
T_b(", ");
T_b(oth_te_var->buffer);
T_b(thismodule);
T_b(" );");
T_b("\n");
}
}
