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
.//
/*----------------------------------------------------------------------------
 * File:  ${te_file.factory}.${te_file.hdr_file_ext}
 *
 * Description:
 * Here we have the system-level instance create and delete declaration.
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_file.factory}_$u{te_file.hdr_file_ext}
#define $u{te_file.factory}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

.include "${te_file.arc_path}/t.sys_sets.h"
.if ( te_sys.PersistentClassCount > 0 )
#include "${te_file.persist}.${te_file.hdr_file_ext}"
.end if
.if ( te_sys.InstanceLoading )
${te_instance.handle} ${te_prefix.result}instance_cache[ 1000000 ];
.end if

${te_instance.handle} ${te_instance.create}( const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
void ${te_instance.delete}( ${te_instance.handle}, const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
.if ( te_sys.PersistentClassCount > 0 )
${te_instance.handle} ${te_instance.create_persistent}( const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
void ${te_instance.delete_persistent}( ${te_instance.handle}, const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
.end if
/*
 * Initialize object factory services.
 * Initialize class instance storage free pool (inanimate list)
 * by linking the empty instances into a collection.
 */
void ${te_instance.factory_init}( const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );

${te_target.c2cplusplus_linkage_end}
#endif   /* $u{te_file.factory}_$u{te_file.hdr_file_ext} */
