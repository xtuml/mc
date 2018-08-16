/*----------------------------------------------------------------------------
 * File:  STRING_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  string (STRING)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRING_BRIDGE_H
#define STRING_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "integrity_sys_types.h"
c_t * STRING_itoa( const i_t );
i_t STRING_atoi( c_t * );
c_t * STRING_substr( const i_t, const i_t, c_t * );
i_t STRING_strlen( c_t * );
i_t STRING_indexof( c_t *, c_t * );
c_t * STRING_getword( const i_t, const i_t, c_t * );
c_t * STRING_trim( c_t * );
#define STRING_quote() "\""
c_t * STRING_escapetics( c_t * );
c_t * STRING_unescapetics( c_t * );
c_t * STRING_idtoa( c_t *, Escher_UniqueID_t );

#ifdef	__cplusplus
}
#endif
#endif   /* STRING_BRIDGE_H */
