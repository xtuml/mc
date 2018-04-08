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

#include "maslout_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "TRACE_bridge.h"
#include "V_bridge.h"
#include "STRING_bridge.h"
#include "maslout_sys_types.h"

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
  c_t result[ESCHER_SYS_MAX_STRING_LEN];
  result[0] = '\0';

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

  return result;
}


/*
 * Bridge:  strlen
 */
i_t
STRING_strlen( c_t * p_s )
{
  i_t result = 0;

  result = (i_t)Escher_strlen( p_s );

  return result;
}


/*
 * Bridge:  indexof
 */
i_t
STRING_indexof( c_t * p_haystack, c_t * p_needle )
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


/*
 * Bridge:  getword
 */
c_t *
STRING_getword( const i_t p_i, c_t * p_s )
{
  c_t result[ESCHER_SYS_MAX_STRING_LEN];
  result[0] = '\0';

  // check arguments
  i_t len = (i_t)Escher_strlen( p_s );
  if ( !(p_i < 0 || p_i > len - 1) ) {

    c_t * w_begin;
    c_t * w_end;
    
    // find the first non comma, whitespace, or close parenthesis
    w_begin = p_s + p_i;
    while ( w_begin - p_s < len ) {
      if ( *w_begin != ',' &&
           *w_begin != ' ' &&
           *w_begin != '\n' &&
           *w_begin != '\r' &&
           *w_begin != '\t' &&
           *w_begin != '(' &&
           *w_begin != ')' ) break;
      w_begin++;
    }

    // find the first comma, whitespace, or close parenthesis after starting the word
    w_end = w_begin;
    while ( w_end - p_s < len ) {
      if ( *w_end == ',' ||
           *w_end == ' ' ||
           *w_end == '\n' ||
           *w_end == '\r' ||
           *w_end == '\t' ||
           *w_end == '(' ||
           *w_end == ')' ) break;
      w_end++;
    }

    // copy the substring into the result
    //Escher_strcpy( result, STRING_substr( (const i_t)(w_begin - p_s), (const i_t)(w_end - p_s), p_s ) );
    c_t * sub = STRING_substr( (const i_t)(w_begin - p_s), (const i_t)(w_end - p_s), p_s );

    // Escher_strcpy
    c_t * dst = result;
    c_t * src = sub;
    if ( 0 != src ) {
      Escher_size_t i = Escher_strlen( src ) + 1;
      while ( ( i > 0 ) && ( *src != '\0' ) ) {
        --i;
        *dst++ = *src++;
      }
      *dst = '\0';  /* Ensure delimiter.  */
    }
    //
    
  }

  return result;
}


/*
 * Bridge:  idtoa
 */
c_t *
STRING_idtoa( c_t * p_a, Escher_UniqueID_t p_id )
{
  // Use only when instance loading is enabled.
  result = Escher_u128touuid( p_a, p_id );
}

