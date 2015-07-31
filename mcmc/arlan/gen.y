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

int i0 = 0;                     /* indent for current line           */
int i1 = 0;                     /* indent for next line              */
int line_number = 1;
char linestr[4096];
char a[16384] = "";
#ifdef GEN
  char b[16384] = "";
  char c[16384] = "";
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
        {printf("//.Begin\n");}
        prologue archetypebody
        {printf("//.Description\n// %s\n", c);
        printf("//.End\n");}
        ;
        ;

prologue:
        CBLOCKDELIM '\n' comments CBLOCKDELIM '\n'
        {
        temp = strstr(strstr(waiting, "File:")," ");
        waiting = strstr(temp, ",");
        *waiting = '\0';        /* "Truncate" the string.            */
        printf("//.Title %s\n", temp);
        }
                                                   comments CBLOCKDELIM '\n'
        /*-----------------------------------------------------------*/
        /* Extract out sections of the prologue for output.          */
        /*-----------------------------------------------------------*/
        {
        temp = strstr(strstr(waiting, "Purpose:")," ");
        waiting = strstr(temp, "Functions:");
        *waiting = '\0';        /* "Truncate" the string.            */
        strcpy(c, temp);
        printf("//.Synopsis\n\n");
        }
        ;

comments:
        /* empty */
        | comments COMMENT commentbody '\n'
        | comments COMMENT commentbody FROMINSTOF obj_keyletters commentbody '\n'
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
        selectstatement '\n'
        | IF condition '\n' code elifclause elseclause endiffer
        | FUNCTION identifier '\n' fparameters
        {printf("//.Member\n%s%s\n", controlstr, waiting);}
                                               fbody ENDFUNCTION '\n'
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
        | elifclause ELIF condition '\n' code
        ;

elseclause:
        /* empty */
        | elseclause ELSE '\n' code
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
int
main( int argc, char ** argv )
{
  yyparse();
}


/*
  Identity and Version Information -
  $Id: gen.y,v 1.2 2011/09/21 15:13:28 cstarret Exp $

  Revision History -
  $Log: gen.y,v $
  Revision 1.2  2011/09/21 15:13:28  cstarret
  job:dts0100794066
  The modified files are clean-ups.
  The added files provide a parser that processes RSL into a C-ish
  dialect that can be processed by doxygen.  doxygen generates
  call graphs and dependency graphs of the archetype functionality.
  ----------------------------------------------------------------------
  Enter Log.  Lines beginning with `CVS:' are removed automatically

  Committing in .

  Modified Files:
  	arlan.l arlan.y gen.l gen.y makefile.gen
  Added Files:
  	SystemC_MC_Arcs.cfg build_mc_doxygen.sh endfunction letter.txt
  	makefile.rsl2doxygen readme_doxygen.txt rsl2doxygen.l
  	rsl2doxygen.y rsl2oal.l.passthru rsl2oal.y.passthru
  ----------------------------------------------------------------------

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

 * Revision 1.2  1995/12/16  05:39:04  cort
 * Mostly changed to not have file name in main prologue.
 *
 * Revision 1.1  1995/11/16  04:36:54  cort
 * Added gen (refman tag generator) and fixed 2 in scanners.
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
