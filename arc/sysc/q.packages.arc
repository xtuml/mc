.//============================================================================
.// $RCSfile: q.packages.arc,v $
.//
.// Description:
.// This archetype file contains the functions for generating application
.// analysis package implementation declaration and definition files.
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
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
.assign port_binding = ""
.assign bitLevelChannels = ""
.if ( not_empty tm_build_pkgs )
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
