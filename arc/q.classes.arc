.//============================================================================
.// This archetype file contains the functions for generating application
.// analysis object implementation declaration and definition files.
.//============================================================================
.//
.//
.//
.select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
.// Prepare the Instance subsystem for translation.
.select any i_ins from instances of I_INS
.if ( not_empty i_ins )
  .select many o_objs related by te_classes->O_OBJ[R2019]
  .invoke PEIInstanceSubsystemInit( o_objs )
.end if
.for each te_class in te_classes
  .// Generate declaration implementation file.
  .invoke implementation = CreateObjectImplementation( te_class, te_c, true )
${implementation.body}
  .emit to file "${te_file.domain_include_path}/${te_class.class_file}.${te_file.hdr_file_ext}"
  .//
  .// Generate definition implementation.
  .invoke implementation = CreateObjectImplementation( te_class, te_c, false )
${implementation.body}
  .emit to file "${te_file.domain_source_path}/${te_class.class_file}.${te_file.src_file_ext}"
.end for
.//
