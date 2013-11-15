.//============================================================================
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/*----------------------------------------------------------------------------
 * File:  ${te_c.module_file}.${te_file.hdr_file_ext}
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_c.module_file}_$u{te_file.hdr_file_ext}
#define $u{te_c.module_file}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}
${include_files}
.if ( "" != te_c.Description )
/*
${te_c.Description}
*/
.end if
class ${te_c.Name} : public sc_module${port_classes} {
  public:
${sc_port_declarations}
${nestedComponent_declarations}  
${bitLevelChannels}\
.if ( not_empty te_sm )
  SC_HAS_PROCESS( ${te_c.Name} );
  ${te_c.Name}( sc_module_name name ) : sc_module( name ) ${nestedComponent_constructors} {
${port_binding}  
${sc_process}\
  .if ( "" != init_segment )
${init_segment}
  .end if
  }
.else
  ${te_c.Name}( sc_module_name name ) : sc_module( name ) ${nestedComponent_constructors} {
${port_binding}
  }
.end if
${message_declarations}
${function_declarations}\
  // state machine process entry points
${sc_process_decls}\
${sc_event_declarations}
};

.//.include "${te_file.arc_path}/t.domain_init.h"
${class_type_identifiers}
${te_target.c2cplusplus_linkage_end}
#endif  /* $u{te_c.module_file}_$u{te_file.hdr_file_ext} */
.//
