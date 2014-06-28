.//============================================================================
.// $RCSfile: m.bridge.arc,v $
.//
.// Description:
.// This archetype file contains the implementation functions for colors
.// specified in the (user supplied/modified) bridge.clr file.
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
.//============================================================================
.function WireSynchServiceOoaBridge
  .param string  initiant
  .param string  ee_key_letters
  .param string  recipient
  .print "Note:  WireSynchServiceOoaBridge is no longer supported.  Use components and interfaces."
.end function
.//
.//============================================================================
.function WireRealizeExternalEntity
  .param string a
  .param string b
  .param string c
  .param string d
  .param string e
  .print "Note:  WireRealizeExternalEntity is no longer supported.  Use components and interfaces."
.end function
.//
.//============================================================================
.function WireRealizedExternalEntity
  .param string a
  .param string b
  .param string c
  .param string d
  .param string e
  .print "Note:  WireRealizeExternalEntity is no longer supported.  Use components and interfaces."
.end function
.//
.//
.//============================================================================
.// Mark a function (synchronous service) as being safe for 
.// interrupt service routine (ISR) invocation.  This is also useful
.// for task communication and other multi-context situations.
.//============================================================================
.function TagSyncServiceSafeForInterrupts
  .param string  component_name
  .param string  function_name
  .assign component_name = "$r{component_name}"
  .select any tm_sync from instances of TM_SYNC where ( ( selected.RegisteredDomain == component_name ) and ( selected.Name == function_name ) )
  .if ( empty tm_sync )
    .create object instance tm_sync of TM_SYNC
    .assign tm_sync.RegisteredDomain = component_name
    .assign tm_sync.Name = function_name
  .end if
  .assign tm_sync.IsSafeForInterrupts = true
  .print "Function ${function_name} in component ${component_name} marked as safe for interrupt invocation."
.end function
.//
.//
.//============================================================================
.//-- 004: 20140122 Add Start (saitou) 
.function TagBridgeCallNotGenerate
  .param string dom_name
  .param string ee_name
  .//
  .select many te_cs from instances of TE_C
  .if ( dom_name != "*" )
    .select many te_cs from instances of TE_C where ( selected.Name == dom_name )
  .end if
  .for each te_c in te_cs
    .select any te_ee from instances of TE_EE where( ( selected.Key_Lett == ee_name ) and ( selected.te_cID == te_c.ID ) )
    .if ( not_empty te_ee )
      .assign te_ee.Included = false
      .print "TagBridgeCallNotGenerate() : ${ee_name}"
      .select many s_brgs related by te_ee->S_EE[R2020]->S_BRG[R19]
      .for each s_brg in s_brgs
        .select one te_brg related by s_brg->TE_BRG[R2025]
        .if ( not_empty te_brg )
          .assign te_brg.NotGenerateInvocation = true
        .end if
      .end for
    .else
      .print "TagBridgeCallNotGenerate() ${ee_name} is not found."
    .end if
  .end for
.end function
.//-- 004: 20140122 Add End (saitou) 
.//-- 009: 20140205 Add Start (saitou)
.function port_realize_EE
  .param string dom_name
  .param string port_name
  .param string ee_name
  .//
  .select many te_cs from instances of TE_C
  .if ( dom_name != "*" )
    .select many te_cs from instances of TE_C where ( selected.Name == dom_name )
  .end if
  .//
  .for each te_c in te_cs
    .select any te_po from instances of TE_PO where ( ( selected.Name == port_name ) and ( selected.te_cID == te_c.ID ) )
    .select any te_ee from instances of TE_EE where ( ( selected.Key_Lett == ee_name ) and ( selected.te_cID == te_c.ID ) )
    .if ( ( not_empty te_po ) and ( not_empty te_ee) )
      .assign te_po.realizeEE_ID = te_ee.EE_ID
      .print "port_realize_EE() : port(${te_po.Name}) realize EE(${te_ee.Key_Lett})"
      .// ここで指定されているEEはモデル上は使用されていないはず。でも実際は使うので、Includedフラグを立てておく。
      .assign te_ee.Included = true
    .end if
  .end for
.end function
.//-- 009: 20140205 Add End (saitou)
.//-- 014: 20140225 Add Start (saitou) 
.function mark_ee_as_realized
  .param string dom_name
  .param string ee_name
  .param string prefix
  .param string include_file
  .//
  .select many te_cs from instances of TE_C
  .if ( dom_name != "*" )
    .select many te_cs from instances of TE_C where ( selected.Name == dom_name )
  .end if
  .for each te_c in te_cs
    .select any te_ee from instances of TE_EE where( ( selected.Key_Lett == ee_name ) and ( selected.te_cID == te_c.ID ) )
    .if ( not_empty te_ee )
      .print "mark_ee_as_realized() : ${ee_name} : [${te_ee.RegisteredName}] -> [${prefix}] : ${include_file}"
      .assign te_ee.RegisteredName = "${prefix}"
      .assign te_ee.Include_File = "${include_file}"
      .select many s_brgs related by te_ee->S_EE[R2020]->S_BRG[R19]
      .for each s_brg in s_brgs
        .select one te_brg related by s_brg->TE_BRG[R2025]
.//-- 010:20140311 Modified Start (nomura)
	.invoke r = fx_is_exist_real_func(te_ee)
	.assign isExistRealFunc = r.result
        .if (( not_empty te_brg ) and ( isExistRealFunc == false))
.//-- 010:20140307 Modified End (nomura)
          .assign brgprefix = te_ee.RegisteredName + "_"
          .assign te_brg.GeneratedName = brgprefix + s_brg.Name
        .end if
      .end for
    .else
      .print "mark_ee_as_realized() ${ee_name} is not found."
    .end if
  .end for
.end function
.//-- 014: 20140225 Add End (saitou) 
