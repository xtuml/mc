.//============================================================================
.// External Entity bridge process skeleton generator.
.//============================================================================
.//
.//
/*----------------------------------------------------------------------------
 * File:  ${te_ee.file}.${te_file.hdr_file_ext}
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  ${te_ee.Name} (${te_ee.Key_Lett})
 * ${te_ee.Descrip}
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_ee.file}_$u{te_file.hdr_file_ext}
#define $u{te_ee.file}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}
.if ( "C++" == te_target.language )
  .if ( ( "LOG" == te_ee.Key_Lett ) and ( "Logging" == te_ee.Name ) )
// Suppress warning message regarding string contants being passed to LOG.
#pragma GCC diagnostic ignored "-Wwrite-strings"
  .end if
.end if

${includes.body}
${ee_body.body}\

${te_target.c2cplusplus_linkage_end}
#endif   /* $u{te_ee.file}_$u{te_file.hdr_file_ext} */
