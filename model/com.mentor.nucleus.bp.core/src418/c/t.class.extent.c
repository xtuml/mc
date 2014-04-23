T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Statically allocate space for the instance population for this class.");
T_b("\n");
T_b(" ");
T_b("* Allocate space for the class instance and its attribute values.");
T_b("\n");
T_b(" ");
T_b("* Depending upon the collection scheme, allocate containoids (collection");
T_b("\n");
T_b(" ");
T_b("* nodes) for gathering instances into free and active extents.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b(fixed_extent_begin);
T_b("");
if ( te_class->PEIsDefinedInData ) {
T_b(peis->assset);
T_b("");
}
T_b("static ");
T_b(te_set->scope);
T_b(te_set->element_type);
T_b(" ");
T_b(te_class->GeneratedName);
T_b("_container[ ");
T_b(te_class->GeneratedName);
T_b("_MAX_EXTENT_SIZE ];");
T_b("\n");
if ( ! te_class->PEIsDefinedInData ) {
T_b("static ");
}
T_b(te_class->GeneratedName);
T_b(" ");
T_b(te_class->GeneratedName);
T_b("_instances[ ");
T_b(te_class->GeneratedName);
T_b("_MAX_EXTENT_SIZE ]");
if ( te_class->PEIsDefinedInData ) {
T_b(" ");
T_b("= {");
T_b("\n");
T_b(peis->body);
T_b("");
T_b("};");
T_b("\n");
} else {
T_b(";");
T_b("\n");
}
T_b(fixed_extent_end);
T_b("");
T_b(te_set->scope);
T_b(te_extent->type);
T_b(" ");
T_b(extent);
T_b(" = {");
T_b("\n");
T_b("  ");
T_b("{");
T_b(pei_counter);
T_b("");
if ( te_sys->InstanceLoading ) {
T_b(",0}, {0,0},");
} else {
T_b("}, {0},");
}
T_b(" ");
T_b("&");
T_b(te_class->GeneratedName);
T_b("_container[ 0 ],");
T_b("\n");
T_b("  ");
T_b("(");
T_b(te_instance->handle);
T_b(") &");
T_b(te_class->GeneratedName);
T_b("_instances,");
T_b("\n");
T_b("  ");
T_b("sizeof( ");
T_b(te_class->GeneratedName);
T_b(" ), ");
T_b(state_init);
T_b(", ");
T_b(te_class->GeneratedName);
T_b("_MAX_EXTENT_SIZE");
T_b(persistent_extent_attrs->body);
T_b("\n");
T_b("  ");
T_b("};");
T_b("\n");
