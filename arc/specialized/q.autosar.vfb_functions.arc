.//============================================================================
.// $RCSfile: q.autosar.vfb_functions.arc,v $
.//
.// Description:
.// AUTOSAR function interface to simulated VFB.
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
