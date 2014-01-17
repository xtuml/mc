/*----------------------------------------------------------------------------
 * File:  T_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  template (T)
 * 
 * (C) Copyright 1998-2013 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "LOG_bridge.h"
#include "POP_bridge.h"
#include "T_bridge.h"
#include "ooaofooa_classes.h"

extern bool Escher_run_flag;
#define T_number_of_bufs 4
#define T_tbuf_size 64000
static i_t current_tbuf = 0;
static i_t buffer_index = 0;
static char buffer[ 256000 ];
static char tbuf[ T_number_of_bufs ][ T_tbuf_size ];
FILE * outputfile;


/*
 * Bridge:  s
 */
c_t *
T_s( const i_t p_i )
{
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  return Escher_itoa( tbuf[ current_tbuf ], p_i );
}


/*
 * Bridge:  emit
 */
void
T_emit( c_t * p_file )
{
	//printf("Emitting to file: %s\n", p_file);
  static int first = 0;
  if ( first == 0 ) {
    first = 1;
    if ( 0 == ( outputfile = fopen( p_file, "w" ) ) ) {
      T_print( "bad news could not open output file" );
      T_exit( 1 );
    }
  }
  fprintf( outputfile, "%s", buffer );
//  printf("---\n");
//  printf("%s", buffer);
//  printf("---\n");
  T_clear();
}


/*
 * Bridge:  clear
 */
void
T_clear()
{
  //printf("Clearing buffer\n");
  int i;
  for ( i = 0; i < T_number_of_bufs; i++ ) {
    tbuf[ i ][ 0 ] = 0;
  }
  buffer[ 0 ] = 0;
  current_tbuf = 0;
  buffer_index = 0;
}


/*
 * Bridge:  b
 */
void
T_b( c_t * p_s )
{
  //printf("Adding to buffer: %s\n", p_s);
  i_t i = 0;
  if ( 0 == p_s ) p_s = "";
  while ( ( i < T_tbuf_size ) && ( 0 != p_s[ i ] ) ) {
    buffer[ buffer_index++ ] = p_s[ i++ ];
  }
  buffer[ buffer_index ] = 0;
}


/*
 * Bridge:  print
 */
void
T_print( c_t * p_s )
{
  if ( 0 == p_s ) p_s = "";
  fprintf( stderr,"%s\n", p_s );
}


/*
 * Bridge:  exit
 */
void
T_exit( const i_t p_i )
{
  Escher_run_flag = false;
}


/*
 * Bridge:  include
 */
void
T_include( c_t * p_file )
{
  /* No implementation here.  The model compiler overrides calls to T::include
   * to be actual #include calls.  See t_oal_smt_brg in the MC.
   */
}


/*
 * Bridge:  r
 */
c_t *
T_r( c_t * p_s )
{
  c_t * p = p_s;
  i_t i = 0;
  if ( 0 == p ) p = "";
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
    if ( ' ' != *p ) {
      tbuf[ current_tbuf ][ i++ ] = *p;
    }
  } while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  u
 */
c_t *
T_u( c_t * p_s )
{
  c_t * p = p_s;
  i_t i = 0;
  if ( 0 == p ) p = "";
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
    tbuf[ current_tbuf ][ i++ ] = toupper(*p);
  } while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  l
 */
c_t *
T_l( c_t * p_s )
{
  c_t * p = p_s;
  i_t i = 0;
  if ( 0 == p ) p = "";
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
    tbuf[ current_tbuf ][ i++ ] = tolower(*p);
  } while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  underscore
 */
c_t *
T_underscore( c_t * p_s )
{
  c_t * p = p_s;
  i_t i = 0;
  if ( 0 == p ) p = "";
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
    tbuf[ current_tbuf ][ i++ ] = ( ' ' == *p ) ? '_' : *p;
  } while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  u_
 */
c_t *
T_u_( c_t * p_s )
{
  c_t * p = p_s;
  i_t i = 0;
  if ( 0 == p ) p = "";
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
    if ( ' ' == *p ) {
      tbuf[ current_tbuf ][ i++ ] ='_';
    } else {
      tbuf[ current_tbuf ][ i++ ] = toupper(*p);
    }
  } while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  c
 */
c_t *
T_c( c_t * p_s )
{
  c_t * p = p_s;
  i_t i = 0;
  i_t toChange=1;
  if ( 0 == p ) p = "";
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
    if ( ( toChange != 0 ) && ( ' ' != *p ) ) {
      tbuf[ current_tbuf ][ i++ ] = toupper(*p);
      toChange = 0;
    } else {
      tbuf[ current_tbuf ][ i++ ] = *p;
    }
    if ( ' ' == *p ) {
      toChange = 1;
    }
  } while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  xmlify
 */
