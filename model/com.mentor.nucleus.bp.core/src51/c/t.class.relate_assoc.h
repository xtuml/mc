if ( te_rel->LinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(relate_method);
T_b("( ");
T_b(aone_te_class->GeneratedName);
T_b(" *, ");
T_b(aoth_te_class->GeneratedName);
T_b(" *, ");
T_b(assr_te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  Link ");
T_b(aone_te_class->Key_Lett);
T_b(" to ");
T_b(aoth_te_class->Key_Lett);
T_b(" across R");
T_b(te_rel->Numb);
T_b(" using ");
T_b(assr_te_class->Key_Lett);
T_b(" not needed.  */");
T_b("\n");
}
if ( te_rel->UnlinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(unrelate_method);
T_b("( ");
T_b(aone_te_class->GeneratedName);
T_b(" *, ");
T_b(aoth_te_class->GeneratedName);
T_b(" *, ");
T_b(assr_te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  Unlink ");
T_b(aone_te_class->Key_Lett);
T_b(" from ");
T_b(aoth_te_class->Key_Lett);
T_b(" across R");
T_b(te_rel->Numb);
T_b(" using ");
T_b(assr_te_class->Key_Lett);
T_b(" not needed.  */");
T_b("\n");
}
