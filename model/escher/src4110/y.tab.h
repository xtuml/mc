/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2011 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     SELECTONE = 258,
     SELECTANY = 259,
     SELECTMANY = 260,
     CREATEOBJ = 261,
     OF = 262,
     IF = 263,
     FOR = 264,
     TYPE = 265,
     RELATEDBY = 266,
     ELIF = 267,
     ENDFOR = 268,
     FORMAT = 269,
     FUNCTION = 270,
     ELSE = 271,
     BREAKFOR = 272,
     BAD = 273,
     PARAM = 274,
     ENDIF = 275,
     COMMENT = 276,
     WHERE = 277,
     ENDFUNCTION = 278,
     FROMINSTOF = 279,
     TEXT = 280,
     INCLUDE = 281,
     ASSIGN = 282,
     PRINTTOK = 283,
     EXITTOK = 284,
     EMIT = 285,
     CLEARTOK = 286,
     INVOKE = 287,
     IN = 288,
     UOP = 289,
     RELTRAV = 290,
     ALXLATE = 291,
     SPECIALWHERE = 292,
     DELETEOBJ = 293,
     WHILE = 294,
     ENDWHILE = 295,
     BREAKWHILE = 296,
     RELATE = 297,
     ENDRELATE = 298,
     UNRELATE = 299,
     ENDUNRELATE = 300,
     TO = 301,
     FROM = 302,
     ACROSS = 303,
     WORD = 304,
     LITERAL = 305,
     REALconstant = 306,
     INTconstant = 307,
     ARROW = 308,
     LE = 309,
     GE = 310,
     EQ = 311,
     NE = 312,
     AND = 313,
     OR = 314,
     UMINUS = 315
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


