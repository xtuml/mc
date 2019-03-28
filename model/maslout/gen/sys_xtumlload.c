/*---------------------------------------------------------------------------
 * Description:
 *   This module receives the string format instance data, converts it
 *   and loads instances into memory.
 *   It parse xtUML SQL files as input.
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslout_sys_types.h"
#include "sys_xtumlload.h"
#include "xtuml2masl_classes.h"
#include <ftw.h>

typedef Escher_UniqueID_t (*LoadInstance_t)( Escher_iHandle_t, const c_t * [] );

typedef struct {
  const c_t * s;
  const Escher_ClassNumber_t class_number;
  const LoadInstance_t instance_loader;
} Escher_instance_loader_info_t;

Escher_instance_loader_info_t class_string_2_class_number[] = {
  xtuml2masl_instance_loaders,
};

static Escher_ClassNumber_t lookupclassloader( const c_t * );
static Escher_ClassNumber_t lookupclassloader( const c_t * s )
{
  Escher_ClassNumber_t i;
  /* Search on class key letters to get class number.  */
  for ( i = 0; i < sizeof( class_string_2_class_number ) / sizeof( Escher_instance_loader_info_t ); i++ ) {
    if ( 0 == Escher_strcmp( s, class_string_2_class_number[ i ].s ) ) {
      break;
    }
  }
  return i;
}

static void Escher_load_instance( Escher_ClassNumber_t, const c_t * [] );
static void Escher_load_instance(
  Escher_ClassNumber_t count,
  const c_t * wordvalues[]
)
{
  Escher_ClassNumber_t n;
  Escher_iHandle_t instance;

  /* Look up the class number and instance loader using the key letters.  */
  n = lookupclassloader( wordvalues[ 0 ] );

  if ( n < 0 + xtuml2masl_MAX_CLASS_NUMBERS ) {
    /* Invoke the creation function using the class number.  */
    instance = Escher_CreateInstance( 0, class_string_2_class_number[n].class_number );

    /* Convert/Populate the attribute values.  */
    (*class_string_2_class_number[n].instance_loader)( instance, wordvalues );
  } else {
    /* Allow unrecognized statements as long as they parse.  */
  }
}

/*

   xtUML Parser Grammar

   statement        : ( comment )* | insert_statement

   comment          : "--" [^\n]*

   insert_statement : "INSERT INTO" keyletters "VALUES" "(" values ")" ";"

   keyletters       : [a-zA-Z][a-zA-Z0-9_]*

   values           : ( value comma )*   // cheat a bit allowing extra commas

   value            : number | stringvalue | unique_id

   unique_id        : '"' [0-9a-f-]+ '"'

   number           : [0-9-.]+

   stringvalue    : "'" [^']* "'"   // unless escaped with ''

*/

static void init( void );
static bool readrecord( char ** );
/* parser */
static bool statement( void );
static bool comment( void );
static bool insert_statement( void );
static bool keyletters( void );
static bool values( void );
static bool value( void );
static bool comma( void );
static bool unique_id( void );
static bool number( void );
static bool stringvalue( void );
static void whitespace( void );
static bool parsestring( c_t * );

static FILE * xtumlfile;
static c_t * cursor;
#define MAXWORDS 250
static const c_t * word[ MAXWORDS ];
static Escher_ClassNumber_t wordindex;

/*
#define DEVELOPER_DEBUG( s, c ) printf( s, c );
*/
#define DEVELOPER_DEBUG( s, c )

/*
 * This is compatible as a callback for ftw.  It can read from a given file name or from stdin.
 */
