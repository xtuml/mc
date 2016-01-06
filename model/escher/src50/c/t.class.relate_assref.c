if ( te_rel->LinkNeeded || te_c->OptDisabled ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* RELATE <left> ");
T_b(assoc_obj->Key_Lett);
T_b(" TO <right> ");
T_b(assoc_obj->Key_Lett);
T_b(" ACROSS ");
T_b("R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("' USING ");
T_b(assr_obj->Key_Lett);
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(assr_te_class->scope);
T_b(relate_method);
T_b("( ");
T_b(assoc_te_class->GeneratedName);
T_b(" * left, ");
T_b(assoc_te_class->GeneratedName);
T_b(" * right, ");
T_b(assr_te_class->GeneratedName);
T_b(" * assr");
T_b(thismodule);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_c->DetectEmpty ) {
T_b("  ");
T_b("if ( (left == 0) || (right == 0) || (assr == 0) ) {");
T_b("\n");
T_b("    ");
T_b("XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(assr_obj->Key_Lett);
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
if ( ! towards_aone ) {
T_b("  ");
T_b("assr->");
T_b(aone_te_oir->data_member);
T_b(" = left;  /* RAL 1 */");
T_b("\n");
T_b("  ");
T_b("assr->");
T_b(aoth_te_oir->data_member);
T_b(" = right; /* RAL 2 */");
T_b("\n");
} else {
T_b("  ");
T_b("assr->");
T_b(aone_te_oir->data_member);
T_b(" = right; /* RAL 3 */");
T_b("\n");
T_b("  ");
T_b("assr->");
T_b(aoth_te_oir->data_member);
T_b(" = left;  /* RAL 4 */");
T_b("\n");
}
if ( aone->Mult == 0 ) {
if ( towards_aone ) {
T_b("  ");
T_b("left->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(" = assr; /* RAL 5 */");
T_b("\n");
} else {
T_b("  ");
T_b("right->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(" = assr; /* RAL 6 */");
T_b("\n");
}
} else {
if ( towards_aone ) {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &left->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(", assr ); /* RAL 7 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &right->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(", assr ); /* RAL 8 */");
T_b("\n");
}
}
if ( aoth->Mult == 0 ) {
if ( towards_aone ) {
T_b("  ");
T_b("right->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aoth_te_oir->rel_phrase);
T_b(" = assr; /* RAL 9 */");
T_b("\n");
} else {
T_b("  ");
T_b("left->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aoth_te_oir->rel_phrase);
T_b(" = assr; /* RAL 10 */");
T_b("\n");
}
} else {
if ( towards_aone ) {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &right->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aoth_te_oir->rel_phrase);
T_b(", assr ); /* RAL 11 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &left->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aoth_te_oir->rel_phrase);
T_b(", assr ); /* RAL 12 */");
T_b("\n");
}
}
T_b(persist_relate->body);
T_b("");
T_b("}");
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
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* UNRELATE <left> ");
T_b(assoc_obj->Key_Lett);
T_b(" FROM <right> ");
T_b(assoc_obj->Key_Lett);
T_b(" ACROSS ");
T_b("R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("' USING ");
T_b(assr_obj->Key_Lett);
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(assr_te_class->scope);
T_b(unrelate_method);
T_b("( ");
T_b(assoc_te_class->GeneratedName);
T_b(" * left, ");
T_b(assoc_te_class->GeneratedName);
T_b(" * right, ");
T_b(assr_te_class->GeneratedName);
T_b(" * assr");
T_b(thismodule);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_c->DetectEmpty ) {
T_b("  ");
T_b("if ( (left == 0) || (right == 0) || (assr == 0) ) {");
T_b("\n");
T_b("    ");
T_b("XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(assr_obj->Key_Lett);
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
if ( ! towards_aone ) {
T_b("  ");
T_b("assr->");
T_b(aone_te_oir->data_member);
T_b(" = 0; /* RAU 1 */");
T_b("\n");
T_b("  ");
T_b("assr->");
T_b(aoth_te_oir->data_member);
T_b(" = 0; /* RAU 2 */");
T_b("\n");
} else {
T_b("  ");
T_b("assr->");
T_b(aone_te_oir->data_member);
T_b(" = 0; /* RAU 3 */");
T_b("\n");
T_b("  ");
T_b("assr->");
T_b(aoth_te_oir->data_member);
T_b(" = 0; /* RAU 4 */");
T_b("\n");
}
if ( aone->Mult == 0 ) {
if ( towards_aone ) {
T_b("  ");
T_b("left->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(" = 0; /* RAU 5 */");
T_b("\n");
} else {
T_b("  ");
T_b("right->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(" = 0; /* RAU 6 */");
T_b("\n");
}
} else {
if ( towards_aone ) {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &left->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(", assr ); /* RAU 7 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &right->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(", assr ); /* RAU 8 */");
T_b("\n");
}
}
if ( aoth->Mult == 0 ) {
if ( towards_aone ) {
T_b("  ");
T_b("right->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(" = 0; /* RAU 9 */");
T_b("\n");
} else {
T_b("  ");
T_b("left->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(" = 0; /* RAU 10 */");
T_b("\n");
}
} else {
if ( towards_aone ) {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &right->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(", assr ); /* RAU 11 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &left->");
T_b(assr_te_oir->data_member);
T_b("_");
T_b(aone_te_oir->rel_phrase);
T_b(", assr ); /* RAU 12 */");
T_b("\n");
}
}
T_b(persist_unrelate->body);
T_b("");
T_b("}");
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
