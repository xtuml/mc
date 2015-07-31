/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*| Title:               Archetype Parser                           |*/
/*|                                                                 |*/
/*| Abstract -                                                      |*/
/*|   This bison parser assists in the conversion of RSL to C.      |*/
/*|                                                                 |*/
/*| Notes -                                                         |*/
/* _________________________________________________________________ */

#include <stdio.h>
#include <string.h>

extern char * template_engine( char * );
extern int yyparse( void );
extern char * templatebuffer;

int
main( int argc, char ** argv )
{
  char b[1024];
  if ( argc > 1 ) {
    if ( 0==strcmp(argv[1],"in.txt")) {
      FILE * f = fopen( argv[1], "r" );
      while ( fgets( b, 1024, f ) ) {
        char * s;
        int len = strlen(b);
        b[len-1]=0;
        s = template_engine( b );
        printf("%s\n",s);
      }
    } else {
      strncpy(b,argv[1],1024-1);strcat(b,"\n");
      char * s = template_engine( b );
      printf("%s\n",s);
    }
  } else {
    yyparse();
    printf("%s",templatebuffer);
  }
}

