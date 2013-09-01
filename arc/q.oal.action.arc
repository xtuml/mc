.//============================================================================
.// $RCSfile: q.oal.action.arc,v $
.//
.// Description:
.// This query rolls up (accumulates) the translated statements into
.// a single string attribute on the action block anchor (TE_ABA).
.// After this roll-up, the ACT_* and V_* instances are no longer needed.
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
.function TE_ABA_rollup
  .assign parseSuccessful = ( 1 ) .COMMENT ParseStatus::parseSuccessful
  .select any empty_act_blk from instances of ACT_BLK where ( false )
  .select many te_cs from instances of TE_C where ( selected.included_in_build )
  .for each te_c in te_cs
    .select many te_abas related by te_c->TE_ABA[R2088]
    .for each te_aba in te_abas
      .assign act_blk = empty_act_blk
      .if ( "S_SYNC" == te_aba.subtypeKL )
        .select one act_blk related by te_aba->TE_SYNC[R2010]->S_SYNC[R2023]->ACT_FNB[R695]->ACT_ACT[R698]->ACT_BLK[R666]
      .elif ( "O_DBATTR" == te_aba.subtypeKL )
        .select one te_dbattr related by te_aba->TE_DBATTR[R2010]
        .select one o_dbattr related by te_dbattr->O_DBATTR[R2026]
        .select one te_attr related by o_dbattr->O_BATTR[R107]->O_ATTR[R106]->TE_ATTR[R2033]
        .if ( ( te_attr.Used ) or ( te_c.OptDisabled ) )
          .if ( parseSuccessful == o_dbattr.Suc_Pars )
            .select one act_blk related by o_dbattr->ACT_DAB[R693]->ACT_ACT[R698]->ACT_BLK[R666]
          .end if
        .end if
      .elif ( "O_TFR" == te_aba.subtypeKL )
        .select one o_tfr related by te_aba->TE_TFR[R2010]->O_TFR[R2024]
        .if ( parseSuccessful == o_tfr.Suc_Pars )
          .select one act_blk related by o_tfr->ACT_OPB[R696]->ACT_ACT[R698]->ACT_BLK[R666]
        .end if
      .elif ( "SM_ACT" == te_aba.subtypeKL )
        .select one sm_act related by te_aba->TE_ACT[R2010]->SM_ACT[R2022]
        .select one act_blk related by sm_act->ACT_SAB[R691]->ACT_ACT[R698]->ACT_BLK[R666]
        .if ( empty act_blk )
          .// Get the transition action.
          .select one act_blk related by sm_act->ACT_TAB[R688]->ACT_ACT[R698]->ACT_BLK[R666]
        .end if
      .elif ( "TE_MACT" == te_aba.subtypeKL )
        .select one te_mact related by te_aba->TE_MACT[R2010]
        .if ( "SPR_PO" == te_mact.subtypeKL )
          .select one act_blk related by te_aba->TE_MACT[R2010]->SPR_PO[R2050]->ACT_POB[R687]->ACT_ACT[R698]->ACT_BLK[R666]
        .elif ( "SPR_RO" == te_mact.subtypeKL )
          .select one act_blk related by te_aba->TE_MACT[R2010]->SPR_RO[R2052]->ACT_ROB[R685]->ACT_ACT[R698]->ACT_BLK[R666]
        .elif ( "SPR_PS" == te_mact.subtypeKL )
          .select one act_blk related by te_aba->TE_MACT[R2010]->SPR_PS[R2051]->ACT_PSB[R686]->ACT_ACT[R698]->ACT_BLK[R666]
        .elif ( "SPR_RS" == te_mact.subtypeKL )
          .select one act_blk related by te_aba->TE_MACT[R2010]->SPR_RS[R2053]->ACT_RSB[R684]->ACT_ACT[R698]->ACT_BLK[R666]
        .end if
      .elif ( "S_BRG" == te_aba.subtypeKL )
        .select one act_blk related by te_aba->TE_BRG[R2010]->S_BRG[R2025]->ACT_BRB[R697]->ACT_ACT[R698]->ACT_BLK[R666]
      .else
        .print "ERROR:  TE_ABA.subtypeKL (${te_aba.subtypeKL}) out of range."
        .exit 101
      .end if
      .if ( not_empty act_blk )
        .select one te_blk related by act_blk->TE_BLK[R2016]
        .invoke blck_xlate( te_c.StmtTrace, te_blk, te_aba )
      .else
        .assign te_aba.code = ( "\n  /" + "* WARNING!  Skipping unsuccessful or unparsed action.  *" ) + "/\n"
      .end if
    .end for
  .end for
  .// Process EEs outside of components.
  .select many te_ees from instances of TE_EE where ( ( selected.RegisteredName != "TIM" ) and selected.Included )
  .for each te_ee in te_ees
    .select one te_c related by te_ee->TE_C[R2085]
    .if ( empty te_c )
      .select many s_brgs related by te_ee->S_EE[R2020]->S_BRG[R19]
      .for each s_brg in s_brgs
        .select one act_blk related by s_brg->ACT_BRB[R697]->ACT_ACT[R698]->ACT_BLK[R666]
        .select one te_aba related by s_brg->TE_BRG[R2025]->TE_ABA[R2010]
        .if ( not_empty act_blk )
          .select one te_blk related by act_blk->TE_BLK[R2016]
          .invoke blck_xlate( false, te_blk, te_aba )
        .end if
      .end for
    .end if
  .end for
.end function
