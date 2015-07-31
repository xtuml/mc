/*----------------------------------------------------------------------------
 * File:  ${pkg_name}.${te_file.hdr_file_ext}
 *
 * UML Package (Top Module) Declaration
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{pkg_name}_$u{te_file.hdr_file_ext}
#define $u{pkg_name}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}
${include_files}
class ${pkg_name} : public xtuml_module {
  public:
${top_module_instances}
.if ( "SystemC" == te_thread.flavor )
  SC_HAS_PROCESS( ${pkg_name} );
.end if
.if ( "BitLevelSignals" == te_sys.SystemCPortsType )
  sc_in < bool >  clk;
  sc_in < bool >  rst_X;
.end if
${bitLevelChannels}\
  ${pkg_name}( xtuml_module_name name ) : xtuml_module( name )${top_module_inits} {
${port_binding}\
.if ( ( "SystemC" != te_thread.flavor ) and ( "" != top_module_dispatcher ) )
${top_module_comp_inits}\
    while ( true ) {
${top_module_dispatcher}
    }
.end if
  }
};
${te_target.c2cplusplus_linkage_end}
#endif  /* $u{pkg_name}_$u{te_file.hdr_file_ext} */
.//