static int Escher_xtUML_load_file( const char * filepath, const struct stat * info, const int typeflag )
{
  /*
   * If no path is given, read from stdin until done.  Otherwise, open
   * the named file for reading.
   */
  if ( 0 == filepath ) {
    xtumlfile = stdin;
  } else {
    if ( !strstr( filepath, ".xtuml" ) ) {
      return 0; // not a model source file
    } else {
      if ( (xtumlfile = fopen( filepath, "r" )) == 0 ) {
        fprintf( stderr, "Could not open file:  %s\n", filepath );
        return 1;
      }
    }
  }
  init();               /* Initialize the parser storage area.  */
  /*
   * Read a record.  Parse it.  Pass it.  Repeat until end of file.
   */
  bool done = readrecord( &cursor ); /* Initial call reads to beginning of first record.  */
  while ( ! done ) {
    done = readrecord( &cursor );
    if ( statement() ) {
      if ( 0 != wordindex ) {
        Escher_load_instance( wordindex, word );
      }
    } else {
      fprintf( stderr, "Error:  Did not parse:  %s.\n", word[ wordindex ] );
    }
  }
  if ( stdin != xtumlfile ) {
    fclose( xtumlfile );
  }
  return 0;
}

void Escher_batch_relate( const Escher_DomainNumber_t, const Escher_ClassNumber_t );
/*
 * Loop through reading the file one record at a time.
 * Parse each record.
 */
int Escher_xtUML_load(
  int argc,
  char * argv[]
)
{
  Escher_ClassNumber_t i;
  /* Load from stdin and then recursively load from a named directory.  */
  int rc = Escher_xtUML_load_file( 0, 0, 0 );
  if ( 0 != argv[2] ) {
    rc = ftw( argv[2], Escher_xtUML_load_file, 15 );
  }
  for ( i = 0; i < 0 + xtuml2masl_MAX_CLASS_NUMBERS; i++ ) {
    Escher_batch_relate( 0, i );
  }
  return rc;
}

/*
 * Initialize the buffers and pointers.
 */
static void init( void )
{
  for ( wordindex = 0; wordindex < MAXWORDS; wordindex++ ) {
    word[ wordindex ] = 0;
  }
  wordindex = 0;
}

/*
 * Read a record from the file.
 */
static bool readrecord( c_t ** r )
{
  #define MAXRECORDLENGTH 2000000
  static c_t record[ MAXRECORDLENGTH ] = {0};
  #define MAXLINELENGTH 4000
  static c_t line[ MAXLINELENGTH ] = {0};
  bool done = false;
  bool last_record = false;
  c_t * p = record;
  *r = record;
  /* Add the line to record.  On the first read, this will be a NOP.
     On all other reads, this will get the front part of the record
     (INSERT INTO) that we read the last time. */
  strncpy( p, line, MAXLINELENGTH );
  p = p + Escher_strlen( line );
  while ( ! done ) {
    if ( fgets( line, MAXLINELENGTH, xtumlfile ) == 0 ) {
      done = true;
      last_record = true;
    }
    /* Note that we only compare as much as we care about.  */
    if ( 0 != strncmp( line, "INSERT INTO ", 12 ) ) {
      strncpy( p, line, MAXLINELENGTH );
      p = p + Escher_strlen( line );
      line[ 0 ] = 0;
    } else {
      done = true;
    }
  }
  return last_record;
}

static bool statement( void )
{
  s4_t commentsfound = 0;
  DEVELOPER_DEBUG( "statement %s\n", cursor );
  word[ 0 ] = "";
  wordindex = 0;
  while ( comment() ) commentsfound++;
  return ( insert_statement() || ( commentsfound > 0 ) );
}

static bool comment( void )
{
  s4_t guard_counter = 0;
  DEVELOPER_DEBUG( "comment %s\n", cursor );
  whitespace();
  if ( ! parsestring( "--" ) ) return false;
  do {
    cursor++;
  } while ( ( *cursor != '\n' ) && ( guard_counter++ < MAXLINELENGTH ) );
  return true;
}

