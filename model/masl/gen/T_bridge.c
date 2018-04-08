/*----------------------------------------------------------------------------
 * File:  T_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  template (T)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include <ctype.h>
#include "masl_sys_types.h"
#include "T_bridge.h"
#include "STRING_bridge.h"

extern bool Escher_run_flag;
#define T_number_of_bufs 4
#define T_tbuf_size 250000
static i_t current_tbuf = 0;
static i_t buffer_index = 0;
static char buffer[ 1000000 ];
static char tbuf[ T_number_of_bufs ][ T_tbuf_size ];


/*
 * Bridge:  s
 */
c_t *
T_s( const i_t p_i )
{
  return STRING_itoa( p_i );
}

#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>
static void _mkdir(const char *);
static void _mkdir(const char *dir) {
  char tmp[256];
  char *p = NULL;
  size_t len;

  snprintf(tmp, sizeof(tmp),"%s",dir);
  len = strlen(tmp);
  if(tmp[len - 1] == '/')
    tmp[len - 1] = 0;
  for(p = tmp + 1; *p; p++)
    if(*p == '/') {
      *p = 0;
      #ifdef WIN
      mkdir(tmp);
      #else
      mkdir(tmp, S_IRWXU);
      #endif
      *p = '/';
    }
}


/*
 * Bridge:  emit
 */
void
T_emit( c_t * p_file )
{
  FILE * outputfile;
  if ( strcmp( "stdout", p_file ) == 0 ) {
    outputfile = stdout;
  } else {
    // Create directories as needed.
    _mkdir( p_file );
    // Open file.
    if ( 0 == ( outputfile = fopen( p_file, "w" ) ) ) {
      T_print( "bad news could not open output file" );
      T_exit( 1 );
    }
  }
  fprintf( outputfile, "%s", buffer );
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
        c_t * s2 = Escher_strget();
        strcpy( s2, s );
        s = s2;
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
T_body()
{
  /* In case we are called with no data, ensure null buffer contents.  */
  if ( 0 == buffer_index ) {
    buffer[ 0 ] = 0;
  }
  buffer_index = 0;
  return buffer;
}


//extern char * template_engine( char * );
//extern int yyparse( void );

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
#ifdef __x86_64__
    //result = template_engine( s );
#endif
  }
  return result;
}


static int cp(const char *, const char *);
/*
 * Bridge:  copyfile
 */
void
T_copyfile( c_t * p_destination, c_t * p_source )
{
  if ( 0 == cp( p_destination, p_source ) ) {
    fprintf( stderr, "SUCCESSFUL copy - " );
  } else {
    fprintf( stderr, "FAILED copy - " );
  }
  fprintf( stderr, "copyfile:  source:%s, destination:%s\n", p_source, p_destination );
}

#include <fcntl.h>
#include <errno.h>

static int cp(const char *to, const char *from)
{
    int fd_to, fd_from;
    char buf[4096];
    ssize_t nread;
    int saved_errno;

    fd_from = open(from, O_RDONLY);
    if (fd_from < 0)
        return -1;

    fd_to = open(to, O_WRONLY | O_CREAT | O_TRUNC, 0666);
    if (fd_to < 0)
        goto out_error;

    while (nread = read(fd_from, buf, sizeof buf), nread > 0)
    {
        char *out_ptr = buf;
        ssize_t nwritten;

        do {
            nwritten = write(fd_to, out_ptr, nread);

            if (nwritten >= 0)
            {
                nread -= nwritten;
                out_ptr += nwritten;
            }
            else if (errno != EINTR)
            {
                goto out_error;
            }
        } while (nread > 0);
    }

    if (nread == 0)
    {
        if (close(fd_to) < 0)
        {
            fd_to = -1;
            goto out_error;
        }
        close(fd_from);

        /* Success! */
        return 0;
    }

  out_error:
    saved_errno = errno;

    close(fd_from);
    if (fd_to >= 0)
        close(fd_to);

    errno = saved_errno;
    return -1;
}

/*
 * Bridge:  idtoi
 */
i_t
T_idtoi( Escher_UniqueID_t p_id )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 0 */
  {i_t xtumlOALrv = 0;
  return xtumlOALrv;}
}

