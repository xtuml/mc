.if ( ( "T" == te_brg.EEkeyletters ) and ( "include" == te_brg.Name ) )
#include ${parameters}
.else
.//-- 004: 20140122 Add Start (saitou) 
.if( te_brg.NotGenerateInvocation )
#if 0 /* Omit Statement for marking*/
.end if
.//-- 004: 20140122 Add End (saitou) 
${ws}${bridge_name}(\
  .if ( "" != parameters )
 ${parameters} \
  .end if
);
.//-- 004: 20140122 Add Start (saitou) 
.if( te_brg.NotGenerateInvocation )
#endif /* Omit End */
.end if
.//-- 004: 20140122 Add End (saitou) 
.end if
