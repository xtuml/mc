.//============================================================================
.// $RCSfile: q.domain.sync.arc,v $
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
.//============================================================================
.// Return the declaration and assignment of arguments to the values
.// in the structure.
.//============================================================================
.function SyncServiceUnpackArgumentMembers
  .param inst_ref_set s_sparms
  .param inst_ref te_sync
  .param string structure_name
  .//
  .if ( not_empty s_sparms )
    .select any te_ilb from instances of TE_ILB
  ${te_sync.GeneratedName}_arguments_t * ilbargs =
    (${te_sync.GeneratedName}_arguments_t *) ${te_ilb.get_data}();
    .for each sparm in s_sparms
      .select one te_parm related by sparm->TE_PARM[R2030]
      .select one te_dt related by sparm->S_DT[R26]->TE_DT[R2021]
  ${te_dt.ExtName}${te_parm.array_spec}\
      .if ( ( sparm.By_Ref != 0 ) and ( te_parm.dimensions == 0 ) )
        .// Pass "by reference" (read/write parameter)
 *\
      .end if
 ${te_parm.GeneratedName} = ${structure_name}->${te_parm.GeneratedName};
    .end for
  .end if
.end function
.//
.//============================================================================
.// Define the interface for the deferred routine which will pack up
.// the arguments into a structure and post it to the ILB queue.
.// Add second entry point for posting to Interleave Bridge queue.
.// This is intended to allow for this bridge to be called from
.// interrupt and signal handlers, tasks, etc.
.//============================================================================
.function SyncServiceDefineDeferred
  .param inst_ref_set s_sparms
  .param inst_ref te_sync
  .//
  .select any te_ilb from instances of TE_ILB
  .select any te_instance from instances of TE_INSTANCE
  .select any te_string from instances of TE_STRING
  .if ( not_empty s_sparms )
  ${te_sync.GeneratedName}_arguments_t * ilbargs =
    (${te_sync.GeneratedName}_arguments_t *) ${te_ilb.interleave_bridge}( ${te_sync.deferred_method} );
    .for each s_sparm in s_sparms
      .select one te_parm related by s_sparm->TE_PARM[R2030]
      .select one dt related by s_sparm->S_DT[R26]
      .if ( ( "string" == dt.Name ) and ( s_sparm.By_Ref == 0 ) )
  ${te_instance.module}${te_string.strcpy}( ilbargs->${te_parm.GeneratedName}, ${te_parm.GeneratedName} );
      .else
  ilbargs->${te_parm.GeneratedName} = ${te_parm.GeneratedName};
      .end if
    .end for
  .else
  ${te_ilb.interleave_bridge}( ${te_sync.deferred_method} );
  .end if
  ${te_ilb.interleave_bridge_done}();
}

static void
${te_sync.deferred_method}( void )
{
.end function
.//
.//============================================================================
.// Create the declaration of the domain function.  This will include
.// declaration of interfaces for deferred execution.
.//============================================================================
.function CreateSynchronousServiceClassDeclaration
  .param inst_ref te_c
  .param inst_ref te_sync
.//-- 010:20140303 Add Start (nomura)
.// user defined typeのヘッダファイルをincludeする。 
  .assign te_sync_copy = te_sync
  .select any te_file from instances of TE_FILE
  .while ( not_empty te_sync )
      .select one s_sync related by te_sync->S_SYNC[R2023]
      .select many s_sparms related by s_sync->S_SPARM[R24]
      .if ( not_empty s_sparms)
        .for each s_sparm in s_sparms
	  .select one te_dt related by s_sparm->S_DT[R26]->TE_DT[R2021]
	  .select many te_dt_temp_set from instances of TE_DT where (selected.Name == "TEMP_DATA_TYPE")
.//	  .assign tempdtnum = cardinality te_dt_temp_set
.//	  .print "++++ tempdtnum:${tempdtnum}"
	  .assign included = FALSE
	  .for each te_dt_temp in te_dt_temp_set
.//	  .print "++++ te_dt_temp:${te_dt_temp.Include_File} te_dt:${te_dt.Include_File}"
	     .if (te_dt_temp.Include_File == te_dt.Include_File)
.//	     .print "++++ ${te_dt.Include_File} is included"
	       .assign included = TRUE
	     .end if
	  .end for
	  .if (included == FALSE)
	       .create object instance te_dt_temp_new of TE_DT
	       .assign te_dt_temp_new.Name = "TEMP_DATA_TYPE"
	       .assign te_dt_temp_new.Include_File = te_dt.Include_File
	  .end if
	  .if ( included == FALSE) 
	    .if (( te_dt.Include_File != "") and ("${te_dt.Include_File}" != "${te_file.types}.${te_file.hdr_file_ext}" ) )
	    .print  "+++++ #include ${te_dt.Include_File}"
#include "${te_dt.Include_File}" /* ${te_dt.Name} */
            .end if
          .end if
	 .end for
      .end if
    .select one te_sync related by te_sync->TE_SYNC[R2095.'succeeds']
  .end while
  .//
.//  .select many te_dt_delete_set from instances of TE_DT where (selected.Name == "TEMP_DATA_TYPE")
.//  .for each te_dt_temp in te_dt_delete_set
.//    .delete object instance te_dt_temp
.//  .end for
.//	  .assign tempdtnum = cardinality te_dt_delete_set
.//	  .print "++++ tempdtnum2:${tempdtnum}"

  .//
  .assign te_sync = te_sync_copy
.//-- 010:20140303 Add End (nomura)
  .while ( not_empty te_sync )
    .select one te_aba related by te_sync->TE_ABA[R2010]
    .include "${te_file.arc_path}/t.domain.function.h"
    .select one te_sync related by te_sync->TE_SYNC[R2095.'succeeds']
  .end while
.end function
.//
.//============================================================================
.// Create the domain function definition.
.//============================================================================
.function CreateSynchronousServiceClassDefinition
  .param inst_ref te_c
  .param inst_ref te_sync
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_target from instances of TE_TARGET
  .// CDS - Sub in the select/for to get previous (file) ordering.
  .//.select many te_syncs related by te_c->TE_SYNC[R2084]
  .//.for each te_sync in te_syncs
  .while ( not_empty te_sync )
    .if ( te_sync.XlateSemantics )
      .select one s_sync related by te_sync->S_SYNC[R2023]
      .select many s_sparms related by s_sync->S_SPARM[R24]
      .select many te_parms related by s_sparms->TE_PARM[R2030]
      .//
      .// Define synchronous service routine.
      .invoke deferred_definition = SyncServiceDefineDeferred( s_sparms, te_sync )
      .// Get and unpack argument data.
      .invoke unpack_arguments = SyncServiceUnpackArgumentMembers( s_sparms, te_sync, "ilbargs" )
      .invoke event_prioritization_needed = GetEventPrioritizationNeeded()
      .select one te_aba related by te_sync->TE_ABA[R2010]
      .assign function_body = ""
      .if ( s_sync.Suc_Pars == 1 )
        .assign function_body = te_aba.code
      .end if
      .include "${te_file.arc_path}/t.domain.function.c"
    .end if
    .select one te_sync related by te_sync->TE_SYNC[R2095.'succeeds']
  .end while
  .//.end for
.end function
.//
