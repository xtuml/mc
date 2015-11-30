if ( te_relinfo->multiplicity == 0 ) {
if ( navigated || te_c->OptDisabled ) {
if ( ! te_relinfo->is_supertype ) {
T_b("#define ");
T_b(navigate_method->result);
T_b("( ");
T_b(te_class->Key_Lett);
T_b(" ) ( (");
T_b(te_class->Key_Lett);
T_b(")->");
T_b(member_data_name->result);
T_b(" )");
T_b("\n");
} else {
T_b("#define ");
T_b(navigate_method->result);
T_b("( ");
T_b(te_class->Key_Lett);
T_b(" ) \");
T_b("   ");
T_b("( (((");
T_b(te_class->Key_Lett);
T_b(")->");
T_b(member_data_name->obj_id);
T_b(") == ");
T_b(related_te_class->system_class_number);
T_b(") ? \");
T_b("     ");
T_b("((");
T_b(related_te_class->GeneratedName);
T_b(" *)((");
T_b(te_class->Key_Lett);
T_b(")->");
T_b(member_data_name->result);
T_b(")) : (0) )");
T_b("\n");
}
}
} else {
if ( navigated || te_c->OptDisabled ) {
T_b("#define ");
T_b(navigate_method->result);
T_b("( ");
T_b(te_class->Key_Lett);
T_b(" ) ( &((");
T_b(te_class->Key_Lett);
T_b(")->");
T_b(member_data_name->result);
T_b(") )");
T_b("\n");
}
}
if ( ! navigated ) {
T_b("/* Note:  ");
T_b(te_class->Key_Lett);
T_b("->");
T_b(related_te_class->Key_Lett);
T_b("[R");
T_b(r_rel->Numb);
T_b("] not navigated */");
T_b("\n");
}
