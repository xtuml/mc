if ( te_rel->LinkNeeded || te_c->OptDisabled ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* RELATE ");
T_b(part_te_class->Key_Lett);
T_b(" TO ");
T_b(form_te_class->Key_Lett);
T_b(" ACROSS R");
T_b(te_rel->Numb);
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(form_te_class->scope);
T_b(relate_method);
T_b("( ");
T_b(part_te_class->GeneratedName);
T_b(" * part, ");
T_b(form_te_class->GeneratedName);
T_b(" * form");
T_b(thismodule);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_c->DetectEmpty ) {
T_b("  ");
T_b("if ( (part == 0) || (form == 0) ) {");
T_b("\n");
T_b("    ");
T_b("XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(form_te_class->Key_Lett);
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
if ( part_te_oir->NavigatedTo || te_c->OptDisabled ) {
if ( part->Mult == 0 ) {
T_b("  ");
T_b("form->");
T_b(part_te_oir->data_member);
T_b(" = part;");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &form->");
T_b(part_te_oir->data_member);
T_b(", (");
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(" *) part );");
T_b("\n");
}
} else {
T_b("  ");
T_b("/* Note:  ");
T_b(form_te_class->Key_Lett);
T_b("->");
T_b(part_te_class->Key_Lett);
T_b("[R");
T_b(te_rel->Numb);
T_b("] not navigated */");
T_b("\n");
}
if ( form_te_oir->NavigatedTo || te_c->OptDisabled ) {
if ( form->Mult == 0 ) {
T_b("  ");
T_b("part->");
T_b(form_te_oir->data_member);
T_b(" = form;");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( &part->");
T_b(form_te_oir->data_member);
T_b(", (");
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(" *) form );");
T_b("\n");
}
} else {
T_b("  ");
T_b("/* Note:  ");
T_b(part_te_class->Key_Lett);
T_b("->");
T_b(form_te_class->Key_Lett);
T_b("[R");
T_b(te_rel->Numb);
T_b("] not navigated */");
T_b("\n");
}
T_b(persist_relate->body);
T_b("");
T_b("}");
T_b("\n");
}
if ( te_rel->UnlinkNeeded || te_c->OptDisabled ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* UNRELATE ");
T_b(part_te_class->Key_Lett);
T_b(" FROM ");
T_b(form_te_class->Key_Lett);
T_b(" ACROSS R");
T_b(te_rel->Numb);
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(form_te_class->scope);
T_b(unrelate_method);
T_b("( ");
T_b(part_te_class->GeneratedName);
T_b(" * part, ");
T_b(form_te_class->GeneratedName);
T_b(" * form");
T_b(thismodule);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_c->DetectEmpty ) {
T_b("  ");
T_b("if ( (part == 0) || (form == 0) ) {");
T_b("\n");
T_b("    ");
T_b("XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(form_te_class->Key_Lett);
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
if ( part_te_oir->NavigatedTo || te_c->OptDisabled ) {
if ( part->Mult == 0 ) {
T_b("  ");
T_b("form->");
T_b(part_te_oir->data_member);
T_b(" = 0;");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &form->");
T_b(part_te_oir->data_member);
T_b(", (");
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(" *) part );");
T_b("\n");
}
} else {
T_b("  ");
T_b("/* Note:  ");
T_b(form_te_class->Key_Lett);
T_b("->");
T_b(part_te_class->Key_Lett);
T_b("[R");
T_b(te_rel->Numb);
T_b("] not navigated */");
T_b("\n");
}
if ( form_te_oir->NavigatedTo || te_c->OptDisabled ) {
if ( form->Mult == 0 ) {
T_b("  ");
T_b("part->");
T_b(form_te_oir->data_member);
T_b(" = 0;");
T_b("\n");
} else {
T_b("  ");
T_b(te_set->module);
T_b(te_set->remove_element);
T_b("( &part->");
T_b(form_te_oir->data_member);
T_b(", (");
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(" *) form );");
T_b("\n");
}
} else {
T_b("  ");
T_b("/* Note:  ");
T_b(part_te_class->Key_Lett);
T_b("->");
T_b(form_te_class->Key_Lett);
T_b("[R");
T_b(te_rel->Numb);
T_b("] not navigated */");
T_b("\n");
}
T_b(persist_unrelate->body);
T_b("");
T_b("}");
T_b("\n");
}
