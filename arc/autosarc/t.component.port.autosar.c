.//============================================================================
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//

.if (( te_mact.subtypeKL == "SPR_PO" ) or ( te_mact.subtypeKL == "SPR_RO" ))
/*
 * This is the AUTOSAR linkage for the above ${te_mact.InterfaceName} port operation.
 */
#ifdef ${te_thread.AUTOSAR_enabled}
FUNC(void, RTE_APPL_CODE)
ib_${te_mact.ComponentName}_ru_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self\
.if ("" == "${parameters_with_dt}" )
 )
.else
, ${parameters_with_dt})
.end if
{
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
      
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
 * This is the AUTOSAR linkage for the above ${te_mact.InterfaceName} port message.
 */
#ifdef ${te_thread.AUTOSAR_enabled}
FUNC(void, RTE_APPL_CODE)
ib_${te_mact.ComponentName}_ru_${te_mact.InterfaceName}_${te_mact.MessageName}(Rte_Instance Rte_self)
{
  .if(parmsCount == 0)
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
  cache_Rte_self = Rte_self;

  /* Receive the data from the RTE.  */
  Rte_Read_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_self );

  /* Hand the data into the receiving component port.  */
  ${te_aba.GeneratedName}();

  .elif (parmsCount == 1)
  ${parameterdt} ${parameteri};
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
  cache_Rte_self = Rte_self;

  /* Receive the data from the RTE.  */
  Rte_Read_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_self, &${parameteri} );

  /* Hand the data into the receiving component port.  */
    .if ( "" == te_aba.ParameterInvocation )
  ${te_aba.GeneratedName}();
    .else
  ${te_aba.GeneratedName}( ${parameteri} );
    .end if

  .else
  .// create an instance of the signal struct 
  dt_${te_mact.MessageName}_param ${te_mact.MessageName}_param;
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
  cache_Rte_self = Rte_self;
  
  /* Receive the data from the RTE.  */
  Rte_Read_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_self, &${te_mact.MessageName}_param );
  
  /* Hand the data into the receiving component port.  */
  .invoke struct_params = struct_RenderParameters( te_parms , "${te_mact.MessageName}_param" )
  .// call the above port message with the structure parameters sorted alphabetically.
  ${te_aba.GeneratedName}(${struct_params.invocation});
  
  .end if
  /* Allow xtUML event queue to dispatch and run to completion.  */
  ooa_loop( &t );
}
#endif
.end if
