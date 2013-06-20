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
#ifndef YYSTYPE
#define YYSTYPE char * /* Interface with flex: should be in header.  */
#endif
extern char yytext[];
#define P(x) strncat(bp,linestr,1024);strncat(bp,x,1024);bp=bp+strlen(linestr)+strlen(x);
#define PL strncat(bp,linestr,1024); strcat(bp,"\n"); bp+=strlen(linestr)+1;
#define PS strncat(bp,linestr,1024); strcat(bp,";\n"); bp+=strlen(linestr)+2;
#define PI(x) insert_double_colon( x );
#define POAL printf( "%s", oalbuffer ); bp = oalbuffer; oalbuffer[0]=0;
#define YYAPPEND(s,l) strncat(linestr,s,l); column+=l;

#define P0 ""
#define P1(a) a
#define P2(a,b) stradd( a, b )
#define P3(a,b,c) stradd( P2( a, b ), c )
#define P4(a,b,c,d) stradd( P3( a, b, c ), d )
#define P5(a,b,c,d,e) stradd( P4( a, b, c, d ), e )
#define P6(a,b,c,d,e,f) stradd( P5( a, b, c, d, e ), f )
#define P7(a,b,c,d,e,f,g) stradd( P6( a, b, c, d, e, f ), g )
#define P8(a,b,c,d,e,f,g,h) stradd( P7( a, b, c, d, e, f, g ), h )
#define P9(a,b,c,d,e,f,g,h,i) stradd( P8( a, b, c, d, e, f, g, h ), i )
#define P10(a,b,c,d,e,f,g,h,i,j) stradd( P9( a, b, c, d, e, f, g, h, i ), j )
#define P11(a,b,c,d,e,f,g,h,i,j,k) stradd( P10( a, b, c, d, e, f, g, h, i, j ), k )
#define P12(a,b,c,d,e,f,g,h,i,j,k,l) stradd( P11( a, b, c, d, e, f, g, h, i, j, k ), l )

char oalbuffer[ 128000 ];
char * bp = oalbuffer;
char * stradd( char *, char * );

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
        archetypebody { printf( "%s", $1 ); }
        ;

comment:
        COMMENT commentbody '\n' {$$=P3($1,$2,$3);}
        ;

commentbody:
        /* empty */ {$$=P0;}
        | commentbody TEXT {$$=P2($1,$2);}
        ;

archetypebody:
        code
        ;

code:
        /* empty */ {$$=P0;}
        | code statement {$$=P2($1,$2);}
        | code comment {$$=P2($1,$2);}
        | code literal {$$=P2($1,$2);}
        ;

statement:
        selectstatement '\n' {$$=P2($1,$2);}
        | IF condition '\n' code elifclause elseclause endiffer '\n' {$$=P8($1,$2,$3,$4,$5,$6,$7,$8);}
        | FUNCTION identifier '\n' fparameters fbody ENDFUNCTION '\n' {$$=P7($1,$2,$3,$4,$5,$6,$7);}
        | FOR inst_ref_var IN inst_ref_set_var '\n' code endforrer '\n' {$$=P8($1,$2,$3,$4,$5,$6,$7,$8);}
        | BREAKFOR '\n' {$$=P2($1,$2);}
        | BREAKFOR COMMENT commentbody '\n' {$$=P4($1,$2,$3,$4);}
        | BREAKWHILE '\n' {$$=P2($1,$2);}
        | WHILE condition '\n' code endwhiler '\n' {$$=P6($1,$2,$3,$4,$5,$6);}
        | CLEARTOK '\n' {$$=P2($1,$2);}
        | INCLUDE string '\n' {$$=P3($1,$2,$3);}
        | PRINTTOK string '\n' {$$=P3($1,$2,$3);}
        | EXITTOK sexpr '\n' {$$=P3($1,$2,$3);}
        | EMIT string '\n' {$$=P3($1,$2,$3);}
        | ASSIGN variable '=' expr '\n' {$$=P5($1,$2,$3,$4,$5);}
        | INVOKE identifier '(' aparameters ')' '\n' {$$=P6($1,$2,$3,$4,$5,$6);}
        | INVOKE frag_ref_var '=' identifier '(' aparameters ')' '\n' {$$=P8($1,$2,$3,$4,$5,$6,$7,$8);}
        | ALXLATE activity_type inst_ref_var '\n' {$$=P4($1,$2,$3,$4);}
        | SPECIALWHERE WORD WORD '\n' {$$=P4($1,$2,$3,$4);}
        | CREATEOBJ inst_ref_var OF obj_keyletters '\n' {$$=P5($1,$2,$3,$4,$5);}
        | DELETEOBJ inst_ref_var ';' '\n' {$$=P4($1,$2,$3,$4);}
        | RELATE inst_ref_var TO inst_ref_var ACROSS reltraversal ';' '\n' code ENDRELATE '\n' {$$=P11($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11);}
        | UNRELATE inst_ref_var FROM inst_ref_var ACROSS reltraversal ';' '\n' code ENDUNRELATE '\n' {$$=P11($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11);}
        ;