c_t *
T_xmlify( c_t * p_s )
{
  c_t * p = p_s;
  i_t i = 0;
  if ( 0 == p ) p = "";
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
    if ( *p == '<' ) {
        tbuf[ current_tbuf ][ i++ ] = '&';
        tbuf[ current_tbuf ][ i++ ] = 'l';
        tbuf[ current_tbuf ][ i++ ] = 't';
        tbuf[ current_tbuf ][ i++ ] = ';';
    } else if ( *p == '>' ) {
        tbuf[ current_tbuf ][ i++ ] = '&';
        tbuf[ current_tbuf ][ i++ ] = 'g';
        tbuf[ current_tbuf ][ i++ ] = 't';
        tbuf[ current_tbuf ][ i++ ] = ';';
    } else if ( *p == '&' ) {
        tbuf[ current_tbuf ][ i++ ] = '&';
        tbuf[ current_tbuf ][ i++ ] = 'a';
        tbuf[ current_tbuf ][ i++ ] = 'm';
        tbuf[ current_tbuf ][ i++ ] = 'p';
        tbuf[ current_tbuf ][ i++ ] = ';';
    } else if ( *p == '"' ) {
        tbuf[ current_tbuf ][ i++ ] = '&';
        tbuf[ current_tbuf ][ i++ ] = 'q';
        tbuf[ current_tbuf ][ i++ ] = 'u';
        tbuf[ current_tbuf ][ i++ ] = 'o';
        tbuf[ current_tbuf ][ i++ ] = 't';
        tbuf[ current_tbuf ][ i++ ] = ';';
    } else if ( *p == '\'' ) {
        tbuf[ current_tbuf ][ i++ ] = '&';
        tbuf[ current_tbuf ][ i++ ] = 'a';
        tbuf[ current_tbuf ][ i++ ] = 'p';
        tbuf[ current_tbuf ][ i++ ] = 'o';
        tbuf[ current_tbuf ][ i++ ] = 's';
        tbuf[ current_tbuf ][ i++ ] = ';';
    } else if ( *p == '%' ) {
        tbuf[ current_tbuf ][ i++ ] = '%';
        tbuf[ current_tbuf ][ i++ ] = '%';
    } else {
        tbuf[ current_tbuf ][ i++ ] = *p;
    }
  } while ( ( i < T_tbuf_size ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  parsekeyword
 */
c_t *
T_parsekeyword( c_t * p_key, c_t * p_s )
{
  c_t * s = 0;
  if ( 0 == p_s ) p_s = "";
  if ( 0 == p_key ) p_key = "";
  if ( strlen( p_s ) ) {
    c_t * key = Escher_strget();
    strcpy( key, p_key );
    strcat( key, ":" );
    s = strstr( p_s, key );
    if ( 0 != s ) {
      i_t i = 0;
      s = strstr( s, ":" );
      if ( 0 != s ) s++; /* increment past : */
      if ( 0 != *s ) {
        /* Skip past blanks but watch for end of line and and of string and string max.  */
        while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( ' ' == *s ) && ( 0 != *s ) && ( '\n' != *s ) ) {
          s++; i++;
        }
        while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *(s+i) ) ) {
          if ( ( '\n' == *(s+i) ) || ( ' ' == *(s+i) ) ) { *(s+i) = 0; break; }
          i++;
        }
      }
    }
  }
  return ( 0 != s ) ? s : "";
}


/*
 * Bridge:  body
 */
c_t *
T_body( void )
{
  buffer_index = 0;
  return buffer;
}


extern char * template_engine( char * );
extern int yyparse( void );

/*
 * Bridge:  t
 */
c_t *
T_t( c_t * p_s )
{
  c_t * result = ( 0 == p_s ) ? "" : p_s;
  if ( 0 == p_s ) p_s = "";
  if ( ( strlen( p_s ) > 0 ) && strchr( p_s, '$' ) && strchr( p_s, '{' ) && strchr( p_s, '}' ) ) {
    c_t s[ESCHER_SYS_MAX_STRING_LEN];
    strncpy(s,p_s,ESCHER_SYS_MAX_STRING_LEN-1);strcat(s,"\n");
    result = template_engine( s );
  }
  return result;
}
