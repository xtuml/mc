T_b(ws);
T_b(te_lnk->te_classGeneratedName);
T_b(" * ");
T_b(te_lnk->linkage);
T_b(" = ");
T_b(cast);
T_b(te_lnk->left);
T_b("->");
T_b(te_lnk->linkage);
T_b(";");
T_b("\n");
if ( result_equals_start ) {
T_b(ws);
T_b(te_select_related->result_var);
T_b(" = 0;");
T_b("\n");
}
T_b(ws);
T_b("if ( 0 != ");
T_b(te_lnk->linkage);
T_b(" )");
T_b(subtypecheck);
T_b(" {");
T_b("\n");
