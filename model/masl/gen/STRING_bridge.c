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

#include "masl_sys_types.h"
#include "LOG_bridge.h"
#include "out_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "TRACE_bridge.h"
#include "STRING_bridge.h"
#include "masl_sys_types.h"

/*
 * Bridge:  itoa
 */
c_t *
STRING_itoa( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const i_t p_i )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  c_t s[ESCHER_SYS_MAX_STRING_LEN];i_t i;c_t mapping[10][ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN mapping[9] = 9 */
  Escher_strcpy( mapping[9], "9" );
  /* ASSIGN mapping[8] = 8 */
  Escher_strcpy( mapping[8], "8" );
  /* ASSIGN mapping[7] = 7 */
  Escher_strcpy( mapping[7], "7" );
  /* ASSIGN mapping[6] = 6 */
  Escher_strcpy( mapping[6], "6" );
  /* ASSIGN mapping[5] = 5 */
  Escher_strcpy( mapping[5], "5" );
  /* ASSIGN mapping[4] = 4 */
  Escher_strcpy( mapping[4], "4" );
  /* ASSIGN mapping[3] = 3 */
  Escher_strcpy( mapping[3], "3" );
  /* ASSIGN mapping[2] = 2 */
  Escher_strcpy( mapping[2], "2" );
  /* ASSIGN mapping[1] = 1 */
  Escher_strcpy( mapping[1], "1" );
  /* ASSIGN mapping[0] = 0 */
  Escher_strcpy( mapping[0], "0" );
  /* ASSIGN i = PARAM.i */
  i = p_i;
  /* ASSIGN s =  */
  Escher_strcpy( s, "" );
  /* WHILE ( ( i >= 1 ) ) */
  while ( ( i >= 1 ) ) {
    i_t d;
    /* ASSIGN d = ( i % 10 ) */
    d = ( i % 10 );
    /* ASSIGN i = ( i / 10 ) */
    i = ( i / 10 );
    /* ASSIGN s = ( mapping[d] + s ) */
    Escher_strcpy( s, Escher_stradd( mapping[d], s ) );
  }
  /* RETURN s */
  {c_t * xtumlOALrv = s;
  return Escher_strcpy( A0xtumlsret, xtumlOALrv );}
}


/*
 * Bridge:  atoi
 */
i_t
STRING_atoi( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
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
STRING_substr( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], const i_t p_begin, const i_t p_end, c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{

  c_t result[ESCHER_SYS_MAX_STRING_LEN];
  Escher_strcpy( result, "" );

  // get length of s
  i_t len = (i_t)Escher_strlen( p_s );

  // check that the indexes are in a valid range
  i_t begin = p_begin;
  i_t end = p_end;
  if ( begin < 0 || begin > len - 1 ) {
    begin = 0;
  }
  if ( end < 1 || end > len ) {
    end = len;
  }

  // if we have a string and the end is greater than begin
  if ( !(len == 0 || end <= begin) ) {

    // copy in the new string
    c_t * p = p_s + begin;
    c_t * r = result;
    while ( p < p_s + end ) {
      *r++ = *p++;
    }
    *r = '\0';  // null terminate

  }

  return Escher_strcpy( A0xtumlsret, result );
}

/*
 * Bridge:  strlen
 */
i_t
STRING_strlen( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  i_t result = 0;

  result = (i_t)Escher_strlen( p_s );

  return result;
}

/*
 * Bridge:  indexof
 */
i_t
STRING_indexof( c_t p_haystack[ESCHER_SYS_MAX_STRING_LEN], c_t p_needle[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * a;
  c_t * b;
  c_t * c;

  // check arguments
  if ( !p_needle || !p_haystack ) return -1;

  a = p_haystack;
  b = p_needle;
  if (*b == '\0') {
    return 0;   // if needle is empty string, by definition, the index is 0
  }

  // seach through to find first character match
  for ( ; *a != 0; a += 1) {
    if (*a == *b) {
      break;
    }
  }

  // check the rest of the string
  c = a;
  while ( *c++ == *b++ ) {
    if ( *b == '\0' ) {
      return a - p_haystack;
    }
    if ( *c == '\0' ) {
      break;
    }
  }

  // no match found
  return -1;
}
