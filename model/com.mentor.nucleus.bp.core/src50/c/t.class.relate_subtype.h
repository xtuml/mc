if ( te_rel->LinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(relate_method);
T_b("( ");
T_b(super_te_class->GeneratedName);
T_b(" *, ");
T_b(sub_te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  ");
T_b(super_te_class->Key_Lett);
T_b("<-R");
T_b(te_rel->Numb);
T_b("->");
T_b(sub_te_class->Key_Lett);
T_b(" never related (or note needed).  */");
T_b("\n");
}
if ( te_rel->UnlinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(unrelate_method);
T_b("( ");
T_b(super_te_class->GeneratedName);
T_b(" *, ");
T_b(sub_te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  No ");
T_b(super_te_class->Key_Lett);
T_b("<-R");
T_b(te_rel->Numb);
T_b("->");
T_b(sub_te_class->Key_Lett);
T_b(" unrelate accessor needed.  */");
T_b("\n");
}
