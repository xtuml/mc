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

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const ${te_sm.action_type} ${te_sm.txn_action_array}[ ${num_te_acts} ] = {
${txn_action_rows}\
  };
