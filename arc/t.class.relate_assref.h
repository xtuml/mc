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
/* Navigation phrase:  R${te_rel.Numb}.'${rel_phrase}' */
.if ( te_rel.LinkNeeded or te_c.OptDisabled )
${externstatic}void ${relate_method}( ${assoc_te_class.GeneratedName} *, ${assoc_te_class.GeneratedName} *, ${assr_te_class.GeneratedName} *${thismodule} );
.else
/* Note:  Link ${assoc_obj.Key_Lett} to ${assoc_obj.Key_Lett} across R${te_rel.Numb}.'${rel_phrase}' using ${assr_obj.Key_Lett} not needed.  */
.end if .// te_rel.LinkNeeded or te_c.OptDisabled
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
${externstatic}void ${unrelate_method}( ${assoc_te_class.GeneratedName} *, ${assoc_te_class.GeneratedName} *, ${assr_te_class.GeneratedName} *${thismodule} );
.else
/* Note:  Unlink ${assoc_obj.Key_Lett} from ${assoc_obj.Key_Lett} across R${te_rel.Numb}.'${rel_phrase}' USING ${assr_obj.Key_Lett} not needed.  */
.end if
.//
