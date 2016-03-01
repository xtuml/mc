if ( 0==strcmp("any",te_select->multiplicity) ) {
T_b(ws);
T_b(te_select->var_name);
T_b(" = (");
T_b(te_select->class_name);
T_b(" *) ");
T_b(te_set->get_any);
T_b("( &");
T_b(extent);
T_b(".");
T_b(te_extent->active);
T_b(" );");
T_b("\n");
} else if ( 0==strcmp("many",te_select->multiplicity) ) {
T_b(ws);
T_b(te_set->module);
T_b(te_set->copy);
T_b("( ");
T_b(te_select->var_name);
T_b(", &");
T_b(extent);
T_b(".");
T_b(te_extent->active);
T_b(" );");
T_b("\n");
}
