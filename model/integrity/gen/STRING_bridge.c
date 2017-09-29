/*----------------------------------------------------------------------------
 * File:  STRING_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  string (STRING)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "integrity_sys_types.h"
#include "CSV_bridge.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "TRACE_bridge.h"
#include "STRING_bridge.h"
#include "integrity_sys_types.h"

/*
 * Bridge:  itoa
 */
c_t *
STRING_itoa( const i_t p_i )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  c_t * s=0;i_t i;c_t * mapping[10]={0};
  /* ASSIGN mapping[9] = 9 */
  mapping[9] = Escher_strcpy( mapping[9], "9" );
  /* ASSIGN mapping[8] = 8 */
  mapping[8] = Escher_strcpy( mapping[8], "8" );
  /* ASSIGN mapping[7] = 7 */
  mapping[7] = Escher_strcpy( mapping[7], "7" );
  /* ASSIGN mapping[6] = 6 */
  mapping[6] = Escher_strcpy( mapping[6], "6" );
  /* ASSIGN mapping[5] = 5 */
  mapping[5] = Escher_strcpy( mapping[5], "5" );
  /* ASSIGN mapping[4] = 4 */
  mapping[4] = Escher_strcpy( mapping[4], "4" );
  /* ASSIGN mapping[3] = 3 */
  mapping[3] = Escher_strcpy( mapping[3], "3" );
  /* ASSIGN mapping[2] = 2 */
  mapping[2] = Escher_strcpy( mapping[2], "2" );
  /* ASSIGN mapping[1] = 1 */
  mapping[1] = Escher_strcpy( mapping[1], "1" );
  /* ASSIGN mapping[0] = 0 */
  mapping[0] = Escher_strcpy( mapping[0], "0" );
  /* ASSIGN i = PARAM.i */
  i = p_i;
  /* ASSIGN s =  */
  s = Escher_strcpy( s, "" );
  /* WHILE ( ( i >= 1 ) ) */
  while ( ( i >= 1 ) ) {
    i_t d;
    /* ASSIGN d = ( i % 10 ) */
    d = ( i % 10 );
    /* ASSIGN i = ( i / 10 ) */
    i = ( i / 10 );
    /* ASSIGN s = ( mapping[d] + s ) */
    s = Escher_strcpy( s, Escher_stradd( mapping[d], s ) );
  }
  /* RETURN s */
  {c_t * xtumlOALrv = s;
  return xtumlOALrv;}
}


/*
 * Bridge:  atoi
 */
i_t
STRING_atoi( c_t * p_s )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 0 */
  {i_t xtumlOALrv = 0;
  return xtumlOALrv;}
}


/*
 * Bridge:  substr
 */
c_t *
STRING_substr( const i_t p_begin, const i_t p_end, c_t * p_s )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  strlen
 */
i_t
STRING_strlen( c_t * p_s )
{
  i_t result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  indexof
 */
i_t
STRING_indexof( c_t * p_haystack, c_t * p_needle )
{
  i_t result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  getword
 */
c_t *
STRING_getword( const i_t p_i, const i_t p_j, c_t * p_s )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  trim
 */
c_t *
STRING_trim( c_t * p_s )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  escapetics
 */
c_t *
STRING_escapetics( c_t * p_s )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  unescapetics
 */
c_t *
STRING_unescapetics( c_t * p_s )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  idtoa
 */
c_t *
STRING_idtoa( c_t * p_a, Escher_UniqueID_t p_id )
{
  return Escher_u128touuid( p_a, p_id );
}

