.//============================================================================
.// $RCSfile: t.class.event.h,v $
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
.if ( defined )
/*
 * ${flavor} event:  ${sm_evt.Drv_Lbl}:'${sm_evt.Mning}'
${polymorphic_comment}\
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  .if ( "" != event_parameters )
${event_parameters}\
  .else
  /* Note:  no supplemental data for this event */
  .end if
} ${te_evt.GeneratedName};
.else
/*
 * ${flavor} event:  ${sm_evt.Drv_Lbl}:'${sm_evt.Mning}'
 * warning:  Event is not used in application - no code generated.
 */
.end if
.//
