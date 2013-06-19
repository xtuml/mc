/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*| MGC Confidential                                                |*/
/*| Property of Mentor Graphics Corp.                               |*/
/*| (C) Copyright Mentor Graphics Corp.  (2006-2009)                |*/
/* _________________________________________________________________ */
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*| Title:               Archetype Parser                           |*/
/*|                                                                 |*/
/*| Abstract -                                                      |*/
/*|   This is the yacc source file for the archetype action         |*/
/*|   language parser.                                              |*/
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
char literalstr[64000];
char svar[2][256];
int svarnum = 0;
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
        selectstatement
        | IF condition {printf("if %s {\n",$2);} code elifclause elseclause endiffer {printf("}\n");}
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
        | elifclause ELIF condition {printf("} else if %s {\n",$3);} code
        ;

elseclause:
        /* empty */
        | elseclause ELSE {printf("} else {\n");} code
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
        { formatcharacter = *$1; }
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
        LITERAL literalbody '\n'
        { if ( strlen( literalstr ) == 0 ) {
          printf( "T_b( \"\\n\" );\n" );
        } else {
          printf("T_b( \"%s\" );\n", literalstr);
        }}
        | '\n'
        ;

literalbody:
        /* empty */
        | literalbody LITERAL
        { printf( "T_b( \"%s\" );\n", literalstr ); }
        | literalbody substitutionvariable
        ;

substitutionvariable:
        '$' format '{' term '}'
        { if ( '_' == formatcharacter ) {
            printf( "T_underscore( T_xmlify( %s", &svar[ 0 ][ 0 ] );
          } else if ( 's' == formatcharacter ) {
            printf( "T_b( T_s( %s", &svar[ 0 ][ 0 ] );
          } else {
            printf( "T_b( T_xmlify( %s", &svar[ 0 ][ 0 ] );
          }
          formatcharacter = 0;
          if ( svarnum > 1 ) {
            printf( "->%s", &svar[ 1 ][ 0 ] );
          }
          printf( " ) );\n" );
          svarnum = 0;
          svar[ 0 ][ 0 ] = 0;
          svar[ 1 ][ 0 ] = 0;
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
  printf("arlan:  %s, at \"%s\" near line %d.\n",
    string, yytext, line_number );
}


/*===================================================================*/
/* Dummy main program to call yyparse.                               */
/*===================================================================*/
int
main( int argc, char ** argv )
{
  yyparse();
}


/*
  Identity and Version Information -
  $Id: template_engine.y,v 1.3 2009/11/25 15:34:16 cstarret Exp $

  Revision History -
  $Log: template_engine.y,v $
  Revision 1.3  2009/11/25 15:34:16  cstarret
  job:dts0100624946
  Updating with latest template engine for conversion for mc3020.
  ----------------------------------------------------------------------
  Modified Files:
  template_engine.l template_engine.y
  ----------------------------------------------------------------------

  Revision 1.2  2008/09/03 21:12:30  cstarret
  job:3371
  Adding parser to build SQL inserts for functions, parameters
  and return structured data types.
  Updating rsl2oal parser.

  Revision 1.1  2006/03/28 18:35:13  cstarret
  Job:1865
  Adding arlan to CVS.
   ----------------------------------------------------------------------
   Added Files:
   	arlan.l arlan.y classes.l classes.y fold.l gen.l gen.y
   	makefile.arl makefile.arlan makefile.classes makefile.fol
   	makefile.fra makefile.fun makefile.gen makefile.ind
   	makefile.template template_engine.l template_engine.y
   ----------------------------------------------------------------------

 * Revision 1.15  1995/11/17  03:26:22  cort
 * Supported formatting output (indenting).
 *
 * Revision 1.14  1995/11/16  04:35:31  cort
 * Added while statement and enhanced capabilities.
 *
 * Revision 1.13  1995/11/03  03:57:07  cort
 * Enhanced while working on refman tag generator.
 *
 * Revision 1.12  1995/10/04  05:44:46  cort
 * Added support for comments between PARAMs.
 * Re-enabled recognition of FROM INSTANCES OF in comments.
 *
 * Revision 1.11  1995/09/27  05:58:15  cort
 * Improved specificity in "identifier" like tokens.
 *
 * Revision 1.10  1995/09/22  04:47:49  cort
 * Fully functional.  Shipping to PT.
 *
*/
