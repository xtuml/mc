.//============================================================================
.// $RCSfile: q.autosar.vfb_ports.arc,v $
.//
.// Description:
.// AUTOSAR VFB connections to SWC messages.
.//============================================================================
.//
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
