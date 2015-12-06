/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*| Title:               Archetype to OAL Conversion Parser         |*/
/*|                                                                 |*/
/*| Abstract -                                                      |*/
/*|   This bison parser assists in the conversion of RSL to OAL.    |*/
/*|                                                                 |*/
/*| Notes -                                                         |*/
/* _________________________________________________________________ */

%{

int i0 = 0;                     /* indent for current line           */
int i1 = 0;                     /* indent for next line              */
int line_number = 1;
int column;
char linestr[ 1024 ];


%}
%{
/*-------------------------------------------------------------------*/
#include <stdio.h>
#include <string.h>
#define YYDEBUG_LEXER_TEXT (yylval)
#define YYDEBUG 1               /* Force debugging code to compile.  */
#define YYSTYPE char * /* Interface with flex: should be in header.  */
extern char yytext[];
#define PY(x) printf( "%s", x );
#define TRIM(x) {char * s=x+strlen(x)-1; *s=0;}
#define P(x) printf( "%s%s", linestr, x );
#define PL printf( "%s\n", linestr );
#define PS printf( "%s;\n", linestr );
#define B(x) linestr[column-2]=x;
#define YYAPPEND(s,l)        strncat(linestr,s,l); column+=l;
extern char * dtnameid( const char *, const char * );
extern char * dtKLid( char * );
extern int dtnameindex( char * );
extern void loadtable( void );
extern void dump_insert_statements( void );
extern void stow_S_SYNC( const char * );
extern void stow_return_structure( char * );
extern void stow_parameter( char * );

/*-------------------------------------------------------------------*/
%}

%token SELECTONE       SELECTANY       SELECTMANY      CREATEOBJ
%token OF              IF              FOR             TYPE
%token RELATEDBY       ELIF            ENDFOR          FORMAT
%token FUNCTION        ELSE            BREAKFOR        BAD
%token PARAM           ENDIF           COMMENT         WHERE
%token ENDFUNCTION     FROMINSTOF      TEXT            INCLUDE
%token ASSIGN          PRINTTOK        EXITTOK         EMIT
%token CLEARTOK        INVOKE          IN              UOP
%token RELTRANS        ALXLATE         SPECIALWHERE
%token WHILE           ENDWHILE        BREAKWHILE
%token WORD            LITERAL         REALconstant    INTconstant
%token ARROW                    /*  ->                               */
%token LE GE EQ NE              /*  <=       >=        ==        !=  */
%token AND OR                   /*  and      or                      */

%left UOP
%left UMINUS
 
%start archetypeprogram

%%

archetypeprogram:
        archetypebody
        ;

comment:
        COMMENT commentbody '\n'
        ;

commentbody:
        /* empty */
        | commentbody TEXT
        ;

archetypebody:
        code
        ;

code:
        /* empty */
        | code statement
        | code comment
        | code literal
        ;

statement:
        selectstatement '\n'
        | IF condition '\n' code elifclause elseclause endiffer '\n'
        | FUNCTION identifier '\n'
          { stow_S_SYNC( $2 ); }
          fparameters fbody ENDFUNCTION '\n'
          { dump_insert_statements(); }
        | FOR inst_ref_var IN inst_ref_set_var '\n' code endforrer '\n'
        | BREAKFOR '\n'
        | BREAKFOR COMMENT commentbody '\n'
        | BREAKWHILE '\n'
        | WHILE condition '\n' code endwhiler '\n'
        | CLEARTOK '\n'
        | INCLUDE string '\n'
        | PRINTTOK string '\n'
        | EXITTOK sexpr '\n'
        | EMIT string '\n'
        | ASSIGN variable '=' expr '\n' { stow_return_structure( $2 ); }
        | INVOKE identifier '(' aparameters ')' '\n'
        | INVOKE frag_ref_var '=' identifier '(' aparameters ')' '\n'
        | ALXLATE activity_type inst_ref_var '\n'
        | SPECIALWHERE WORD WORD '\n'
        | CREATEOBJ inst_ref_var OF obj_keyletters '\n'
        ;