static bool insert_statement( void )
{
  DEVELOPER_DEBUG( "insert_statement %s\n", cursor );
  whitespace();
  if ( ! parsestring( "INSERT" ) ) return false;
  if ( ! parsestring( "INTO" ) ) return false;
  if ( ! keyletters() ) return false;
  if ( ! parsestring( "VALUES" ) ) return false;
  if ( ! parsestring( "(" ) ) return false;
  values();
  if ( ')' != *cursor ) return false;
  *cursor++ = 0;   /* Zero out parenthesis to serve as delimeter.  */
  if ( ';' != *cursor ) return false;
  cursor++;
  return true;
}
  
static bool keyletters( void )
{
  DEVELOPER_DEBUG( "keyletters() %s\n", cursor );
  whitespace();
  if ( ! ( ( ( 'a' <= *cursor ) && ( *cursor <= 'z' ) ) ||
           ( ( 'A' <= *cursor ) && ( *cursor <= 'Z' ) ) ) ) {
    return false;
  }
  /* Capture keyletters here.  */
  word[ wordindex++ ] = cursor++;
  while ( ( ( 'a' <= *cursor ) && ( *cursor <= 'z' ) ) ||
          ( ( 'A' <= *cursor ) && ( *cursor <= 'Z' ) ) ||
          ( ( '0' <= *cursor ) && ( *cursor <= '9' ) ) ||
          ( *cursor == '_' ) ||
          ( *cursor == '-' ) ) {
    cursor++;
  }
  *cursor++ = 0;   /* Delimit key letters (overwriting white space).  */
  return true;
}

static bool values( void )
{
  DEVELOPER_DEBUG( "values() %s\n", cursor );
  /* Cheat here a little and allow leading and/or trailing commas.  */
  while ( comma() || value() ) ;
  return true;
}

static bool value( void )
{
  DEVELOPER_DEBUG( "value() %s\n", cursor );
  /* Match string before unique_id.  */
  if ( ! ( number() || stringvalue() || unique_id() ) ) return false;
  word[ wordindex ] = cursor; /* mark end of element */
  return true;
}

static bool comma( void )
{
  DEVELOPER_DEBUG( "comma() %s\n", cursor );
  whitespace();
  if ( ',' != *cursor ) return false;
  *cursor++ = 0;   /* Zero out comma to serve as delimeter.  */
  return true;
}

static bool unique_id( void )
{
  s4_t guard_counter = 0;
  DEVELOPER_DEBUG( "unique_id() %s\n", cursor );
  if ( ! ( '"' == *cursor ) ) return false;
  cursor++;   /* Eat the quotation mark.  */
  /* Capture unique_id into word.  */
  word[ wordindex++ ] = cursor++;
  while ( ( ( ( '0' <= *cursor ) && ( *cursor <= '9' ) ) ||
            ( ( 'a' <= *cursor ) && ( *cursor <= 'z' ) ) ||
            ( *cursor == '-' ) ) &&
          ( guard_counter++ < MAXLINELENGTH ) ) {
    cursor++;
  }
  *cursor++ = 0;  /* Overwrite trailing quotation mark with delimter.  */
  return true;
}

static bool number( void )
{
  s4_t guard_counter = 0;
  DEVELOPER_DEBUG( "number() %s\n", cursor );
  if ( ! ( ( ( '0' <= *cursor ) && ( *cursor <= '9' ) ) ||
           ( *cursor == '.' ) ||
           ( *cursor == '-' ) ) ) return false;
  /* Capture number into word.  */
  word[ wordindex++ ] = cursor++;
  while ( ( ( ( '0' <= *cursor ) && ( *cursor <= '9' ) ) ||
            ( *cursor == '-' ) ) &&
          ( guard_counter++ < MAXLINELENGTH ) ) {
    cursor++;
  }
  return true;
}

