
.if (( te_mact.subtypeKL == "SPR_PO" ) or ( te_mact.subtypeKL == "SPR_RO" ))
/*
 * This is the AUTOSAR linkage for the above ${te_mact.PortName} port operation.
 */
#ifdef ${te_thread.AUTOSAR_enabled}
FUNC(void, RTE_APPL_CODE)
ib_${te_mact.ComponentName}_ru_${te_mact.PortName}_${te_mact.MessageName}( Rte_Instance Rte_self ${parameters_with_dt})
{
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
  cache_Rte_self = (void*) Rte_self;
      
  /* Hand the data into the receiving component port.  */
  .if ( "void" != te_aba.ReturnDataType )
  * returnParam = \
  .end if
  ${te_aba.GeneratedName}(${te_aba.ParameterInvocation});

  /* Allow xtUML event queue to dispatch and run to completion.  */
  ooa_loop( &t );
}
#endif
.else
/*
 * This is the AUTOSAR linkage for the above ${te_mact.PortName} port message.
 */
#ifdef ${te_thread.AUTOSAR_enabled}
FUNC(void, RTE_APPL_CODE)
ib_${te_mact.ComponentName}_ru_${te_mact.PortName}_${paramName}(Rte_Instance Rte_self)
{
  .if(parmsCount > 1)
  .// create an instance of the signal struct 
  dt_${te_mact.MessageName}_param ${te_mact.MessageName}_param;
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
  cache_Rte_self = (void*) Rte_self;
  
  /* Receive the data from the RTE.  */
  Rte_Read_pt_${te_mact.PortName}_${te_mact.MessageName}_param( Rte_self, &${te_mact.MessageName}_param );
  
  /* Hand the data into the receiving component port.  */
  .invoke struct_params = struct_RenderParameters( te_parms , "${te_mact.MessageName}_param" )
  .// call the above port message with the structure parameters sorted alphabetically.
  ${te_aba.GeneratedName}(${struct_params.invocation});
  
  .else
  ${parameterdt} ${parameteri};
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
  cache_Rte_self = (void*) Rte_self;

  /* Receive the data from the RTE.  */
  Rte_Read_pt_${te_mact.PortName}_${te_mact.MessageName}_${parameter}( Rte_self, &${parameteri} );

  /* Hand the data into the receiving component port.  */
  .if ( "" == te_aba.ParameterInvocation )
  ${te_aba.GeneratedName}();
  .else
  ${te_aba.GeneratedName}( ${parameteri} );
  .end if
  
  .end if
  /* Allow xtUML event queue to dispatch and run to completion.  */
  ooa_loop( &t );
}
#endif
.end if
