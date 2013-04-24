.//============================================================================
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
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
${sysc_top_includes}
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
  ${te_callout.initialization}();
.if ( te_sys.PersistentClassCount > 0 )
  ${te_persist.factory_init}();
  ${te_persist.restore}(); /* Restore persistent instances.  */
.end if
  ${te_callout.pre_xtUML_initialization}();
.if ( "BitLevelSignals" == te_sys.SystemCPortsType )
  sc_clock  clk("TestClock", 10, SC_NS, 0.5);
  sc_signal <bool>  rst_X;
.end if
.if ( gen_vista_top_template )
  ENTER_SCHEMATIC_NAME_HERE* $r{tm_build_pkg.package_inst_name} = 0;
  $r{tm_build_pkg.package_inst_name} = new ENTER_SCHEMATIC_NAME_HERE("top");
.else
  ${sysc_top_inst_decls}\
${sysc_top_insts}
.end if
  ${te_callout.post_xtUML_initialization}();
.if ( "BitLevelSignals" == te_sys.SystemCPortsType )  
  //--- General Reset Action
  rst_X.write(1);
  sc_start(1);
  rst_X.write(0);
  sc_start(1);
  rst_X.write(1);
.end if
  //--- Steady State Simulation
  sc_start();
  ${te_callout.pre_shutdown}();
  sc_stop();
  ${te_callout.post_shutdown}();
  ${sysc_top_insts_cleanup}\
${return_body}\
}