static bool stringvalue( void )
{
  s4_t guard_counter = 0;
  DEVELOPER_DEBUG( "stringvalue() %s\n", cursor );
  if ( *cursor != '\'' ) return false;
  cursor++;
  /* Capture string body into word.  */
  word[ wordindex++ ] = cursor;
  /* The following if statement deals with empty strings.  */
  if ( ( *cursor != '\'' ) || ( *(cursor + 1) == '\'' ) ) {
    while ( guard_counter++ < MAXRECORDLENGTH ) {
      if ( ( *cursor == '\'' ) && ( *(cursor + 1) == '\'' ) ) {
        cursor++;
        cursor++;
      } else if ( ( *cursor == '\'' ) && ( *(cursor + 1) != '\'' ) ) {
        break;
      } else {
        cursor++;
      }
    }
  }
  *cursor++ = 0;  /* Overwrite trailing quotation mark with delimter.  */
  return true;
}

static bool parsestring(
  c_t * s1
)
{
  c_t * s2;
  whitespace();
  s2 = cursor;
  while ( *s1++ == *s2++ ) {
    if ( 0 == *s1 ) {
      cursor = s2;
      return true;
    }
  }
  return false;
}

static void whitespace( void )
{
  s4_t guard_counter = 0;
  while ( ( ( *cursor == ' ' ) ||
            ( *cursor == '\r' ) ||
            ( *cursor == '\n' ) ||
            ( *cursor == '\t' ) ) &&
          ( guard_counter++ < MAXLINELENGTH ) ) {
    cursor++;
  }
}

/*
   MASL Activity Container Parser Grammar

   activity_file:  container*
   container:
     activity_begin ( uuid )+ do_not_edit
     signature
     code_block
     activity_end do_not_edit
*/

static bool readcontainer( char ** );
static bool container( void );
static bool activity_begin( void );
static bool uuid( void );
static bool do_not_edit( void );
static bool signature( void );
static bool code_block( void );
static bool activity_end( void );

static bool readcontainer( char ** c )
{
  #define MAXCONTAINERLENGTH 2000000
  static c_t containerspace[ MAXCONTAINERLENGTH ] = {0};
  static c_t line[ MAXLINELENGTH ] = {0};
  bool done = false;
  bool last_container = false;
  c_t * p = containerspace;
  *c = containerspace;
  /* Add the line to containerspace.  On the first read, this will be a NOP.
     On all other reads, this will get the front part of the container
     (//! ACTIVITY BEGIN.) that we read the last time. */
  strncpy( p, line, MAXLINELENGTH );
  p = p + Escher_strlen( line );
  while ( ! done ) {
    if ( fgets( line, MAXLINELENGTH, xtumlfile ) == 0 ) {
      done = true;
      last_container = true;
    }
    /* Note that we only compare as much as we care about.  */
    if ( 0 != strncmp( line, "//! ACTIVITY BEGIN.", 19 ) ) {
      strncpy( p, line, MAXLINELENGTH );
      p = p + Escher_strlen( line );
      line[ 0 ] = 0;
    } else {
      done = true;
    }
  }
  return last_container;
}

static bool container( void )
{
  DEVELOPER_DEBUG( "container %s\n", cursor );
  word[ 0 ] = "";
  wordindex = 0;
  if ( ! activity_begin() ) return false;
  while ( uuid() );
  if ( ! do_not_edit() ) return false;
  if ( ! signature() ) return false;
  if ( ! code_block() ) return false;
  if ( ! activity_end() ) return false;
  if ( ! do_not_edit() ) return false;
  return true;
}

static bool activity_begin( void )
{
  DEVELOPER_DEBUG( "activity_begin %s\n", cursor );
  if ( parsestring( "//!" ) && parsestring( "ACTIVITY" ) && parsestring( "BEGIN." ) ) return true;
  return false;
}

