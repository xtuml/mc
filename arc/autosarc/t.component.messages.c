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
/*----------------------------------------------------------------------------
 * File:  ${te_c.module_file}.${te_file.src_file_ext}
 *
 * UML Component Port Messages
 * Component/Module Name:  ${te_c.Name}
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/
.if ( "" != te_c.Descrip )
/*
 ${te_c.Descrip}
 */
.end if

#include "${te_file.types}.${te_file.hdr_file_ext}"
${include_files}\
.if ( te_c.internal_behavior )
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
  .if ( ( te_sys.AUTOSAR ) or ( te_sys.VFB ) )
#ifdef ${te_thread.AUTOSAR_enabled}
#include "Rte_Swc${te_c.Name}.${te_file.hdr_file_ext}"
    .if ( empty te_class )
#define MC3020_AUTOSAR_RUNNABLE_NUMBER 0
    .else
#define MC3020_AUTOSAR_RUNNABLE_NUMBER ${te_class.Task}
    .end if
static Rte_Instance cache_Rte_self;
extern void ${te_prefix.result}xtUMLmain( void ); 

/*
 * This is the AUTOSAR linkage for the ${te_c.Name} component timer.
 */
FUNC(void, RTE_APPL_CODE)
ib_${te_c.Name}_ru_${te_c.Name}Timer( Rte_Instance self )
{
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
  #if ${te_tim.max_timers} > 0
  if ( 0 == MC3020_AUTOSAR_RUNNABLE_NUMBER ) {
    TIM_update();
  }
  #endif
  ooa_loop( &t );
}

FUNC(void, RTE_APPL_CODE)
ib_${te_c.Name}_ru_${te_c.Name}_Initialize( Rte_Instance self )
{
  /* Initialize the system.  */
  cache_Rte_self = self;
  Escher_xtUMLmain();
}


#endif
  .end if
.end if
${message_definitions}
.if ( te_c.internal_behavior )
.include "${te_file.arc_path}/t.domain.functions.c"
.include "${te_file.arc_path}/t.domain_init.c"
.end if
.if ( "TLM" == te_sys.SystemCPortsType )
#if 0
/* disabled by default */
  .include "${te_file.arc_path}/t.component.ports.isr.c"
${portisr}\
}
#endif
.end if