selectstatement:
        SELECTONE inst_ref_var RELATEDBY inst_chain whereclause
        | SELECTANY inst_ref_var RELATEDBY inst_chain whereclause
        | SELECTMANY inst_ref_set_var RELATEDBY inst_chain whereclause
        | SELECTANY inst_ref_var FROMINSTOF obj_keyletters whereclause
        | SELECTMANY inst_ref_set_var FROMINSTOF obj_keyletters whereclause
        ;

whereclause:
        /* empty */
        | WHERE condition
        ;

fparameters:
        /* empty */
        | fparameters PARAM TYPE param_name COMMENT commentbody '\n' { stow_parameter( $3 ); }
        | fparameters PARAM TYPE param_name '\n' { stow_parameter( $3 ); }
        | fparameters comment
        ;

fbody:
        /* empty */
        | statement code
        | literal code
        ;

aparameters:
        /* empty */
        | term aparameters
        | ',' term aparameters
        ;

elifclause:
        /* empty */
        | elifclause ELIF condition '\n' code
        ;

elseclause:
        /* empty */
        | elseclause ELSE '\n' code
        ;

endiffer:
        ENDIF
        | ENDIF COMMENT commentbody
        ;

endwhiler:
        ENDWHILE
        | ENDWHILE COMMENT commentbody
        ;

endforrer:
        ENDFOR
        | ENDFOR COMMENT commentbody
        ;

condition:
        '(' expr ')'
        ;

sexpr:
        UOP term
        | '-' term %prec UMINUS
        | term bop expr
        | term
        | inst_ref_set_var '|' inst_ref_set_var
        ;

expr:
        '(' expr ')'
        | UOP '(' expr ')'
        | '(' expr ')' bop expr
        | sexpr
        ;

term:
        string
        | identifier
        | substitutionvariable
        | INTconstant
        | REALconstant
        | term ARROW identifier
        | term ':' parsekeyword
        | term '.' attribute
        ;

reltraversal:
        RELTRANS
        | RELTRANS '.' '\'' WORD '\''
        | RELTRANS '.' RELTRANS
        ;

attribute:
        identifier
        ;

parsekeyword:
        identifier
        | substitutionvariable
        ;

format:
        /* empty */
        | FORMAT
        ;

variable:
        identifier
        | identifier '.' identifier
        | keyword               /* This practice is not recommended. */
        ;

keyword:
        UOP | TYPE | WHERE | IN
        ;

param_name:
        WORD
        ;

frag_ref_var:
        WORD
        ;

inst_ref_var:
        WORD
        ;

inst_ref_set_var:
        WORD
        ;

inst_chain:
        WORD
        | inst_chain ARROW WORD '[' reltraversal ']'
        ;

obj_keyletters:
        WORD
        ;

activity_type:
        WORD
        ;

identifier:
        WORD
        | WORD '[' reltraversal ']'
        ;

bop:
        LE | GE | EQ | NE | AND | OR
        | '>' | '<' | '+' | '-' | '*' | '/'
        ;

literal:
        LITERAL literalbody '\n'
        | '\n'
        ;

literalbody:
        /* empty */
        | literalbody LITERAL
        | literalbody substitutionvariable
        ;

substitutionvariable:
        '$' format '{' term '}'
        ;


string:
        '"' stringbody '"'
        ;

stringbody:
        /* empty */
        | stringbody TEXT
        | stringbody WORD
        | stringbody substitutionvariable
        ;

%%

/*===================================================================*/
/* Error recovery routine.                                           */
/*===================================================================*/
yyerror(char *string)
{
  printf("rsl2func:  %s, at \"%s\" near line %d.\n",
    string, yytext, line_number );
}

/*===================================================================*/
/* Dummy main program to call yyparse.                               */
/*===================================================================*/
int
main( int argc, char ** argv )
{
  loadtable();
  yyparse();
}

