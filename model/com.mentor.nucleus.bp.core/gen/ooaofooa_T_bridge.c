/*----------------------------------------------------------------------------
 * File:  ooaofooa_T_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  template (T)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "ooaofooa_T_bridge.h"
#include "ooaofooa_LOG_bridge.h"
#include "ooaofooa_POP_bridge.h"
#include "ooaofooa_classes.h"
#include "ooaofooa_T_bridge.h"

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
ooaofooa_T_s( const i_t p_i)
{
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  return Escher_itoa( tbuf[ current_tbuf ], p_i );
}


/*
 * Bridge:  emit
 */
void
ooaofooa_T_emit( c_t p_file[ESCHER_SYS_MAX_STRING_LEN])
{
	//printf("Emitting to file: %s\n", p_file);
  static int first = 0;
  if ( first == 0 ) {
    first = 1;
    if ( 0 == ( outputfile = fopen( p_file, "w" ) ) ) {
      ooaofooa_T_print( "bad news could not open output file" );
      ooaofooa_T_exit( 1 );
    }
  }
  fprintf( outputfile, "%s", buffer );
//  printf("---\n");
//  printf("%s", buffer);
//  printf("---\n");
  ooaofooa_T_clear();
}


/*
 * Bridge:  clear
 */
void
ooaofooa_T_clear()
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
ooaofooa_T_b( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
	//printf("Adding to buffer: %s\n", p_s);
  i_t i = 0;
  while ( ( i < T_tbuf_size ) && ( 0 != p_s[ i ] ) ) {
    buffer[ buffer_index++ ] = p_s[ i++ ];
  }
  buffer[ buffer_index ] = 0;
}


/*
 * Bridge:  print
 */
void
ooaofooa_T_print( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
  printf( "%s\n", p_s );
}


/*
 * Bridge:  exit
 */
void
ooaofooa_T_exit( const i_t p_i)
{
  Escher_run_flag = false;
}


/*
 * Bridge:  include
 */
void
ooaofooa_T_include( c_t p_file[ESCHER_SYS_MAX_STRING_LEN])
{
  /* No implementation here.  The model compiler overrides calls to T::include
   * to be actual #include calls.  See t_oal_smt_brg in the MC.
   */
}


/*
 * Bridge:  r
 */
c_t *
ooaofooa_T_r( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
  c_t * p = p_s;
  i_t i = 0;
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
ooaofooa_T_u( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
  c_t * p = p_s;
  i_t i = 0;
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
ooaofooa_T_l( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
  c_t * p = p_s;
  i_t i = 0;
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
ooaofooa_T_underscore( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
  c_t * p = p_s;
  i_t i = 0;
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
ooaofooa_T_u_( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
  c_t * p = p_s;
  i_t i = 0;
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
    if ( ' ' == *p ) {
      tbuf[ current_tbuf ][ i++ ] ='_';
    }else{
	  tbuf[ current_tbuf ][ i++ ] = toupper(*p);
    }
  } while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  c
 */
c_t *
ooaofooa_T_c( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
  c_t * p = p_s;
  i_t i = 0;
  i_t toChange=1;
  current_tbuf = ( current_tbuf + 1 ) % T_number_of_bufs;
  do {
  	if(toChange !=0 && ' ' != *p)
	  {
	  	tbuf[ current_tbuf ][ i++ ] = toupper(*p);
		toChange=0;
	  }
	else
	  {
	  	tbuf[ current_tbuf ][ i++ ] = *p;
	  }
    if ( ' ' == *p ) {
      toChange=1;
    }

  } while ( ( i < ESCHER_SYS_MAX_STRING_LEN ) && ( 0 != *p++ ) );
  return tbuf[ current_tbuf ];
}


/*
 * Bridge:  xmlify
 */
c_t *
ooaofooa_T_xmlify( c_t p_s[ESCHER_SYS_MAX_STRING_LEN])
{
  c_t * p = p_s;
  i_t i = 0;
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


