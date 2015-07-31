.//
.if ( te_sys.InstanceLoading )
extern void mark_pass( c_t * );
#define T_T(x) ( 0 == x ) ? s : strcat(s,x)
.end if
/*
 * UML Domain Functions (Synchronous Services)
 */
.if ( not_empty ilb_te_sync )
#include "${te_file.ilb}.${te_file.hdr_file_ext}"
.end if
${function_definitions}
.//
