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
#ifdef GEN
  char b[16384];
  char c[16384];
  char controlstr[4096];
  char *waiting = a;
  char *appending = b;
  char *temp;
#endif

%}
%{
/*-------------------------------------------------------------------*/
#include <stdio.h>
#include <string.h>
#define YYDEBUG_LEXER_TEXT (yylval)
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

%token SELECTONE       SELECTANY       SELECTMANY
%token CBLOCKDELIM     IF              FOR             TYPE
%token RELATEDBY       ELIF            ENDFOR          FORMAT
%token FUNCTION        ELSE            BREAKFOR        BAD
%token PARAM           ENDIF           COMMENT         WHERE
%token ENDFUNCTION     FROMINSTOF      TEXT            INCLUDE
%token ASSIGN          PRINTTOK        EXITTOK         EMIT
%token CLEARTOK        INVOKE          IN              UOP
%token RELTRANS        ALXLATE         INSTANCESM      ASSIGNERSM
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
        | CBLOCKDELIM '\n'
        /* This may be used as a hack to document PARAMs.            */
        | COMMENT commentbody FROMINSTOF obj_keyletters commentbody '\n'
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
        | IF condition code elifclause elseclause endiffer
        | FUNCTION identifier
          {
          #ifdef FUN
          printf("%s", $2);
          #endif
          }
                              '\n' fparameters fbody ENDFUNCTION '\n'
        | FOR inst_ref_var IN inst_ref_set_var '\n' code ENDFOR '\n'
        | BREAKFOR '\n'
        | BREAKWHILE '\n'
        | WHILE condition '\n' code ENDWHILE '\n'
        | CLEARTOK '\n'
        | INCLUDE string '\n'
        | PRINTTOK string '\n'
        | EXITTOK sexpr '\n'
        | EMIT string '\n'
        | ASSIGN variable '=' expr '\n' /* Look for attr_XXX in here (frag).  */
        | INVOKE identifier '(' aparameters ')' '\n'
        | INVOKE frag_ref_var '=' identifier '(' aparameters ')' '\n'
        | ALXLATE INSTANCESM inst_ref_var '\n'
        | ALXLATE ASSIGNERSM inst_ref_var '\n'
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
        | elifclause ELIF condition code
        ;

elseclause:
        /* empty */
        | elseclause ELSE code
        ;

endiffer:
        ENDIF '\n'
        | ENDIF comment
        ;

condition:
        '(' expr ')'
        ;

sexpr:
        UOP term
        | '-' term %prec UMINUS
        | term bop expr
        | term
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

reltransversal:
        RELTRANS
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
        | inst_chain ARROW WORD '[' reltransversal ']'        { printf( "%s\n", $3 ); }
        ;

obj_keyletters:
        WORD        { printf( "%s\n", $1 ); }
        ;

identifier:
        WORD
        | WORD '[' reltransversal ']'
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
  printf("arlan:  %s, at \"%s\" near line %d.\n",
    string, yytext, line_number );
}


/*===================================================================*/
/* Dummy main program to call yyparse.                               */
/*===================================================================*/
main()
{
  yyparse();
}


/*
  Identity and Version Information -
  $Id: classes.y,v 1.1 2006/03/28 18:35:13 cstarret Exp $

  Revision History -
  $Log: classes.y,v $
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
