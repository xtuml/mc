if ( te_rel->LinkNeeded || te_c->OptDisabled ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* RELATE <left> ");
T_b(te_class->Key_Lett);
T_b(" TO <right> ");
T_b(te_class->Key_Lett);
T_b(" ACROSS R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("'");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_class->scope);
T_b(relate_method);
T_b("( ");
T_b(te_class->GeneratedName);
T_b(" * left, ");
T_b(te_class->GeneratedName);
T_b(" * right");
T_b(thismodule);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_c->DetectEmpty ) {
T_b("  ");
T_b("if ( (left == 0) || (right == 0) ) {");
T_b("\n");
T_b("    ");
T_b("XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(te_class->Key_Lett);
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
T_b(set_referentials);
T_b("");
if ( left_is_formalizer ) {
if ( part->Mult == 0 ) {
T_b("  ");
T_b("left->");
T_b(part_te_oir->data_member);
T_b(" = right; /* SR L1 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &left->");
T_b(part_te_oir->data_member);
T_b(", right );");
T_b("\n");
}
if ( form->Mult == 0 ) {
T_b("  ");
T_b("right->");
T_b(form_te_oir->data_member);
T_b(" = left; /* SR L2 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &right->");
T_b(form_te_oir->data_member);
T_b(", left );");
T_b("\n");
}
} else {
if ( part->Mult == 0 ) {
T_b("  ");
T_b("right->");
T_b(part_te_oir->data_member);
T_b(" = left; /* SR L4 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &right->");
T_b(part_te_oir->data_member);
T_b(", left );");
T_b("\n");
}
if ( form->Mult == 0 ) {
T_b("  ");
T_b("left->");
T_b(form_te_oir->data_member);
T_b(" = right; /* SR L5 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &left->");
T_b(form_te_oir->data_member);
T_b(", right );");
T_b("\n");
}
}
T_b(persist_relate->body);
T_b("");
T_b("}");
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
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* UNRELATE <left> ");
T_b(te_class->Key_Lett);
T_b(" FROM <right> ");
T_b(te_class->Key_Lett);
T_b(" ACROSS R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("'");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_class->scope);
T_b(unrelate_method);
T_b("( ");
T_b(te_class->GeneratedName);
T_b(" * left, ");
T_b(te_class->GeneratedName);
T_b(" * right");
T_b(thismodule);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_c->DetectEmpty ) {
T_b("  ");
T_b("if ( (left == 0) || (right == 0) ) {");
T_b("\n");
T_b("    ");
T_b("XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(te_class->Key_Lett);
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
if ( left_is_formalizer ) {
T_b("  ");
T_b("left->");
T_b(part_te_oir->data_member);
T_b(" = 0; /* SR U1 */");
T_b("\n");
if ( form->Mult == 0 ) {
T_b("  ");
T_b("right->");
T_b(form_te_oir->data_member);
T_b(" = 0; /* SR U2 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &right->");
T_b(form_te_oir->data_member);
T_b(", left ); /* SR U3 */");
T_b("\n");
}
} else {
T_b("  ");
T_b("right->");
T_b(part_te_oir->data_member);
T_b(" = 0; /* SR U4 */");
T_b("\n");
if ( form->Mult == 0 ) {
T_b("  ");
T_b("left->");
T_b(form_te_oir->data_member);
T_b(" = 0; /* SR U5 */");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &left->");
T_b(form_te_oir->data_member);
T_b(", right ); /* SR U6 */");
T_b("\n");
}
}
T_b(persist_unrelate->body);
T_b("");
T_b("}");
T_b("\n");
} else {
T_b("/* Note:  R");
T_b(te_rel->Numb);
T_b(".'");
T_b(rel_phrase);
T_b("' never unrelated (or not needed).  */");
T_b("\n");
}
