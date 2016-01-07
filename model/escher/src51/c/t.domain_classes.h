if ( 0==strcmp("C",te_target->language) ) {
T_b("/*----------------------------------------------------------------------------");
T_b("\n");
T_b(" ");
T_b("* File:  ");
T_b(te_c->classes_file);
T_b(".");
T_b(te_file->hdr_file_ext);
T_b("\n");
T_b(" ");
T_b("*");
T_b("\n");
T_b(" ");
T_b("* This file defines the object type identification numbers for all classes");
T_b("\n");
T_b(" ");
T_b("* in the component:  ");
T_b(te_c->Name);
T_b("\n");
T_b(" ");
T_b("*");
T_b("\n");
T_b(" ");
T_b("* ");
T_b(te_copyright->body);
T_b("\n");
T_b(" ");
T_b("*--------------------------------------------------------------------------*/");
T_b("\n");
T_b("#ifndef ");
T_b(te_c->classes_file);
T_b("_");
T_b(te_file->hdr_file_ext);
T_b("\n");
T_b("#define ");
T_b(te_c->classes_file);
T_b("_");
T_b(te_file->hdr_file_ext);
T_b("\n");
T_b(te_target->c2cplusplus_linkage_begin);
T_b("\n");
}
T_b(te_file->arc_path);
if ( not_empty first_te_class ) {
T_b("#define ");
T_b(te_dci->max_models);
T_b(" ");
T_b(number_of_state_machines);
T_b("\n");
if ( 0==strcmp("C++",te_target->language) ) {
T_b("#define ");
T_b(dom_id);
T_b(" 0");
T_b("\n");
}
T_b("/* Define constants to map to class numbers.  */");
T_b("\n");
T_b(class_numbers);
T_b("");
T_b("#define ");
T_b(te_dci->max);
T_b(" ");
T_b(class_number_count);
T_b("\n");
T_b("/* Provide a map of classes to task numbers.  */");
T_b("\n");
T_b("#define ");
T_b(te_dci->task_numbers);
T_b(" ");
T_b(task_numbers);
T_b("\n");
T_b("#define ");
T_b(te_c->Name);
T_b("_class_dispatchers");
T_b(class_dispatchers);
T_b("\n");
if ( te_sys->InstanceLoading ) {
T_b("#define ESCHER_IDDUMP_MASK 0x0fffffff");
T_b("\n");
T_b("#define ");
T_b(te_c->Name);
T_b("_instance_loaders");
T_b(instance_loaders);
T_b("\n");
T_b("#define ");
T_b(te_c->Name);
T_b("_batch_relaters");
T_b(batch_relaters);
T_b("\n");
}
T_b("/* Provide definitions of the shapes of the class structures.  */");
T_b("\n");
T_b(class_typedefs);
T_b("\n");
T_b("/* union of class declarations so we may derive largest class size */");
T_b("\n");
T_b("#define ");
T_b(te_dci->persist_union);
T_b(" \");
T_b(class_union);
T_b("");
}
if ( not_empty enumeration_te_dts ) {
T_b(te_file->arc_path);
}
if ( 0==strcmp("C",te_target->language) ) {
if ( not_empty te_sync ) {
T_b(te_file->arc_path);
}
}
T_b(ee_includes);
T_b("\n");
T_b(class_includes);
T_b("");
T_b(event_unions);
T_b("");
if ( 0==strcmp("C",te_target->language) ) {
T_b(te_target->c2cplusplus_linkage_end);
T_b("\n");
T_b("#endif  /* ");
T_b(te_c->classes_file);
T_b("_");
T_b(te_file->hdr_file_ext);
T_b(" */");
T_b("\n");
}
