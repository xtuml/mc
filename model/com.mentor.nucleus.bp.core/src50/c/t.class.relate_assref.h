T_b("/* Navigation phrase:  R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("' */");
T_b("\n");
if ( te_rel->LinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(relate_method);
T_b("( ");
T_b(assoc_te_class->GeneratedName);
T_b(" *, ");
T_b(assoc_te_class->GeneratedName);
T_b(" *, ");
T_b(assr_te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  Link ");
T_b(assoc_obj->Key_Lett);
T_b(" to ");
T_b(assoc_obj->Key_Lett);
T_b(" across R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("' using ");
T_b(assr_obj->Key_Lett);
T_b(" not needed.  */");
T_b("\n");
}
if ( te_rel->UnlinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(unrelate_method);
T_b("( ");
T_b(assoc_te_class->GeneratedName);
T_b(" *, ");
T_b(assoc_te_class->GeneratedName);
T_b(" *, ");
T_b(assr_te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  Unlink ");
T_b(assoc_obj->Key_Lett);
T_b(" from ");
T_b(assoc_obj->Key_Lett);
T_b(" across R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("' USING ");
T_b(assr_obj->Key_Lett);
T_b(" not needed.  */");
T_b("\n");
}
