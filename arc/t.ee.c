.//============================================================================
.// External Entity bridge process skeleton generator.
.//============================================================================
.//
.//
/*----------------------------------------------------------------------------
 * File:  ${te_ee.file}.${te_file.src_file_ext}
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  ${te_ee.Name} (${te_ee.Key_Lett})
 * ${te_ee.Descrip}
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

${include_files.body}\
#include "${te_ee.Include_File}"
${includes.body}\
.if ( ( 0 < te_sys.StateSaveBufferSize ) and ( "State Save" == te_ee.Name ) and ( "SS" == te_ee.Key_Lett ) )
.include "${te_file.arc_path}/t.ee.statesave.c"
.end if
${ee_body.body}
.//
