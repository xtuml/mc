.//============================================================================
.// Description:
.//
.// The SEM provides an exhaustive mapping of current state and received event
.// combinations to the next state (if any). Each class state has an entry
.// in the SEM for each possible event that the object can receive.
.// If a particular state does not deal with a particular event then the state
.// action is assigned as either a _dont care_ or _cant happen_ (as assigned
.// in the analysis xtUML).
.// The Row Index of the SEM corresponds to the architecturally enumerated
.// current state of the object.  Row 0 is the uninitialized state
.// of the object, which services creation event transitions.
.// The Column Index of the SEM corresponds to the architecturally enumerated
.// event numbers of events that may be received by the state machine.
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================

/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const ${te_typemap.SEM_cell_name} ${te_sm.SEMname}[ ${te_sm.num_states} + 1 ][ ${num_events} ] = {
  /* row 0:  uninitialized state (for creation events) */
${first_row}\
${other_rows}
};
