.//============================================================================
.// $RCSfile: q.components.arc,v $
.//
.// Description:
.// Component ports top level query.
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
.assign port_declarations = ""
.select many te_cs from instances of TE_C where ( selected.included_in_build )
.for each te_c in te_cs
  .assign port_declarations = port_declarations + "#include ""${te_c.port_file}.${te_file.hdr_file_ext}""\n"
.end for
.// invoke VFB related files generation function
.if ( te_sys.VFB )
  .invoke VFB_Target_Functions_Files = Create_VFB_Target_Functions_File()
  ${VFB_Target_Functions_Files.vfb_Functions_H_comments}
  ${VFB_Target_Functions_Files.functions_header}
  .emit to file "${te_file.system_include_path}/Functions_vfb.h"
  ${VFB_Target_Functions_Files.vfb_Target_comments}
  ${VFB_Target_Functions_Files.target_header}
  .emit to file "${te_file.system_include_path}/target.h"
  ${VFB_Target_Functions_Files.vfb_Functions_C_comments}
  ${VFB_Target_Functions_Files.functions_C}
  .emit to file "${te_file.system_include_path}/Functions_vfb.c"
.end if
.//
.for each te_c in te_cs
  .select any te_class related by te_c->TE_CLASS[R2064]
  .select many te_macts related by te_c->TE_MACT[R2002]
  .invoke declarations = TE_MACT_CreateDeclarations( te_macts )
  .include "${arc_path}/t.component.ports.h"
  .emit to file "${te_file.system_include_path}/${te_c.port_file}.${te_file.hdr_file_ext}"
  .//
  .invoke definitions = TE_MACT_CreateDefinition( te_macts )
  .invoke include_files = ClassAddIncludeFiles( te_c, FALSE )
  .include "${arc_path}/t.component.ports.c"
  .emit to file "${te_file.system_source_path}/${te_c.port_file}.${te_file.src_file_ext}"
  .// invoke VFB header and C files generation function
  .if ( te_sys.VFB )
    .invoke Create_VFB_Rte_Header= Create_VFB_Rte_Header( te_macts, te_c )
    ${Create_VFB_Rte_Header.vfb_header_comments}
    ${Create_VFB_Rte_Header.autosar_vfb}
    .emit to file "${te_file.system_include_path}/Rte_co_${te_c.Name}.h"
    .invoke Create_VFB_Rte_Header= Create_VFB_Rte_Header( te_macts, te_c )
    ${Create_VFB_Rte_Header.autosar_vfb_dataType_header}
    .emit to file "${te_file.system_include_path}/Rte_Type.h"
    .invoke Rte_VFB_C =Create_VFB_Rte_C( te_macts, te_c)
    ${Rte_VFB_C.vfb_C_comments}
    ${Rte_VFB_C.include_header}
    ${Rte_VFB_C.parameters_save_with_dt}
    ${Rte_VFB_C.autosar_vfb}
    .emit to file "${te_file.system_include_path}/${te_c.Name}_vfb.c"
  .end if
.end for
.//
