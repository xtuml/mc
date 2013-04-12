/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
/*| MGC Confidential                                                |*/
/*| Property of Mentor Graphics Corp.                               |*/
/*| (C) Copyright Mentor Graphics Corp.  (2006-2008)                |*/
/* _________________________________________________________________ */
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
int skip = 0;

%}
%{
/*-------------------------------------------------------------------*/
#include <stdio.h>
#include <string.h>
#define YYDEBUG_LEXER_TEXT (yylval)
#define YYDEBUG 1               /* Force debugging code to compile.  */
#define YYSTYPE char * /* Interface with flex: should be in header.  */
extern char yytext[];
#define P(x) strncat(bp,linestr,1024);strncat(bp,x,1024);bp=bp+strlen(linestr)+strlen(x);
#define PL strncat(bp,linestr,1024); strcat(bp,"\n"); bp+=strlen(linestr)+1;
#define PS strncat(bp,linestr,1024); strcat(bp,";\n"); bp+=strlen(linestr)+2;
#define PI(x) insert_double_colon( x );
#define POAL printf( "%s", oalbuffer ); bp = oalbuffer;
#define YYAPPEND(s,l) strncat(linestr,s,l); column+=l;


char oalbuffer[ 128000 ];
char * bp = oalbuffer;

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
%token RELTRANS        ALXLATE         SPECIALWHERE    DELETEOBJ
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
        COMMENT commentbody '\n' {PL}
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
        selectstatement '\n' {PS}
        | IF condition '\n' {PL} code elifclause elseclause endiffer '\n' {PS}
        | FUNCTION identifier '\n' {PL} fparameters fbody ENDFUNCTION '\n' {PL POAL}
        | FOR inst_ref_var IN inst_ref_set_var '\n' {PL} code endforrer '\n' {PS}
        | BREAKFOR '\n' {PS}
        | BREAKFOR COMMENT commentbody '\n' {PL}
        | BREAKWHILE '\n' {PS}
        | WHILE condition '\n' {PL} code endwhiler '\n' {PS}
        | CLEARTOK '\n' {PL}
        | INCLUDE string '\n' {P(" );\n")}
        | PRINTTOK string '\n' {P(" );\n")}
        | EXITTOK sexpr '\n' {P(" );\n")}
        | EMIT string '\n' {P(" );\n")}
        | ASSIGN variable '=' expr '\n' {if (!skip) { PS }}
        | INVOKE identifier '(' aparameters ')' '\n' {PS}
        | INVOKE frag_ref_var '=' identifier '(' aparameters ')' '\n' {PS}
        | ALXLATE activity_type inst_ref_var '\n' {PL}
        | SPECIALWHERE WORD WORD '\n' {PL}
        | CREATEOBJ inst_ref_var OF obj_keyletters '\n' {PS}
        | DELETEOBJ inst_ref_var ';' '\n' {PS}
        | RELATE inst_ref_var TO inst_ref_var ACROSS WORD ';' '\n' {PS skip=1;} code ENDRELATE '\n' {PL skip=0;}
        | UNRELATE inst_ref_var FROM inst_ref_var ACROSS WORD ';' '\n' {PS skip=1;} code ENDUNRELATE '\n' {PL skip=0;}
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
        | fparameters PARAM TYPE param_name COMMENT commentbody '\n' {PL}
        | fparameters PARAM TYPE param_name '\n' {PL}
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
        | elifclause ELIF condition '\n' {PL} code
        ;

elseclause:
        /* empty */
        | elseclause ELSE '\n' {PL} code
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
        LITERAL literalbody '\n' {PL}
        | '\n' {PL}
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
        | stringbody {linestr[column-3]=' '} substitutionvariable
        ;

%%

/*===================================================================*/
/* Error recovery routine.                                           */
/*===================================================================*/
yyerror(char *string)
{
  fprintf( stderr, "rsl2oal:  %s, at \"%s\" near line %d.\n",
    string, yytext, line_number );
}

/*===================================================================*/
/* main program to call yyparse                                      */
/*===================================================================*/
int
main( int argc, char ** argv )
{
  yyparse();
}

