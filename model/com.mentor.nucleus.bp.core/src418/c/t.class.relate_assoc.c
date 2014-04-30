if ( te_rel->LinkNeeded || te_c->OptDisabled ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* RELATE ");
T_b(aone_te_class->Key_Lett);
T_b(" TO ");
T_b(aoth_te_class->Key_Lett);
T_b(" ACROSS R");
T_b(T_s(r_rel->Numb));
T_b(" USING ");
T_b(assr_te_class->Key_Lett);
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(assr_te_class->scope);
T_b(relate_method);
T_b("( ");
T_b(aone_te_class->GeneratedName);
T_b(" * aone, ");
T_b(aoth_te_class->GeneratedName);
T_b(" * aoth, ");
T_b(assr_te_class->GeneratedName);
T_b(" * assr");
T_b(thismodule);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_c->DetectEmpty ) {
T_b("  ");
T_b("if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {");
T_b("\n");
T_b("    ");
T_b("XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(assr_te_class->Key_Lett);
T_b("\", \"");
T_b(relate_method);
T_b("\" );");
T_b("\n");
T_b("    ");
T_b("return;");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
} else {
T_b("  ");
T_b("/* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */");
T_b("\n");
}
T_b(set_aone_referentials);
T_b("");
T_b(set_aoth_referentials);
T_b("");
T_b("  ");
T_b("/* Initialize optimized relationship storage extended attributes */");
T_b("\n");
T_b("  ");
T_b("assr->");
T_b(aone_te_oir->data_member);
T_b(" = aone;");
T_b("\n");
T_b("  ");
T_b("assr->");
T_b(aoth_te_oir->data_member);
T_b(" = aoth;");
T_b("\n");
if ( aoth->Mult == 0 ) {
T_b("  ");
T_b("aone->");
T_b(assr_te_oir->data_member);
T_b(" = assr;");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &aone->");
T_b(assr_te_oir->data_member);
T_b(", assr );");
T_b("\n");
}
if ( aone->Mult == 0 ) {
T_b("  ");
T_b("aoth->");
T_b(assr_te_oir->data_member);
T_b(" = assr;");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &aoth->");
T_b(assr_te_oir->data_member);
T_b(", assr );");
T_b("\n");
}
T_b(persist_relate->body);
T_b("");
T_b("}");
T_b("\n");
} else {
T_b("/* Note:  Link ");
T_b(aone_te_class->Key_Lett);
T_b(" to ");
T_b(aoth_te_class->Key_Lett);
T_b(" across R");
T_b(T_s(r_rel->Numb));
T_b(" using ");
T_b(assr_te_class->Key_Lett);
T_b(" not needed.  */");
T_b("\n");
}
if ( te_rel->UnlinkNeeded || te_c->OptDisabled ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* UNRELATE ");
T_b(aone_te_class->Key_Lett);
T_b(" FROM ");
T_b(aoth_te_class->Key_Lett);
T_b(" ACROSS ");
T_b("R");
T_b(T_s(r_rel->Numb));
T_b(" USING ");
T_b(assr_te_class->Key_Lett);
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(assr_te_class->scope);
T_b(unrelate_method);
T_b("( ");
T_b(aone_te_class->GeneratedName);
T_b(" * aone, ");
T_b(aoth_te_class->GeneratedName);
T_b(" * aoth, ");
T_b(assr_te_class->GeneratedName);
T_b(" * assr");
T_b(thismodule);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_c->DetectEmpty ) {
T_b("  ");
T_b("if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {");
T_b("\n");
T_b("    ");
T_b("XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(assr_te_class->Key_Lett);
T_b("\", \"");
T_b(unrelate_method);
T_b("\" );");
T_b("\n");
T_b("    ");
T_b("return;");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
} else {
T_b("  ");
T_b("/* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */");
T_b("\n");
}
T_b(reset_referentials);
T_b("");
T_b("  ");
T_b("assr->");
T_b(aone_te_oir->data_member);
T_b(" = 0;");
T_b("\n");
T_b("  ");
T_b("assr->");
T_b(aoth_te_oir->data_member);
T_b(" = 0;");
T_b("\n");
if ( aoth->Mult == 0 ) {
T_b("  ");
T_b("aone->");
T_b(assr_te_oir->data_member);
T_b(" = 0;");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &aone->");
T_b(assr_te_oir->data_member);
T_b(", assr );");
T_b("\n");
}
if ( aone->Mult == 0 ) {
T_b("  ");
T_b("aoth->");
T_b(assr_te_oir->data_member);
T_b(" = 0;");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &aoth->");
T_b(assr_te_oir->data_member);
T_b(", assr );");
T_b("\n");
}
T_b(persist_unrelate->body);
T_b("");
T_b("}");
T_b("\n");
} else {
T_b("/* Note:  Unlink ");
T_b(aone_te_class->Key_Lett);
T_b(" from ");
T_b(aoth_te_class->Key_Lett);
T_b(" across R");
T_b(T_s(r_rel->Numb));
T_b(" using ");
T_b(assr_te_class->Key_Lett);
T_b(" not needed.  */");
T_b("\n");
}
