/*----------------------------------------------------------------------------
 * File:  T_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  template (T)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef T_BRIDGE_H
#define T_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "sys_sys_types.h"

c_t * T_s( const i_t );
void T_emit( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void T_clear( void );
void T_b( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void T_print( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void T_exit( const i_t );
void T_include( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_r( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_u( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_l( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_underscore( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_u_( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_c( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_xmlify( c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_parsekeyword( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );
c_t * T_body( void );
c_t * T_t( c_t[ESCHER_SYS_MAX_STRING_LEN] );

#ifdef	__cplusplus
}
#endif
#endif   /* T_BRIDGE_H */
