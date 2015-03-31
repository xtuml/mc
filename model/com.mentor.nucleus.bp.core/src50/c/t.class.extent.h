T_b("#define ");
T_b(te_class->GeneratedName);
T_b("_MAX_EXTENT_SIZE ");
if ( 0 == te_class->MaxExtentSize ) {
T_b("1");
T_b("\n");
} else {
T_b(te_class->MaxExtentSize);
T_b("\n");
}
T_b("extern ");
T_b(te_set->scope);
T_b(te_extent->type);
T_b(" ");
T_b(extent);
T_b(";");
T_b("\n");
if ( te_class->PEIsDefinedInData ) {
T_b("extern ");
T_b(te_class->GeneratedName);
T_b(" ");
T_b(te_class->GeneratedName);
T_b("_instances[ ");
T_b(te_class->GeneratedName);
T_b("_MAX_EXTENT_SIZE ];");
T_b("\n");
}
