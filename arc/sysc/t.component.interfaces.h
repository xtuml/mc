.if (file_epilogue == false)
/*----------------------------------------------------------------------------
 * File:  ${te_file.interfaces}.${te_file.hdr_file_ext}"
 *
 * UML Port Messages (Interface Operations and Signals)
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

.// Prepending XTUML here, because this file names seems a bit weak.
#ifndef XTUML$u{te_file.interfaces}_$u{te_file.hdr_file_ext}
#define XTUML$u{te_file.interfaces}_$u{te_file.hdr_file_ext}

${te_target.c2cplusplus_linkage_begin}
#include "${te_file.types}.${te_file.hdr_file_ext}"

.else

#endif
.end if