static bool uuid( void )
{
  s4_t guard_counter = 0;
  DEVELOPER_DEBUG( "uuid() %s\n", cursor );
  whitespace();
  if ( ! ( '\'' == *cursor ) ) return false;
  *cursor = '"';
  /* Capture uuid into word.  */
  word[ wordindex++ ] = cursor++;
  while ( ( ( ( '0' <= *cursor ) && ( *cursor <= '9' ) ) ||
            ( ( 'a' <= *cursor ) && ( *cursor <= 'z' ) ) ||
            ( *cursor == '-' ) ) &&
          ( guard_counter++ < MAXLINELENGTH ) ) {
    cursor++;
  }
  *cursor++ = '"';
  *cursor++ = 0;  /* Overwrite trailing blank mark with delimter.  */
  return true;
}

static bool signature( void )
{
  s4_t guard_counter = 0;
  bool rc = false;
  DEVELOPER_DEBUG( "signature %s\n", cursor );
  cursor++;
  while ( guard_counter++ < MAXLINELENGTH ) {
    if ( ( *(cursor - 3) == ' ' ) && ( *(cursor - 2) == 'i' ) && ( *(cursor - 1) == 's' ) && ( *cursor == '\n' ) ) {
      rc = true;
      break;
    } else {
      cursor++;
    }
  }
  return rc;
}

static bool code_block( void )
{
  s4_t guard_counter = 0;
  DEVELOPER_DEBUG( "code_block %s\n", cursor );
  cursor++;
  /* Capture code block into word.  */
  word[ wordindex++ ] = cursor;
  while ( guard_counter++ < MAXRECORDLENGTH ) {
    if ( ( *cursor == '\n' ) && ( *(cursor + 1) == '/' ) && ( *(cursor + 2) == '/' ) && ( *(cursor + 3) == '!' ) ) {
      *cursor++ = 0;   /* Delimit code_block (overwriting final newline).  */
      break;
    } else {
      cursor++;
    }
  }
  return true;
}

static bool activity_end( void )
{
  DEVELOPER_DEBUG( "activity_end %s\n", cursor );
  if ( parsestring( "//!" ) && parsestring( "ACTIVITY" ) && parsestring( "END." ) ) return true;
  return false;
}

static bool do_not_edit( void )
{
  DEVELOPER_DEBUG( "do_not_edit %s\n", cursor );
  if ( parsestring( "DO" ) && parsestring( "NOT" ) && parsestring( "EDIT" ) && parsestring( "THIS" ) && parsestring( "LINE." ) ) return true;
  return false;
}

/*
 * This is compatible as a callback for ftw.
 */
static int Escher_MASL_load_file( const char * filepath, const struct stat * info, const int typeflag )
{
  /*
   * Open the named file for reading.
   */
  if ( !strstr( filepath, ".masl" ) ) {
    return 0; // not a masl source file
  } else {
    if ( (xtumlfile = fopen( filepath, "r" )) == 0 ) {
      fprintf( stderr, "Could not open file:  %s\n", filepath );
      return 1;
    }
  }
  init();               /* Initialize the parser storage area.  */
  /*
   * Read a container.  Parse it.  Pass it.  Repeat until end of file.
   */
  bool done = readcontainer( &cursor ); /* Initial call reads to beginning of first record.  */
  while ( ! done ) {
    done = readcontainer( &cursor );
    if ( container() ) {
      if ( 0 != wordindex ) {
        // Update the Action_Semantics with the code blocks.
        if ( wordindex > 2 ) {
          xtuml2masl_load_activity_code_block( (c_t *) word[ 2 ], (c_t *) word[ 0 ], (c_t *) word[ 1 ] );
        } else {
          xtuml2masl_load_activity_code_block( (c_t *) word[ 1 ], (c_t *) word[ 0 ], "" );
        }
      }
    } else {
      fprintf( stderr, "warning:  MASL did not parse:  %s:%s.\n", filepath, word[ wordindex ] );
    }
  }
  fclose( xtumlfile );
  return 0;
}

void Escher_MASL_load( const char *name )
{
  /* Recursiving load from a named directory.  */
  ftw( name, Escher_MASL_load_file, 15 );
}
