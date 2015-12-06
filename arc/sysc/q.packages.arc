.//============================================================================
.// This archetype file contains the functions for generating application
.// analysis package implementation declaration and definition files.
.//============================================================================
.//
.//
.//
.select many tm_build_pkgs from instances of TM_BUILD
.select any te_sys from instances of TE_SYS
.select many empty_te_cs from instances of TE_C where ( false )
.select many empty_te_cis related by empty_te_cs->TE_CI[R2008] where ( false )
.assign include_files = ""
.assign top_module_instances = ""
.assign top_module_inits = ""
.assign top_module_comp_inits = ""
.assign top_module_dispatcher = ""
.assign port_binding = ""
.assign bitLevelChannels = ""
.if ( not_empty tm_build_pkgs )
  .select any te_ee from instances of TE_EE where ( selected.Key_Lett == "TIM" )
  .for each tm_build_pkg in tm_build_pkgs
    .select any ep_pkg from instances of EP_PKG where ( selected.Name == tm_build_pkg.package_to_build )
    .select many te_cis related by ep_pkg->PE_PE[R8000]->CL_IC[R8001]->TE_CI[R2009]
    .if ( not_empty te_cis )    
      .select any c_c_parent from instances of C_C where ( false )
      .// -- handle CL_ICs located under a pkg
      .for each te_ci in te_cis
        .assign comp_inst = ""
        .select one te_c related by te_ci->TE_C[R2008]
        .assign comp_inst = te_ci.ClassifierName
        .if ( "" == comp_inst )
          .assign comp_inst = "i" + te_c.Name
        .end if
        .assign top_module_inits = top_module_inits + ", ${comp_inst}( ""${te_c.Name}_module"" )"
        .if ( "TLM" == te_sys.SystemCPortsType )
          .assign include_files = include_files + "#include ""${te_c.Name}_bp_model.${te_file.hdr_file_ext}""\n"
          .assign top_module_instances = top_module_instances + "  ${te_c.Name}_bp_pvt ${comp_inst};\n"
        .else
          .assign include_files = include_files + "#include ""${te_c.Name}.${te_file.hdr_file_ext}""\n"
          .assign top_module_instances = top_module_instances + "  ${te_c.Name} ${comp_inst};\n"
          .if ( ( "SystemC" != te_thread.flavor ) and ( te_c.included_in_build ) )
            .select any te_sm related by te_c->TE_CLASS[R2064]->TE_SM[R2072]
            .select one te_sync related by te_c->TE_SYNC[R2097]
            .invoke s = CreateDomainInitSegment( te_c, te_sync, te_sm )
            .assign init_seg = s.body
            .if ( "" != init_seg )
              .assign top_module_comp_inits = ( ( "\n    " + top_module_comp_inits ) + ( comp_inst + "." ) ) + init_seg
            .end if
            .if ( not_empty te_sm )
              .assign top_module_dispatcher = top_module_dispatcher + "      ${comp_inst}.ooa_loop( &${comp_inst} );\n"
            .end if
            .if ( not_empty te_ee )
              .// CDS For now, tim gets included if a TIM is found anywhere.
              .assign top_module_dispatcher = top_module_dispatcher + "      ${comp_inst}.tim->tick();\n"
            .end if
          .end if
        .end if
        .invoke bind = TE_C_BindPorts( te_c, te_ci, ep_pkg, c_c_parent )
        .assign port_binding = port_binding + bind.port_binding
        .assign bitLevelChannels = bitLevelChannels + bind.bitLevelChannels
      .end for
      .// -- handle C_Cs located under a pkg
      .select many te_cs related by ep_pkg->PE_PE[R8000]->C_C[R8001]->TE_C[R2054]
      .if ( not_empty te_cs )
        .select any te_ci related by empty_te_cs->TE_CI[R2008] where ( false )
        .assign comp_inst = ""
        .for each te_c in te_cs
          .assign comp_inst = "i" + te_c.Name
          .assign top_module_inits = top_module_inits + ", ${comp_inst}( ""${te_c.Name}_module"" )"
          .if ( "TLM" == te_sys.SystemCPortsType )
            .assign include_files = include_files + "#include ""${te_c.Name}_bp_model.${te_file.hdr_file_ext}""\n"
            .assign top_module_instances = top_module_instances + "  ${te_c.Name}_bp_pvt ${comp_inst};\n"
          .else
            .assign include_files = include_files + "#include ""${te_c.Name}.${te_file.hdr_file_ext}""\n"
            .assign top_module_instances = top_module_instances + "  ${te_c.Name} ${comp_inst};\n"
            .if ( ( "SystemC" != te_thread.flavor ) and ( te_c.included_in_build ) )
              .select any te_sm related by te_c->TE_CLASS[R2064]->TE_SM[R2072]
              .if ( not_empty te_sm )
                .assign top_module_dispatcher = top_module_dispatcher + "      ${comp_inst}.ooa_loop( &${comp_inst} );\n"
              .end if
            .end if
          .end if
          .invoke bind = TE_C_BindPorts (te_c, te_ci, ep_pkg, c_c_parent )
          .assign port_binding = "${port_binding}" + bind.port_binding
          .assign bitLevelChannels = "${bitLevelChannels}" + bind.bitLevelChannels
        .end for
      .end if
    .end if
    .// Generate declaration files
    .assign pkg_name = "$r{tm_build_pkg.package_obj_name}"
    .include "${arc_path}/t.package.module.h"
    .emit to file "${te_file.system_include_path}/${pkg_name}.${te_file.hdr_file_ext}"
    .//
  .end for
.end if
.//
