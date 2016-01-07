if ( 0==strcmp("any",te_select_where->multiplicity) ) {
if ( ! te_select_where->special ) {
T_b(ws);
T_b(te_select_where->var_name);
T_b(" = 0;");
T_b("\n");
}
} else if ( 0==strcmp("many",te_select_where->multiplicity) ) {
if ( te_select_where->is_implicit ) {
T_b(ws);
T_b(te_set->module);
T_b(te_set->clear);
T_b("( ");
T_b(te_select_where->var_name);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(te_set->module);
T_b(te_set->clear);
T_b("( ");
T_b(te_select_where->var_name);
T_b(" );");
T_b("\n");
}
}
if ( ( ! te_select_where->special ) || ( 0==strcmp("many",te_select_where->multiplicity) ) ) {
if ( 0==strcmp("FALSE",te_select_where->where_clause) ) {
} else {
T_b(ws);
T_b("{ ");
T_b(te_select_where->class_name);
T_b(" * ");
T_b(te_select_where->selected_var_name);
T_b(";");
T_b("\n");
T_b(ws);
T_b("  ");
T_b(te_set->scope);
T_b(te_set->iterator_class_name);
T_b(" ");
T_b(iterator);
T_b(";");
T_b("\n");
T_b(ws);
T_b("  ");
T_b(te_set->iterator_reset);
T_b("( &");
T_b(iterator);
T_b(", &");
T_b(extent);
T_b(".");
T_b(te_extent->active);
T_b(" );");
T_b("\n");
T_b(ws);
T_b("  while ( (");
T_b(te_select_where->selected_var_name);
T_b(" = (");
T_b(te_select_where->class_name);
T_b(" *) ");
T_b(te_set->module);
T_b(te_set->iterator_next);
T_b("( &");
T_b(iterator);
T_b(" )) != 0 ) {");
T_b("\n");
if ( ! te_select_where->special ) {
T_b(ws);
T_b("    if ( ");
T_b(te_select_where->where_clause);
T_b(" ) ");
} else {
T_b(ws);
T_b("    if ( ");
T_b(where_comp);
T_b(" ) ");
}
T_b("{");
T_b("\n");
if ( 0==strcmp("any",te_select_where->multiplicity) ) {
T_b(ws);
T_b("      ");
T_b(te_select_where->var_name);
T_b(" = ");
T_b(te_select_where->selected_var_name);
T_b(";");
T_b("\n");
T_b(ws);
T_b("      break;");
T_b("\n");
} else if ( 0==strcmp("many",te_select_where->multiplicity) ) {
T_b(ws);
T_b("      ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( ");
T_b(te_select_where->var_name);
T_b(", ");
T_b(te_select_where->selected_var_name);
T_b(" );");
T_b("\n");
}
T_b(ws);
T_b("    }");
T_b("\n");
T_b(ws);
T_b("  }");
T_b("\n");
T_b(ws);
T_b("}");
T_b("\n");
}
} else {
T_b(ws);
T_b(te_select_where->var_name);
T_b(" = ");
T_b(te_where->select_any_where);
T_b("( ");
T_b(arguments);
T_b(" );");
T_b("\n");
}
