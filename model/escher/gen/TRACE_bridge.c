/*----------------------------------------------------------------------------
 * File:  TRACE_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  trace (TRACE)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "LOG_bridge.h"
#include "POP_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "TRACE_bridge.h"
#include "TRACE_bridge.h"
#include "sys_sys_types.h"

/*
 * Bridge:  log
 */
void
TRACE_log( c_t * p_flavor, const i_t p_id, c_t * p_message )
{
  /* Replace/Insert your implementation code here... */
  c_t * s=0;
  c_t * s1;
  /* ASSIGN s = ( ( ( ( STRING::itoa(PARAM.id) +  ___  ) + PARAM.flavor ) +  ___  ) + PARAM.message ) */
  s = Escher_strcpy( s, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( STRING_itoa( s1, p_id ), " ___ " ), p_flavor ), " ___ " ), p_message ) );
  /* LOG::LogInfo( message:s ) */
  LOG_LogInfo( s );
}