selectstatement:
        SELECTONE inst_ref_var RELATEDBY inst_chain whereclause {$$=P5($1,$2,$3,$4,$5);}
        | SELECTANY inst_ref_var RELATEDBY inst_chain whereclause {$$=P5($1,$2,$3,$4,$5);}
        | SELECTMANY inst_ref_set_var RELATEDBY inst_chain whereclause {$$=P5($1,$2,$3,$4,$5);}
        | SELECTANY inst_ref_var FROMINSTOF obj_keyletters whereclause {$$=P5($1,$2,$3,$4,$5);}
        | SELECTMANY inst_ref_set_var FROMINSTOF obj_keyletters whereclause {$$=P5($1,$2,$3,$4,$5);}
        ;

whereclause:
        /* empty */ {$$=P0;}
        | WHERE condition {$$=P2($1,$2);}
        ;

fparameters:
        /* empty */ {$$=P0;}
        | fparameters PARAM TYPE param_name COMMENT commentbody '\n' {$$=P7($1,$2,$3,$4,$5,$6,$7);}
        | fparameters PARAM TYPE param_name '\n' {$$=P4($1,$2,$3,$4);}
        | fparameters comment {$$=P2($1,$2);}
        ;

fbody:
        /* empty */ {$$=P0;}
        | statement code {$$=P2($1,$2);}
        | literal code {$$=P2($1,$2);}
        ;

aparameters:
        /* empty */ {$$=P0;}
        | term aparameters {$$=P2($1,$2);}
        | ',' term aparameters {$$=P3($1,$2,$3);}
        ;

elifclause:
        /* empty */ {$$=P0;}
        | elifclause ELIF condition '\n' code {$$=P5($1,$2,$3,$4,$5);}
        ;

elseclause:
        /* empty */ {$$=P0;}
        | elseclause ELSE '\n' code {$$=P4($1,$2,$3,$4);}
        ;

endiffer:
        ENDIF
        | ENDIF COMMENT commentbody {$$=P3($1,$2,$3);}
        ;

endwhiler:
        ENDWHILE
        | ENDWHILE COMMENT commentbody {$$=P3($1,$2,$3);}
        ;

endforrer:
        ENDFOR
        | ENDFOR COMMENT commentbody {$$=P3($1,$2,$3);}
        ;

condition:
        '(' expr ')' {$$=P3($1,$2,$3);}
        ;

sexpr:
        UOP term {$$=P2($1,$2);}
        | '-' term %prec UMINUS {$$=P2($1,$2);}
        | term bop expr {$$=P3($1,$2,$3);}
        | term
        | inst_ref_set_var '|' inst_ref_set_var
        ;

expr:
        '(' expr ')' {$$=P3($1,$2,$3);}
        | UOP '(' expr ')' {$$=P4($1,$2,$3,$4);}
        | '(' expr ')' bop expr {$$=P5($1,$2,$3,$4,$5);}
        | sexpr
        ;

term:
        string
        | identifier
        | substitutionvariable
        | INTconstant
        | REALconstant
        | term ARROW identifier {$$=P3($1,$2,$3);}
        | term ':' parsekeyword {$$=P3($1,$2,$3);}
        | term '.' attribute {$$=P3($1,$2,$3);}
        ;

reltraversal:
        RELTRAV
        | RELTRAV '.' '\'' WORD '\'' {$$=P5($1,$2,$3,$4,$5);}
        | RELTRAV '.' RELTRAV {$$=P3($1,$2,$3);}
        ;

attribute:
        identifier
        ;

parsekeyword:
        identifier
        | substitutionvariable
        ;

format:
        /* empty */ {$$=P0;}
        | FORMAT
        ;

variable:
        identifier
        | identifier '.' identifier {$$=P3($1,$2,$3);}
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
        | inst_chain ARROW WORD '[' reltraversal ']' {$$=P6($1,$2,$3,$4,$5,$6);}
        ;

obj_keyletters:
        WORD
        ;

activity_type:
        WORD
        ;

identifier:
        WORD
        | WORD '[' reltraversal ']' {$$=P4($1,$2,$3,$4);}
        ;

bop:
        LE | GE | EQ | NE | AND | OR
        | '>' | '<' | '+' | '-' | '*' | '/'
        ;

literal:
        LITERAL literalbody '\n' {$$=P3($1,$2,$3);}
        | '\n'
        ;

literalbody:
        /* empty */ {$$=P0;}
        | literalbody LITERAL {$$=P2($1,$2);}
        | literalbody substitutionvariable {$$=P2($1,$2);}
        ;

substitutionvariable:
        '$' format '{' term '}' {$$=P5($1,$2,$3,$4,$5);}
        ;


string:
        '"' stringbody '"' {$$=P3($1,$2,$3);}
        ;

stringbody:
        /* empty */ {$$=P0;}
        | stringbody TEXT {$$=P2($1,$2);}
        | stringbody WORD {$$=P2($1,$2);}
        | stringbody substitutionvariable {$$=P2($1,$2);}
        ;

%%

char *
stradd( char * s1, char * s2 )
{
  int len1 = strlen( s1 );
  int len2 = strlen( s2 );
  char * s = malloc( len1 + len2 );
  if ( s ) {
    strcat( s, s1 );
    strcat( s, s2 );
  } else {
    printf( "Failed to allocate memory.\n" );
  }
  return s;
}

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

