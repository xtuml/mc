.//============================================================================
.// $RCSfile: t.ee.brg.c,v $
.//
.// Description:
.// External Entity bridge body.
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

/*
 * Bridge:  ${s_brg.Name}
.// Include the action language for this bridge activity?
.if ( te_c.RawComments )

     Action language follows:
${s_brg.Action_Semantics}
.end if
 */
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}(${te_aba.ParameterDefinition})
{
.if ( te_dt.Name != "void" )
  .if ( s_brg.Suc_Pars == 1 )
  /* Replace the following instructions with your implementation code.  */
  {
${bridge_action_body}\
  }
  .else
  ${te_aba.ReturnDataType} result;
    .if ( persistence_needed.result )
      .if ( ( s_ee.Key_Lett == "PERSIST" ) and ( s_brg.Name == "commit" ) )
  result = ${te_prefix.result}PersistenceCommit(${parameters.definition});  /* architectural persist routine */
      .elif ( ( s_ee.Key_Lett == "PERSIST" ) and ( s_brg.Name == "restore" ) )
  result = ${te_prefix.result}PersistenceRestore(${parameters.definition});  /* architectural restore operation */
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "checksum" ) )
  /* Note:  Customer/User must implement this function.  Calling stub.  */
  result = ${te_prefix.result}NVS_checksum(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "defrag" ) )
  result = ${te_prefix.result}NVS_defrag(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "remove" ) )
  result = ${te_prefix.result}NVS_remove(${parameters.definition});
  /*
   * To keep the NVS continually defragmented, add a call to the defrag
   * method here.  [result = ${te_prefix.result}NVS_defrag()]
   */
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "format" ) )
  result = ${te_prefix.result}NVS_format(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "initialize" ) )
  result = ${te_prefix.result}NVS_initialize(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "insert" ) )
  result = ${te_prefix.result}NVS_insert(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "next" ) )
  result = ${te_prefix.result}NVS_next((u4_t *)${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "select" ) )
  result = ${te_prefix.result}NVS_select(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "space_available" ) )
  result = ${te_prefix.result}NVS_space_available(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "space_total" ) )
  result = ${te_prefix.result}NVS_space_total(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "space_used" ) )
  result = ${te_prefix.result}NVS_space_used(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "update" ) )
  result = ${te_prefix.result}NVS_update(${parameters.definition});
      .elif ( ( s_ee.Key_Lett == "NVS" ) and ( s_brg.Name == "version" ) )
  /* Note:  Customer/User must implement this function.  Calling stub.  */
  result = ${te_prefix.result}NVS_version(${parameters.definition});
      .end if
    .end if .// persistence_needed
  /* Insert your implementation code here... */
  return result;
    .//
  .end if
.else
  .if ( ( s_ee.Key_Lett == "ARCH" ) and ( s_brg.Name == "shutdown" ) )
  ${te_eq.run_flag} = false; /* default automatic action for this bridge */
  return;
  .end if
  .if ( s_brg.Suc_Pars == 1 )
  /* Replace the following instructions with your implementation code.  */
  {
${bridge_action_body}\
  }
  .else
  /* Insert your implementation code here... */
  .end if
.end if
}

.//
