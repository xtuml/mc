.function mc_main
  .param string arc_path
  .invoke parameters_sort()
  .//
  .// Create the unmarked, standard singletons.
  .invoke factory_factory()
  .select any te_file from instances of TE_FILE
  .assign te_file.arc_path = arc_path
  .//
  .// marking
  .//
  .// Initialize the generator database with marking information.
  .// Note that the order of processing is important here.
  .//
  .// 2) Mark interrupt handlers.
  .include "${te_file.system_color_path}/${te_file.bridge_mark}"
  .// 3) Initiate user data type marking.
  .include "${te_file.system_color_path}/${te_file.datatype_mark}"
  .// 4) Initiate prefix marking (from system marking file).
  .include "${te_file.system_color_path}/${te_file.system_mark}"
  .//
  .invoke PseudoFormalizeUnformalizedAssociations()
  .invoke sys_populate()
  .select any te_sys from instances of TE_SYS
  .//
  .// 5) Perform domain level marking.
  .include "${te_file.domain_color_path}/${te_file.domain_mark}"
  .//
  .// 6) Perform class level marking.
  .include "${te_file.domain_color_path}/${te_file.class_mark}"
  .//
  .// 7) Perform event marking.
  .include "${te_file.domain_color_path}/${te_file.event_mark}"
  .//
  .// analyze
  .include "${te_file.arc_path}/q.domain.analyze.arc"
  .invoke CreateSpecialWhereClauseInstances( te_sys )
  .select many te_cs from instances of TE_C where ( selected.included_in_build )
  .for each te_c in te_cs
    .// Propagate domain information to the system level.
    .invoke te_c_CollectLimits( te_c )
  .end for
  .invoke translate_all_oal()
.end function
