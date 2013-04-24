.//============================================================================
.// $RCSfile: q.domain.syncs.arc,v $
.//
.// Description:
.// Translation methods for Domain Function (Synchronous Services).
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
.invoke action_includes = ClassAddIncludeFiles( te_c, false )
.select any s_sync related by s_dom->S_SYNC[R23]
.if ( not_empty s_sync )
  .invoke declaration = CreateSynchronousServiceClassDeclaration( s_dom )
  .include "${te_file.arc_path}/t.domain.functions.h"
  .emit to file "${te_file.system_include_path}/${te_c.functions_file}.${te_file.hdr_file_ext}"
  .select any te_sync related by s_dom->S_SYNC[R23]->TE_SYNC[R2023]
  .assign te_sync.Included = true
  .select any te_sync related by s_dom->S_SYNC[R23]->TE_SYNC[R2023] where ( selected.IsSafeForInterrupts )
  .select any o_obj from instances of O_OBJ where ( false )
  .invoke definition = CreateSynchronousServiceClassDefinition( s_dom )
  .include "${te_file.arc_path}/t.domain.functions.c"
  .emit to file "${te_file.domain_source_path}/${te_c.functions_file}.${te_file.src_file_ext}"
.end if
.//
