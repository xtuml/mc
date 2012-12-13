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
.if ( te_rel.LinkNeeded or te_c.OptDisabled )

/*
 * RELATE <left> ${assoc_obj.Key_Lett} TO <right> ${assoc_obj.Key_Lett} ACROSS \
R${te_rel.Numb}.'${rel_phrase}' USING ${assr_obj.Key_Lett}
 */
void
${link_method.result}( ${assoc_te_class.GeneratedName} * left, ${assoc_te_class.GeneratedName} * right, ${assr_te_class.GeneratedName} * assr${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${assr_obj.Key_Lett}", "${link_method.result}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${set_aone_referentials}\
${set_aoth_referentials}\
  /* Initialize optimized relationship storage extended attributes */
  .if ( not towards_aone )
  assr->${aone_data.result} = left;  /* RAL 1 */
  assr->${aoth_data.result} = right; /* RAL 2 */
  .else
  assr->${aone_data.result} = right; /* RAL 3 */
  assr->${aoth_data.result} = left;  /* RAL 4 */
  .end if  .// not towards_aone
  .if ( aone.Mult == 0 )
    .if ( towards_aone )
  left->${aone_assr_data.result} = assr; /* RAL 5 */
    .else
  right->${aone_assr_data.result} = assr; /* RAL 6 */
    .end if
  .else
    .if ( towards_aone )
  ${te_set.module}${te_set.insert_element}( &left->${aone_assr_data.result}, assr ); /* RAL 7 */
    .else
  ${te_set.module}${te_set.insert_element}( &right->${aone_assr_data.result}, assr ); /* RAL 8 */
    .end if
  .end if
  .if ( aoth.Mult == 0 )
    .if ( towards_aone )
  right->${aoth_assr_data.result} = assr; /* RAL 9 */
    .else
  left->${aoth_assr_data.result} = assr; /* RAL 10 */
    .end if
  .else
    .if ( towards_aone )
  ${te_set.module}${te_set.insert_element}( &right->${aoth_assr_data.result}, assr ); /* RAL 11 */
    .else
  ${te_set.module}${te_set.insert_element}( &left->${aoth_assr_data.result}, assr ); /* RAL 12 */
    .end if
  .end if
${persist_relate.body}\
}
.else
/* Note:  Link ${assoc_obj.Key_Lett} to ${assoc_obj.Key_Lett} across R${te_rel.Numb}.'${rel_phrase}' using ${assr_obj.Key_Lett} not needed.  */
.end if .// te_rel.LinkNeeded or te_c.OptDisabled

.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
/*
 * UNRELATE <left> ${assoc_obj.Key_Lett} FROM <right> ${assoc_obj.Key_Lett} ACROSS \
R${te_rel.Numb}.'${rel_phrase}' USING ${assr_obj.Key_Lett}
 */
void
${unlink_method.result}( ${assoc_te_class.GeneratedName} * left, ${assoc_te_class.GeneratedName} * right, ${assr_te_class.GeneratedName} * assr${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${assr_obj.Key_Lett}", "${unlink_method.result}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${reset_referentials}\
  .if ( not towards_aone )
  assr->${aone_data.result} = 0; /* RAU 1 */
  assr->${aoth_data.result} = 0; /* RAU 2 */
  .else
  assr->${aone_data.result} = 0; /* RAU 3 */
  assr->${aoth_data.result} = 0; /* RAU 4 */
  .end if  .// not towards_aone 
  .if ( aone.Mult == 0 )
    .if ( towards_aone )
  left->${aone_assr_data.result} = 0; /* RAU 5 */
    .else
  right->${aone_assr_data.result} = 0; /* RAU 6 */
    .end if
  .else
    .if ( towards_aone )
  ${te_set.module}${te_set.remove_element}( &left->${aone_assr_data.result}, assr ); /* RAU 7 */
    .else
  ${te_set.module}${te_set.remove_element}( &right->${aone_assr_data.result}, assr ); /* RAU 8 */
  .end if
  .end if
  .if ( aoth.Mult == 0 )
    .if ( towards_aone )
  right->${aoth_assr_data.result} = 0; /* RAU 9 */
    .else
  left->${aoth_assr_data.result} = 0; /* RAU 10 */
    .end if
  .else
    .if ( towards_aone )
  ${te_set.module}${te_set.remove_element}( &right->${aoth_assr_data.result}, assr ); /* RAU 11 */
    .else
  ${te_set.module}${te_set.remove_element}( &left->${aoth_assr_data.result}, assr ); /* RAU 12 */
    .end if
  .end if
${persist_unrelate.body}\
}
.else
/* Note:  Unlink ${assoc_obj.Key_Lett} from ${assoc_obj.Key_Lett} across R${te_rel.Numb}.'${rel_phrase}' USING ${assr_obj.Key_Lett} not needed.  */
.end if
.//
