if ( te_rel->LinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(relate_method);
T_b("( ");
T_b(part_te_class->GeneratedName);
T_b(" *, ");
T_b(form_te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* xtUML WARNING:  ");
T_b(part_obj->Key_Lett);
T_b(part_mult_cmt);
T_b("R");
T_b(te_rel->Numb);
T_b(form_mult_cmt);
T_b(o_obj->Key_Lett);
T_b(" never related!  */");
T_b("\n");
}
if ( te_rel->UnlinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(unrelate_method);
T_b("( ");
T_b(part_te_class->GeneratedName);
T_b(" *, ");
T_b(form_te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  ");
T_b(part_obj->Key_Lett);
T_b(part_mult_cmt);
T_b("R");
T_b(te_rel->Numb);
T_b(form_mult_cmt);
T_b(o_obj->Key_Lett);
T_b(" unrelate accessor not needed */");
T_b("\n");
}
