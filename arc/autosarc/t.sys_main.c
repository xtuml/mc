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
/*--------------------------------------------------------------------------
 * File:  ${te_file.sys_main}.${te_file.src_file_ext}
 *
 * Description:  main, system initialization (and idle loop)
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#include "${te_file.types}.${te_file.hdr_file_ext}"
.for each te_c in te_cs
  .if ( te_c.internal_behavior )
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
  .end if
.end for

/*
 * Run application level initialization by initializing the
 * collection of instances for each class and calling domain
 * specific initialization.
 */
static void ApplicationLevelInitialization( void );
static void ApplicationLevelInitialization( void )
{
.if ( not_empty te_cs )
  ${te_typemap.domain_number_name} d;
  ${te_typemap.object_number_name} c;
${system_class_array.class_count}
  for ( d = 0; d < SYSTEM_DOMAIN_COUNT; d++ ) {
    for ( c = 0; c < ${te_cia.class_count}[ d ]; c++ ) {
      ${te_instance.scope}${te_instance.factory_init}( d, c );
    }
  }
.end if
}

/*
 *
 * main (although perhaps under a different name)
 *
 * Bring the system up and start the event dispatch loops.
 * Make invocations to the user hooks during the different phases
 * of bringup, run and shutdown.
 *
 */
.if ( te_thread.flavor == "Nucleus" )
VOID
${te_prefix.result}main( UNSIGNED argc, VOID * argv )
.elif ( te_sys.AUTOSAR )
static int component_counter = 0;


void
${te_prefix.result}xtUMLmain( void )
.else
${main_decl.body}\
.end if
{
.if ( te_sys.AUTOSAR )
// Each component's ib_*_Initialize function calls into here.  The last component 
// to be initialized does the ${te_prefix.result} architecture initialization.
component_counter = component_counter + 1;
if ( SYSTEM_DOMAIN_COUNT == component_counter ) {
.end if
  ${te_callout.initialization}();
  ${te_set.factory}( ${te_set.number_of_containoids} );
.if ( te_thread.enabled )
  ${te_prefix.result}InitializeThreading();
.end if
.if ( non_self_event_queue_needed.result or self_event_queue_needed.result )
  InitializeOoaEventPool();
.end if
.if ( te_sys.PersistentClassCount > 0 )
${te_persist.factory_init}();
.end if
  ApplicationLevelInitialization();
.if ( te_sys.PersistentClassCount > 0 )
  ${te_persist.restore}(); /* Restore persistent instances.  */
.end if
  ${te_callout.pre_xtUML_initialization}();
.for each te_c in te_cs
  .if ( te_c.internal_behavior )
  ${te_c.Name}_execute_initialization();
  .end if
.end for
  ${te_callout.post_xtUML_initialization}();
.if ( te_sys.AUTOSAR )
.else
  .if ( non_self_event_queue_needed.result or self_event_queue_needed.result )
  ${te_prefix.result}xtUML_run(); /* This is the primary event dispatch loop.  */
  .end if
  ${te_callout.pre_shutdown}();
  ${te_callout.post_shutdown}();
  .if ( te_thread.enabled )
  ${te_thread.shutdown}();
  .end if
.end if
.if ( ( te_thread.flavor != "Nucleus" ) and ( te_thread.flavor != "AUTOSAR" ) )
${return_body}\
.end if
.if ( te_sys.AUTOSAR )
}
.end if
}
.//
