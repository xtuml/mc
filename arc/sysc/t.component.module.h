/*----------------------------------------------------------------------------
 * File:  ${te_c.module_file}.${te_file.hdr_file_ext}
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_c.module_file}_$u{te_file.hdr_file_ext}
#define $u{te_c.module_file}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}\

class ${te_c.Name}; // forward reference
${include_files}\
${class_type_identifiers}\
.if ( "" != te_c.Descrip )
/*
${te_c.Descrip}
*/
.end if
class ${te_c.Name} : public xtuml_module${port_classes}\
  .if ( te_c.internal_behavior )
, public sys_factory, public sys_events\
  .end if
 {
  public:
${sc_port_declarations}\
${nestedComponent_declarations}\
${bitLevelChannels}\
${has_process_declaration}\
.if ( not_empty te_sm )
  ${te_c.Name}( xtuml_module_name name ) : xtuml_module( name ), sys_factory(${te_set.number_of_containoids}), sys_events(sizeof(${event_union_name}), ${te_eq.max_events}, NUM_OF_XTUML_CLASS_THREADS) ${nestedComponent_constructors} {
${port_binding}\
${sc_process}\
.else
  ${te_c.Name}( xtuml_module_name name ) : xtuml_module( name )\
  .if ( te_c.internal_behavior )
, sys_factory(${te_set.number_of_containoids})\
  .end if
${nestedComponent_constructors} {
${port_binding}\
.end if
.if ( not_empty te_class ) 
  .include "${te_file.arc_path}/t.domain_init.factories.c"
.end if
.if ( ( te_c.internal_behavior ) and ( "SystemC" == te_thread.flavor ) )
${init_segment}\
.end if
.// CDS - Factor this into a template and/or make it conditional.
.if ( te_c.MaxTimers > 0 )
    tim = new TIM( ESCHER_SYS_MAX_XTUML_TIMERS );
  .if ( "SystemC" == te_thread.flavor )
    SC_THREAD( timspin );
      dont_initialize();
      sensitive << ${te_tim.event_name};
    tim->init( &${te_tim.event_name} );
  .else
    tim->init();
  .end if
  }
  .if ( "SystemC" == te_thread.flavor )
  void timspin( void ) { while ( true ) { tim->tick(); wait(); } }
  .end if
.else
  }
.end if
${message_declarations}\
  .if ( te_c.internal_behavior )
${function_declarations}\
    .if ( not_empty te_sm )
${sc_process_decls}\
    .end if
  .end if
${sc_event_declarations}\
  .if ( ( te_c.internal_behavior ) and ( not_empty te_class ) )
    .if ( not_empty tim_te_ee )
  sc_event ${te_tim.event_name};
  TIM * tim;
    .end if
.include "${te_file.arc_path}/t.domain_init.dci.h"
  .end if
};

${te_target.c2cplusplus_linkage_end}
#endif  /* $u{te_c.module_file}_$u{te_file.hdr_file_ext} */
.//
