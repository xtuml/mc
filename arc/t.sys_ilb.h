.//
/*---------------------------------------------------------------------
 * File:  ${te_file.ilb}.${te_file.hdr_file_ext}
 *
 * Description:
 * This file provides a means to safely receive calls from interrupt
 * handlers or other tasks/threads/contexts.
 *
 * ${te_copyright.body}
 *-------------------------------------------------------------------*/

#ifndef ${te_prefix.define_u}$u{te_file.ilb}_$u{te_file.hdr_file_ext}
#define ${te_prefix.define_u}$u{te_file.ilb}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

void * ${te_ilb.interleave_bridge}( void (vfp)(void) );
void ${te_ilb.interleave_bridge_done}( void );
void ${te_ilb.dispatch}( void );
void * ${te_ilb.get_data}( void );

${te_target.c2cplusplus_linkage_end}
#endif  /* ${te_prefix.define_u}$u{te_file.ilb}_$u{te_file.hdr_file_ext} */
.//
