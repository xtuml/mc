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

#include "sys_sys_types.h"
c_t * STRING_itoa( c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
i_t STRING_atoi( c_t[ESCHER_SYS_MAX_STRING_LEN] );

#ifdef	__cplusplus
}
#endif
#endif   /* STRING_BRIDGE_H */
