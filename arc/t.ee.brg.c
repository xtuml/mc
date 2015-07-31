.//============================================================================
.// External Entity bridge body.
.//============================================================================
.//

/*
 * Bridge:  ${te_brg.Name}
.// Include the action language for this bridge activity?
.if ( not_empty te_c )
  .if ( te_c.RawComments )

       Action language follows:
  ${s_brg.Action_Semantics}
  .end if
.end if
 */
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}(${te_aba.ParameterDefinition})
{
.if ( te_dt.Name != "void" )
  .if ( ( s_brg.Suc_Pars == 1 ) and ( "" != te_aba.code ) )
  /* Replace/Insert the following instructions with your implementation code.  */
${te_aba.code}\
  .else
    .if ( "CTOR" == te_dt.Initial_Value )
  ${te_aba.ReturnDataType} result = 0;
    .else
  ${te_aba.ReturnDataType} result = ${te_dt.Initial_Value};
    .end if
    .if ( te_sys.PersistentClassCount > 0 )
      .if ( ( te_brg.EEkeyletters == "PERSIST" ) and ( te_brg.Name == "commit" ) )
  result = ${te_prefix.result}PersistenceCommit(${parameters.definition});  /* architectural persist routine */
      .elif ( ( te_brg.EEkeyletters == "PERSIST" ) and ( te_brg.Name == "restore" ) )
  result = ${te_prefix.result}PersistenceRestore(${parameters.definition});  /* architectural restore operation */
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "checksum" ) )
  /* Note:  Customer/User must implement this function.  Calling stub.  */
  result = ${te_prefix.result}NVS_checksum(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "defrag" ) )
  result = ${te_prefix.result}NVS_defrag(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "remove" ) )
  result = ${te_prefix.result}NVS_remove(${parameters.definition});
  /*
   * To keep the NVS continually defragmented, add a call to the defrag
   * method here.  [result = ${te_prefix.result}NVS_defrag()]
   */
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "format" ) )
  result = ${te_prefix.result}NVS_format(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "initialize" ) )
  result = ${te_prefix.result}NVS_initialize(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "insert" ) )
  result = ${te_prefix.result}NVS_insert(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "next" ) )
  result = ${te_prefix.result}NVS_next((u4_t *)${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "select" ) )
  result = ${te_prefix.result}NVS_select(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "space_available" ) )
  result = ${te_prefix.result}NVS_space_available(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "space_total" ) )
  result = ${te_prefix.result}NVS_space_total(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "space_used" ) )
  result = ${te_prefix.result}NVS_space_used(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "update" ) )
  result = ${te_prefix.result}NVS_update(${parameters.definition});
      .elif ( ( te_brg.EEkeyletters == "NVS" ) and ( te_brg.Name == "version" ) )
  /* Note:  Customer/User must implement this function.  Calling stub.  */
  result = ${te_prefix.result}NVS_version(${parameters.definition});
      .end if
    .end if
  /* Insert your implementation code here... */
  return result;
    .//
  .end if
.else
  .if ( ( te_brg.EEkeyletters == "ARCH" ) and ( te_brg.Name == "shutdown" ) )
    .if ( ( "C" != te_target.language ) and ( not_empty te_c ) )
  ${te_instance.module}${te_eq.run_flag} = false; /* default automatic action for this bridge */
    .end if
    .if ( "C" == te_target.language )
  ${te_eq.run_flag} = false; /* default automatic action for this bridge */
    .end if
  return;
  .end if
  /* Replace/Insert your implementation code here... */
${te_aba.code}\
.end if
}

.//
