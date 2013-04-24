.//============================================================================
.// Notice:
.// (C) Copyright 1998-2010 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/* Navigation phrase:  R${te_rel.Numb}.'${rel_phrase}' */
.if ( te_rel.LinkNeeded or te_c.OptDisabled )
static void ${relate_method.result}( ${te_class.GeneratedName} *, ${te_class.GeneratedName} * );
.else
/* Note:  R${te_rel.Numb}.'${rel_phrase}' never related (or not needed).  */
.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
static void ${unrelate_method.result}( ${te_class.GeneratedName} *, ${te_class.GeneratedName} * );
.else
/* Note:  R${te_rel.Numb}.'${rel_phrase}' never unrelated (or not needed).  */
.end if
.//
