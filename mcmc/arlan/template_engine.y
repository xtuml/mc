/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*| Title:               Archetype Parser                           |*/
/*|                                                                 |*/
/*| Abstract -                                                      |*/
/*|   This bison parser assists in the conversion of RSL to C.      |*/
/*|                                                                 |*/
/*| Notes -                                                         |*/
/* _________________________________________________________________ */

%{

#define TOKENSIZE 100
int i0 = 0;                     /* indent for current line           */
int i1 = 0;                     /* indent for next line              */
int line_number = 1;
char linestr[4096];
char a[16384];
char s[16384];
#ifdef TEMPLATE_ENGINE
static char b[128000];
char * templatebuffer = b;
char literalstr[64000] = {0};
char svar[2][256];
int svarnum = 0;
int stringmode = 0;
int backslash = 0;
char * SSS = "T_b(";
char formatcharacter = 0;
#endif

%}
%{
/*-------------------------------------------------------------------*/
#include <stdio.h>
#include <string.h>
#define YYDEBUG_LEXER_TEXT (yylval)
#define YYDEBUG 1               /* Force debugging code to compile.  */
#ifndef YYSTYPE
#define YYSTYPE char * /* Interface with flex: should be in header.  */
#endif
extern char *yytext;

#ifdef FRAG
#define FRAG_MACRO() strcpy(a,$1); a[strlen($1)-2]='\0'; printf("%sM\n",a)
#else
#define FRAG_MACRO()
#endif
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
%token RELTRAV         ALXLATE         SPECIALWHERE    DELETEOBJ
%token WHILE           ENDWHILE        BREAKWHILE
%token RELATE ENDRELATE UNRELATE ENDUNRELATE TO FROM ACROSS
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
        selectstatement
        | IF condition {strcat(b,"if ");strcat(b,$2);strcat(b," {\n");} code elifclause elseclause endiffer {strcat(b,"}\n");}
        | FUNCTION identifier
          {
          #ifdef FUN
          printf("%s", $2);
          #endif
          }
                              '\n' fparameters fbody ENDFUNCTION '\n'
        | FOR inst_ref_var IN inst_ref_set_var '\n' code endforrer
        | BREAKFOR '\n'
        | BREAKFOR comment
        | BREAKWHILE '\n'
        | WHILE condition '\n' code endwhiler
        | CLEARTOK '\n'
        | INCLUDE string '\n'
        | PRINTTOK string '\n'
        | EXITTOK sexpr '\n'
        | EMIT string '\n'
        | ASSIGN variable '=' expr '\n' /* Look for attr_XXX in here (frag).  */
        | INVOKE identifier '(' aparameters ')' '\n'
        | INVOKE frag_ref_var '=' identifier '(' aparameters ')' '\n'
        | ALXLATE activity_type inst_ref_var '\n'
        | SPECIALWHERE WORD WORD '\n'
        | CREATEOBJ inst_ref_var OF obj_keyletters '\n'
        ;

selectstatement:
        SELECTONE inst_ref_var RELATEDBY inst_chain whereclause '\n'
        | SELECTANY inst_ref_var RELATEDBY inst_chain whereclause '\n'
        | SELECTMANY inst_ref_set_var RELATEDBY inst_chain whereclause '\n'
        | SELECTANY inst_ref_var FROMINSTOF obj_keyletters whereclause '\n'
        | SELECTMANY inst_ref_set_var FROMINSTOF obj_keyletters whereclause '\n'
        ;

whereclause:
        /* empty */
        | WHERE condition
        ;

fparameters:
        /* empty */
        | fparameters PARAM TYPE param_name comment
        | fparameters PARAM TYPE param_name '\n'
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
        | elifclause ELIF condition {strcat(b,"} else if ");strcat(b,$3);strcat(b," {\n");} code
        ;

elseclause:
        /* empty */
        | elseclause ELSE {strcat(b,"} else {\n");} code
        ;

endiffer:
        ENDIF '\n'
        | ENDIF comment
        ;

endwhiler:
        ENDWHILE '\n'
        | ENDWHILE comment
        ;

endforrer:
        ENDFOR '\n'
        | ENDFOR comment
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
        RELTRAV
        | RELTRAV '.' '\'' WORD '\''
        | RELTRAV '.' RELTRAV
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
        | FORMAT /* {if ($1) formatcharacter=*$1;} */
        ;

variable:
        identifier
        | identifier '.' identifier
        | keyword               /* This practice is not recommended. */
        ;

keyword:
        UOP | TYPE | WHERE | IN | AND | OR
        ;

param_name:
        WORD
        ;

frag_ref_var:
        WORD         {FRAG_MACRO();}
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
        LITERAL literalbody '\n' {if(!backslash && !stringmode){strcat(b,SSS);strcat(b,"\"\\n\");\n");}backslash=0;}
        | '\n'
        ;

literalbody:
        /* empty */
        {if (1 && strlen(literalstr)) {strcat(b,SSS);strcat(b,"\"");strcat(b,literalstr);strcat(b,"\");");if(!stringmode)strcat(b,"\n");literalstr[0]=0;}}
        | literalbody LITERAL
        { int len = strlen( literalstr );
          if ( 0 != len ) {
            /* CDS - Here we seem to be detecting a trailing backslash.  Set a flag and then skip appending line return.  */
            if ( '\\' == literalstr[len-1] ) { literalstr[len-1]=0;backslash=1; }
            strcat(b,SSS);strcat(b,"\"");strcat(b,literalstr);strcat(b,"\");");literalstr[0]=0;
            if(!stringmode)strcat(b,"\n");
          }
        }
        | literalbody substitutionvariable
        ;

substitutionvariable:
        '$' format '{' term '}'
         {strcat(b,SSS);
          if ( '_' == formatcharacter ) {
            strcat(b,"T_underscore(");
          } else if ( 't' == formatcharacter ) {
            strcat(b,"T_s(");
          }
          strcat(b,&svar[0][0]);
          if ( svarnum > 1 ) {
            strcat(b,"->");strcat(b,&svar[1][0]);
          }
          if ( ( '_' == formatcharacter ) || ( 't' == formatcharacter ) ) {
            strcat(b,")");
          }
          strcat(b,");");
          if ( !stringmode ) strcat(b,"\n");
          svarnum = 0;
          svar[ 0 ][ 0 ] = 0;
          svar[ 1 ][ 0 ] = 0;
          formatcharacter = 0;
        }
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
  fprintf( stderr, "template_engine:  %s, at \"%s\" near line %d.\n",
    string, yytext, line_number );
}

char * template_engine( char * );
char * template_engine( char * s )
{
  //yydebug = 1;
  SSS = "T_T(";
  stringmode = 1;
  b[0]=0;
  literalstr[0]=0;
  strcat(b,"({c_t*s=Escher_strget();");
  yy_scan_string( s );
  yyparse();
  strcat(b,"})");
  stringmode = 0;
  return b;
}
