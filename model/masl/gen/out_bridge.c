/*----------------------------------------------------------------------------
 * File:  out_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  out (out)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "masl_sys_types.h"
#include "LOG_bridge.h"
#include "out_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "TRACE_bridge.h"
#include "out_bridge.h"
#include "masl_sys_types.h"

FILE * outputfile = 0;
/*
 * Bridge:  tostring
 */
void
out_tostring( c_t * p_element, c_t * p_value[8] )
{
  int i;
  if ( ! outputfile ) { outputfile = fopen( "tostring.txt", "w" ); }
  fprintf( outputfile, "%s", p_element );
  for ( i = 0; i < 8; i++ ) {
    if ( p_value[i] && 0 != *p_value[i] ) { fprintf( outputfile, ",%s", p_value[i] ); }
    else { fprintf( outputfile, "," ); }
  }
  fprintf( outputfile, "\n" );
}

