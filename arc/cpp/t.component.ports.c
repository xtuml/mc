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
 * File:  ${te_c.port_file}.${te_file.src_file_ext}
 *
 * UML Component Port Messages
 * Component Name:  ${te_c.Name}
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

${include_files.body}\
${port_declarations}\
.if ( te_c.internal_behavior )
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
.end if
.if ( ( te_sys.AUTOSAR ) or ( te_sys.VFB ) )
#ifdef ${te_thread.AUTOSAR_enabled}
#include "Rte_co_${te_c.Name}.${te_file.hdr_file_ext}"
#include "target.${te_file.hdr_file_ext}"
.if ( empty te_class )
#define MC3020_AUTOSAR_RUNNABLE_NUMBER 0
.else
#define MC3020_AUTOSAR_RUNNABLE_NUMBER ${te_class.Task}
.end if
static Rte_Instance cache_Rte_self;

/*
 * This is the AUTOSAR linkage for the ${te_c.Name} component timer.
 */
FUNC(void, RTE_APPL_CODE)
ib_${te_c.Name}_ru_${te_c.Name}Timer (Rte_Instance self)
{
  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;
  if ( MC3020_AUTOSAR_RUNNABLE_NUMBER == 0 ) {
    TIM_update();
  }
  ooa_loop( &t );
}

FUNC(void, RTE_APPL_CODE)
ib_${te_c.Name}_ru_${te_c.Name}_Initialize(Rte_Instance self)
{
  /* Initialize the system.  */
  Escher_xtUMLmain();
}


#endif
.end if
${definitions.body}
