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

class ${te_c.Name}; // forward reference
${include_files}
${class_type_identifiers}

.if ( "" != te_c.Descrip )
/*
${te_c.Descrip}
*/
.end if
class ${te_c.Name} : public sc_module${port_classes}, public sys_factory, public sys_events {
  public:
${sc_port_declarations}
${nestedComponent_declarations}  
${bitLevelChannels}\
${has_process_declaration}\
.if ( not_empty te_sm )
  ${te_c.Name}( sc_module_name name ) : sc_module( name ), sys_factory(${te_set.number_of_containoids}), sys_events(sizeof(${event_union_name}), ${te_eq.max_events}, NUM_OF_XTUML_CLASS_THREADS) ${nestedComponent_constructors} {
${port_binding}  
${sc_process}\
.else
  ${te_c.Name}( sc_module_name name ) : sc_module( name ), sys_factory(${te_set.number_of_containoids}) ${nestedComponent_constructors} {
${port_binding}
.end if
${init_segment}\
.// CDS - Factor this into a template and/or make it conditional.
.if ( te_c.MaxTimers > 0 )
    tim = new TIM( ESCHER_SYS_MAX_XTUML_TIMERS );
    SC_THREAD( timspin );
      dont_initialize();
      sensitive << ${te_tim.event_name};
    tim->init( &${te_tim.event_name} );
  }
  void timspin( void ) { while ( true ) { tim->tick(); wait(); } }
.else
  }
.end if
${message_declarations}
${function_declarations}\
  // state machine process entry points
${sc_process_decls}\
${sc_event_declarations}
  sc_event ${te_tim.event_name};
  TIM * tim;
.include "${te_file.arc_path}/t.domain_init.dci.h"
};

${te_target.c2cplusplus_linkage_end}
#endif  /* $u{te_c.module_file}_$u{te_file.hdr_file_ext} */
.//
