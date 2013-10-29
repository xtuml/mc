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
.if ( false == default_behavior )
    // state machine dispatcher process for ${te_class.Name}
    SC_THREAD( ${te_class.GeneratedName}_sm );
      dont_initialize();
      sensitive ${sc_event_sensitivity};
.else	  
    SC_CTHREAD( component_main, clk.pos() );
      reset_signal_is( rst_X, false );
.end if
