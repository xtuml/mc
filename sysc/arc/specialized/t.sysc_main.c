.//============================================================================
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
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
.if ( gen_vista_top_template )
#include "mb/sysc/parameters.h"

// User must manually update the top level system/schematic name by
// replacing all occurances in this file of ENTER_SCHEMATIC_NAME_HERE
#include "ENTER_SCHEMATIC_NAME_HERE.h"

static void setTiming( void ) 
{
  bool timing = sdGetParameterAsBool("Timing");

  if (timing) {
    cout << "Running with timing. AT mode." << endl;
  } else {
    cout << "Running with timing disabled.  LT mode." << endl;
    disable_T();
  }
}
.else
${includes_top}
.end if

static void startSimulation( void );
static void startSimulation( void )
{
  sc_start();
}

static void stopSimulation( void );
static void stopSimulation( void )
{
  sc_stop();
}

.if ( "BitLevelSignals" != te_sys.SystemCPortsType )
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
    for ( c = 0; c < ${dci.class_count}[ d ]; c++ ) {
      ${te_instance.factory_init}( d, c );
    }
  }
  .end if
}
.end if

/*
 *
 * main (although perhaps under a different name)
 *
 * Bring the system up and start the event dispatch loops.
 * Make invocations to the user hooks during the different phases
 * of bringup, run and shutdown.
 *
 */
int sc_main ( int argc, char* argv[] )
{
.if ( gen_vista_top_template )
  setTiming();
.end if
.if ( non_self_event_queue_needed.result or self_event_queue_needed.result )
  InitializeOoaEventPool();
.end if
.if ( persistence_needed.result )
  ${te_persist.factory_init}();
.end if
.if ( persistence_needed.result )
  ${te_persist.restore}(); /* Restore persistent instances.  */
.end if
.if ( "BitLevelSignals" == te_sys.SystemCPortsType )
${nested_instances_top}
  sc_clock              clk("TestClock", 10, SC_NS, 0.5);
  sc_signal<bool>       rst_X;
${signals_top}
${bind_signals_top}
.end if
.if ( gen_vista_top_template )
  ENTER_SCHEMATIC_NAME_HERE* $r{tm_build_pkg.package_inst_name} = 0;
  $r{tm_build_pkg.package_inst_name} = new ENTER_SCHEMATIC_NAME_HERE("top");
.end if

  .if ( "BitLevelSignals" == te_sys.SystemCPortsType )
  //--- General Reset Action
  rst_X.write(1);
  sc_start(1);
  rst_X.write(0);
  sc_start(1);
  rst_X.write(1);
  .end if
  //--- Steady State Simulation
  startSimulation();
  stopSimulation();

  return 0;
}
