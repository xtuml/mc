/*----------------------------------------------------------------------------
 * File:  V_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  value (V)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslout_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "V_bridge.h"
#include "masl_url.h"

/*
 * Bridge:  v
 */
void
V_v( c_t * p_element, c_t * p_value[8] )
{
  int i;
  char arg[2048];
  printf( "%s", p_element );
  for ( i = 0; i < 8; i++ ) {
    if ( p_value[i] && 0 != *p_value[i] ) {
        masl_url_encode( arg, p_value[i] );
        printf( ",%s", arg );
    }
    else { printf( "," ); }
  }
  printf( "\n" );
}

