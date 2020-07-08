/*----------------------------------------------------------------------------
 * File:  ${te_c.module_file}.${te_file.src_file_ext}
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  ${te_c.Name}
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/
.if ( "" != te_c.Descrip )
/*
 ${te_c.Descrip}
 */
.end if

#include "${te_c.module_file}.${te_file.hdr_file_ext}"
${message_definitions}
.if ( te_c.internal_behavior )
.include "${te_file.arc_path}/t.domain.functions.c"
.include "${te_file.arc_path}/t.domain_init.c"
.end if
