.//============================================================================
.// $RCSfile: q.oal.act_blk.arc,v $
.//
.// Description:
.// This function provides indirection and a single point of turning for
.// fragment versus OAL instance based code generation.
.//
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
.// This function produces the code for an action given the outer
.// block.  It traverses each statement in order and generates for it.
.//
.// If the statement is a control statement, then there are two
.// buffers of generated code, otherwise there is only one.
.//
.function blck_xlate
  .param boolean trace
  .param inst_ref act_blk
  .param integer junk_throw_away_later
  .select one te_blk related by act_blk->TE_BLK[R2016]
  .assign attr_te_blk = te_blk
  .select any act_smt related by act_blk->ACT_SMT[R602] 
  .if ( not_empty act_smt )
    .// We have statements in this block.
    .// Get empty handles into scope.
    .select any current_act_if related by act_smt->ACT_IF[R603] where ( false )
    .select any empty_act_smt related by current_act_if->ACT_SMT[R603] where ( false )
    .// Be sure we have the first statement in the block.
    .while ( not_empty act_smt )
      .select one s related by act_smt->ACT_SMT[R661.'succeeds']
      .if ( empty s )
        .break while
      .end if
      .assign act_smt = s
    .end while
    .while ( not_empty act_smt )
      .assign next = empty_act_smt
      .select one te_smt related by act_smt->TE_SMT[R2038]
      .assign te_blk.OAL = te_blk.OAL + te_smt.OAL
      .if ( "" != te_smt.declaration )
        .assign te_blk.declaration = ( te_blk.declaration + te_smt.declaration ) + " "
      .end if
      .assign te_blk.initialization = te_blk.initialization + te_smt.initialization
      .if ( "" != te_smt.OAL )
        .assign te_blk.code = te_blk.code + "${te_blk.indentation}/* ${te_smt.OAL} */\n"
        .if ( trace )
          .assign te_blk.code = te_blk.code + "${te_blk.indentation}XTUML_OAL_STMT_TRACE( ${te_blk.depth}, ""${te_smt.OAL}"" );\n"
        .end if
      .end if
      .assign te_blk.code = te_blk.code + te_smt.buffer
      .select one for_blk related by act_smt->ACT_FOR[R603]->ACT_BLK[R605]
      .if ( not_empty for_blk )
        .invoke i = blck_xlate( trace, for_blk, te_blk.depth )
        .assign inner_te_blk = i.te_blk
        .assign te_blk.code = te_blk.code + inner_te_blk.code
      .else
      .select one whl_blk related by act_smt->ACT_WHL[R603]->ACT_BLK[R608]
      .if ( not_empty whl_blk )
        .invoke i = blck_xlate( trace, whl_blk, te_blk.depth )
        .assign inner_te_blk = i.te_blk
        .assign te_blk.code = te_blk.code + inner_te_blk.code
      .else
      .select one act_if related by act_smt->ACT_IF[R603]
      .if ( not_empty act_if )
        .assign current_act_if = act_if
        .select one if_blk related by act_if->ACT_BLK[R607]
        .if ( not_empty if_blk )
          .invoke i = blck_xlate( trace, if_blk, te_blk.depth )
          .assign inner_te_blk = i.te_blk
          .assign te_blk.code = te_blk.code + inner_te_blk.code
        .end if
        .// ELIF and ELSE are not linked across R661.  So, get the next
        .// one from here.
        .// CDS Note:  This depends upon the generator storing these in order!
        .select any next related by act_if->ACT_EL[R682]->ACT_SMT[R603]
        .if ( empty next )
          .select one next related by act_if->ACT_E[R683]->ACT_SMT[R603]
        .end if
      .else
      .select one eli_blk related by act_smt->ACT_EL[R603]->ACT_BLK[R658]
      .if ( not_empty eli_blk )
        .invoke i = blck_xlate( trace, eli_blk, te_blk.depth )
        .assign inner_te_blk = i.te_blk
        .assign te_blk.code = te_blk.code + inner_te_blk.code
        .// CDS Note:  This depends upon the generator storing these in order!
        .select any next related by current_act_if->ACT_EL[R682]->ACT_SMT[R603] where ( selected.LineNumber > act_smt.LineNumber )
        .if ( empty next )
          .select one next related by current_act_if->ACT_E[R683]->ACT_SMT[R603]
          .if ( empty next )
            .select one next related by current_act_if->ACT_SMT[R603]->ACT_SMT[R661.'precedes']
          .end if
        .end if
      .else
      .select one else_blk related by act_smt->ACT_E[R603]->ACT_BLK[R606]
      .if ( not_empty else_blk )
        .invoke i = blck_xlate( trace, else_blk, te_blk.depth )
        .assign inner_te_blk = i.te_blk
        .assign te_blk.code = te_blk.code + inner_te_blk.code
        .select one next related by current_act_if->ACT_SMT[R603]->ACT_SMT[R661.'precedes']
      .end if
      .end if
      .end if
      .end if
      .end if
      .if ( "" != te_smt.buffer2 )
        .assign te_blk.code = ( ( te_blk.code + te_smt.buffer2 ) + "\n" )
      .end if
      .if ( empty next )
        .select one next related by act_smt->ACT_SMT[R661.'precedes']
      .end if
      .assign act_smt = next
    .end while
    .if ( "" != te_blk.deallocation )
      .assign te_blk.code = ( ( te_blk.code + te_blk.indentation ) + ( te_blk.deallocation + "\n" ) )
    .end if
    .if ( "" != te_blk.initialization )
      .assign te_blk.code = ( ( te_blk.indentation + te_blk.initialization ) + ( "\n" + te_blk.code ) )
    .end if
    .if ( "" != te_blk.declaration )
      .assign te_blk.code = ( ( te_blk.indentation + te_blk.declaration ) + ( "\n" + te_blk.code ) )
    .end if
    .if ( "" != te_blk.code )
${te_blk.code}\
    .end if
  .end if
.end function
.//
.//
.// indention maker
.//
.function indentwhitespace
  .param integer indention
  .assign attr_ws = ""
  .while ( 0 < indention )
    .assign indention = indention - 1
    .assign attr_ws = attr_ws + "  "
  .end while
.end function
