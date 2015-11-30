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
T_b(te_class->GeneratedName);
T_b(" *, ");
T_b(te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("' never related (or not needed).  */");
T_b("\n");
}
if ( te_rel->UnlinkNeeded || te_c->OptDisabled ) {
T_b(externstatic);
T_b("void ");
T_b(unrelate_method);
T_b("( ");
T_b(te_class->GeneratedName);
T_b(" *, ");
T_b(te_class->GeneratedName);
T_b(" *");
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b("/* Note:  R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("' never unrelated (or not needed).  */");
T_b("\n");
}
