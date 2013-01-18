.//============================================================================
.// $RCSfile: t.sm_sm.c,v $
.//
.// Description:
.// This template generates the containing file for the states of a Finite
.// State Machine (FSM) implementation of xtUML state models.
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      ${te_class.Name}  (${te_class.Key_Lett})
 * Component:  ${te_c.Name}
  .if ( false )
    .select one state_model related by o_obj->SM_ISM[R518]->SM_SM[R517]
    .if ( empty sm_ism ) 
      .select one state_model related by o_obj->SM_ASM[R519]->SM_SM[R517]
    .end if
 *
 *
 * State Model Description:
    .if ( state_model.Descrip != "" )
 *
${state_model.Descrip}
 *
    .else
 * NOTE: No state model desription present in project model repository!
    .end if
 *
  .end if
  .//
 *--------------------------------------------------------------------------*/
.//
