//============================================================================
.// $RCSfile: q.domain.bridge.arc,v $
.//
.// Description:
.// External Entity bridge process skeleton generator.
.//
.// Notice:
.// (C) Copyright 1998-2010 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
.//============================================================================
.// Include only the class header files that we access!
.//============================================================================
.function AddBridgeIncludeFiles
  .param inst_ref s_ee
  .param boolean gen_declaration
  .//
  .select any te_file from instances of TE_FILE
  .select any te_eq from instances of TE_EQ
  .if ( not gen_declaration )
    .invoke persistence_needed = IsPersistenceSupportNeeded()
    .if ( persistence_needed.result )
      .if ( s_ee.Key_Lett == "PERSIST" )
        .select any s_brg related by s_ee->S_BRG[R19] where ( selected.Name == "commit" )
        .if ( not_empty s_brg )
#include "${te_file.persist}.${te_file.hdr_file_ext}"
        .end if
      .elif ( s_ee.Key_Lett == "NVS" )
#include "${te_file.nvs}.${te_file.hdr_file_ext}"
      .end if
    .end if .// persistence_needed.result
    .if ( s_ee.Key_Lett == "ARCH" )
extern bool ${te_eq.run_flag}; /* Turn this false to stop the event queues.  */
    .end if
  .end if
.end function
.//
.//============================================================================
.// Build the include file body for the bridge.
.//============================================================================
.function TE_BRG_CreateDeclarations
  .param inst_ref_set s_brgs
  .select any te_file from instances of TE_FILE
  .select any te_brg related by s_brgs->TE_BRG[R2025]
  .if ( not_empty s_brgs )
class ${te_brg.EEkeyletters} {
  public:
    .for each s_brg in s_brgs
      .select one te_aba related by s_brg->TE_BRG[R2025]->TE_ABA[R2010]
      .include "${te_file.arc_path}/t.ee.bridge.h"
    .end for
};
  .end if
.end function
.//
.//============================================================================
.// Generate the bridge skeletons.  Go ahead and translate any action
.// language in the body of the bridge.
.// For TIM, NVS and PERSIST do some special processing.
.//============================================================================
.function TE_BRG_CreateDefinition
  .param inst_ref s_ee
  .param inst_ref_set s_brgs
  .select any te_file from instances of TE_FILE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_eq from instances of TE_EQ
  .select one te_c related by s_ee->S_DOM[R8]->TE_C[R2017]
  .select one te_ee related by s_ee->TE_EE[R2020]
  .invoke persistence_needed = IsPersistenceSupportNeeded()
  .for each s_brg in s_brgs
    .select one te_brg related by s_brg->TE_BRG[R2025]
    .select one te_aba related by te_brg->TE_ABA[R2010]
    .select one te_dt related by s_brg->S_DT[R20]->TE_DT[R2021]
    .assign bridge_action_body = ""
    .if ( s_brg.Suc_Pars == 1 )
      .select one act_blk related by s_brg->ACT_BRB[R697]->ACT_ACT[R698]->ACT_BLK[R666]
      .invoke axret = blck_xlate( te_c.StmtTrace, act_blk, 0 )
      .assign bridge_action_body = axret.body
    .end if
    .include "${te_file.arc_path}/t.ee.brg.c"
  .end for
.end function
.//
