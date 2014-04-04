.//-- 017:20140319 Add Start (nomura)
.invoke domainenums = fx_get_domain_enums_file_name(te_c)
.if ( "C" == te_target.language )
/*----------------------------------------------------------------------------
 * File:  ${domainenums.result}.${te_file.hdr_file_ext}
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  ${te_c.Name}
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{domainenums.result}_$u{te_file.hdr_file_ext}
#define $u{domainenums.result}_$u{te_file.hdr_file_ext}

${te_target.c2cplusplus_linkage_begin}
.end if

${enumeration_info}

.if ( "C" == te_target.language )
${te_target.c2cplusplus_linkage_end}
#endif  /* $u{domainenums.result}_$u{te_file.hdr_file_ext} */
.end if
.//-- 017:20140319 Add End (nomura)
