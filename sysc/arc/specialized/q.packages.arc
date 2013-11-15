.//============================================================================
.// $RCSfile: q.packages.arc,v $
.//
.// Description:
.// This archetype file contains the functions for generating application
.// analysis package implementation declaration and definition files.
.//
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
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
.assign include_files = ""
.assign top_module_instances = ""
.assign top_module_inits = ""
.assign port_binding = ""
.assign bitLevelChannels = ""
.if ( not_empty tm_build_pkgs )
  .for each tm_build_pkg in tm_build_pkgs
    .select any cp_cp from instances of CP_CP where ( selected.Name == tm_build_pkg.package_to_build )
	.select any c_c_parent from instances of C_C where (false)
	.if (not_empty cp_cp )    
	  .// -- handle CL_ICs located under a cp_cp
      .select many comp_refs related by cp_cp->CL_IC[R4605]
        .for each comp_ref in comp_refs
		  .assign comp_inst = ""
          .select any comp related by comp_ref->C_C[R4201]->TE_C[R2054]         
	      .assign cl_ic_description = "${comp_ref.ClassifierName}"		
          .if(cl_ic_description == "" )
            .assign comp_inst = "i${comp.Name}"			
          .else
            .assign comp_inst = "${cl_ic_description}"			
          .end if
          .assign top_module_inits = "${top_module_inits}" + ", ${comp_inst}(""${comp.Name}_module"")"
	      .if ( te_sys.SystemCPortsType == "TLM" )
	        .assign include_files = "${include_files}" + "#include ""${comp.Name}_bp_model.${te_file.hdr_file_ext}""\n"
	        .assign top_module_instances = "${top_module_instances}" + "  ${comp.Name}_bp_pvt ${comp_inst};\n"
	      .else
	        .assign include_files = "${include_files}" + "#include ""${comp.Name}.${te_file.hdr_file_ext}""\n"
	        .assign top_module_instances = "${top_module_instances}" + "  ${comp.Name} ${comp_inst};\n"
	      .end if
	      .invoke bind = TE_C_BindPorts (comp, comp_ref, cp_cp, c_c_parent )
		  .assign port_binding = "${port_binding}" + bind.port_binding
		  .assign bitLevelChannels = "${bitLevelChannels}" + bind.bitLevelChannels
        .end for
	  .// -- handle C_Cs located under a cp_cp
      .select any comp_ref from instances of CL_IC where (false)
      .select many comps related by cp_cp->C_C[R4604]->TE_C[R2054]
	  .if ( not_empty comps )
        .assign comp_inst = ""
        .for each comp in comps
          .assign comp_inst = "i${comp.Name}"
          .assign top_module_inits = "${top_module_inits}" + ", ${comp_inst}(""${comp.Name}_module"")"
	      .if ( te_sys.SystemCPortsType == "TLM" )
	        .assign include_files = "${include_files}" + "#include ""${comp.Name}_bp_model.${te_file.hdr_file_ext}""\n"
	        .assign top_module_instances = "${top_module_instances}" + "  ${comp.Name}_bp_pvt ${comp_inst};\n"
	      .else
	        .assign include_files = "${include_files}" + "#include ""${comp.Name}.${te_file.hdr_file_ext}""\n"
	        .assign top_module_instances = "${top_module_instances}" + "  ${comp.Name} ${comp_inst};\n"
	      .end if
	      .invoke bind = TE_C_BindPorts (comp, comp_ref, cp_cp, c_c_parent )
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
