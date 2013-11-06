/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison implementation for Yacc-like parsers in C
   
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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.5"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* Using locations.  */
#define YYLSP_NEEDED 0



/* Copy the first part of user declarations.  */

/* Line 268 of yacc.c  */
#line 15 "template_engine.y"


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


/* Line 268 of yacc.c  */
#line 37 "template_engine.y"

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


/* Line 268 of yacc.c  */
#line 115 "template_engine.tab.c"

/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif


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


/* Copy the second part of user declarations.  */


/* Line 343 of yacc.c  */
#line 217 "template_engine.tab.c"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int yyi)
#else
static int
YYID (yyi)
    int yyi;
#endif
{
  return yyi;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
	Stack = &yyptr->Stack_alloc;					\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  4
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   379

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  82
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  45
/* YYNRULES -- Number of rules.  */
#define YYNRULES  128
/* YYNRULES -- Number of states.  */
#define YYNSTATES  249

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   315

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
      61,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,    81,     2,    78,     2,     2,    70,
      63,    64,    76,    75,    65,    66,    69,    77,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    68,     2,
      74,    62,    73,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    71,     2,    72,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    79,    67,    80,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     5,     9,    10,    13,    15,    16,    19,
      22,    25,    27,    28,    36,    37,    46,    54,    57,    60,
      63,    69,    72,    76,    80,    84,    88,    94,   101,   110,
     115,   120,   126,   133,   140,   147,   154,   161,   162,   165,
     166,   172,   178,   181,   182,   185,   188,   189,   192,   196,
     197,   198,   204,   205,   206,   211,   214,   217,   220,   223,
     226,   229,   233,   236,   239,   243,   245,   249,   253,   258,
     264,   266,   268,   270,   272,   274,   276,   280,   284,   288,
     290,   296,   300,   302,   304,   306,   307,   309,   311,   315,
     317,   319,   321,   323,   325,   327,   329,   331,   333,   335,
     337,   339,   346,   348,   350,   352,   357,   359,   361,   363,
     365,   367,   369,   371,   373,   375,   377,   379,   381,   385,
     387,   388,   391,   394,   400,   404,   405,   408,   411
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      83,     0,    -1,    86,    -1,    21,    85,    61,    -1,    -1,
      85,    25,    -1,    87,    -1,    -1,    87,    88,    -1,    87,
      84,    -1,    87,   122,    -1,    91,    -1,    -1,     8,   103,
      89,    87,    96,    98,   100,    -1,    -1,    15,   120,    90,
      61,    93,    94,    23,    61,    -1,     9,   115,    33,   116,
      61,    87,   102,    -1,    17,    61,    -1,    17,    84,    -1,
      41,    61,    -1,    39,   103,    61,    87,   101,    -1,    31,
      61,    -1,    26,   125,    61,    -1,    28,   125,    61,    -1,
      29,   104,    61,    -1,    30,   125,    61,    -1,    27,   111,
      62,   105,    61,    -1,    32,   120,    63,    95,    64,    61,
      -1,    32,   114,    62,   120,    63,    95,    64,    61,    -1,
      36,   119,   115,    61,    -1,    37,    49,    49,    61,    -1,
       6,   115,     7,   118,    61,    -1,     3,   115,    11,   117,
      92,    61,    -1,     4,   115,    11,   117,    92,    61,    -1,
       5,   116,    11,   117,    92,    61,    -1,     4,   115,    24,
     118,    92,    61,    -1,     5,   116,    24,   118,    92,    61,
      -1,    -1,    22,   103,    -1,    -1,    93,    19,    10,   113,
      84,    -1,    93,    19,    10,   113,    61,    -1,    93,    84,
      -1,    -1,    88,    87,    -1,   122,    87,    -1,    -1,   106,
      95,    -1,    65,   106,    95,    -1,    -1,    -1,    96,    12,
     103,    97,    87,    -1,    -1,    -1,    98,    16,    99,    87,
      -1,    20,    61,    -1,    20,    84,    -1,    40,    61,    -1,
      40,    84,    -1,    13,    61,    -1,    13,    84,    -1,    63,
     105,    64,    -1,    34,   106,    -1,    66,   106,    -1,   106,
     121,   105,    -1,   106,    -1,   116,    67,   116,    -1,    63,
     105,    64,    -1,    34,    63,   105,    64,    -1,    63,   105,
      64,   121,   105,    -1,   104,    -1,   125,    -1,   120,    -1,
     124,    -1,    52,    -1,    51,    -1,   106,    53,   120,    -1,
     106,    68,   109,    -1,   106,    69,   108,    -1,    35,    -1,
      35,    69,    70,    49,    70,    -1,    35,    69,    35,    -1,
     120,    -1,   120,    -1,   124,    -1,    -1,    14,    -1,   120,
      -1,   120,    69,   120,    -1,   112,    -1,    34,    -1,    10,
      -1,    22,    -1,    33,    -1,    58,    -1,    59,    -1,    49,
      -1,    49,    -1,    49,    -1,    49,    -1,    49,    -1,   117,
      53,    49,    71,   107,    72,    -1,    49,    -1,    49,    -1,
      49,    -1,    49,    71,   107,    72,    -1,    54,    -1,    55,
      -1,    56,    -1,    57,    -1,    58,    -1,    59,    -1,    73,
      -1,    74,    -1,    75,    -1,    66,    -1,    76,    -1,    77,
      -1,    50,   123,    61,    -1,    61,    -1,    -1,   123,    50,
      -1,   123,   124,    -1,    78,   110,    79,   106,    80,    -1,
      81,   126,    81,    -1,    -1,   126,    25,    -1,   126,    49,
      -1,   126,   124,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    80,    80,    84,    87,    89,    93,    96,    98,    99,
     100,   104,   105,   105,   107,   106,   113,   114,   115,   116,
     117,   118,   119,   120,   121,   122,   123,   124,   125,   126,
     127,   128,   132,   133,   134,   135,   136,   139,   141,   144,
     146,   147,   148,   151,   153,   154,   157,   159,   160,   163,
     165,   165,   168,   170,   170,   174,   175,   179,   180,   184,
     185,   189,   193,   194,   195,   196,   197,   201,   202,   203,
     204,   208,   209,   210,   211,   212,   213,   214,   215,   219,
     220,   221,   225,   229,   230,   233,   235,   239,   240,   241,
     245,   245,   245,   245,   245,   245,   249,   253,   257,   261,
     265,   266,   270,   274,   278,   279,   283,   283,   283,   283,
     283,   283,   284,   284,   284,   284,   284,   284,   288,   289,
     294,   295,   304,   308,   333,   336,   338,   339,   340
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "SELECTONE", "SELECTANY", "SELECTMANY",
  "CREATEOBJ", "OF", "IF", "FOR", "TYPE", "RELATEDBY", "ELIF", "ENDFOR",
  "FORMAT", "FUNCTION", "ELSE", "BREAKFOR", "BAD", "PARAM", "ENDIF",
  "COMMENT", "WHERE", "ENDFUNCTION", "FROMINSTOF", "TEXT", "INCLUDE",
  "ASSIGN", "PRINTTOK", "EXITTOK", "EMIT", "CLEARTOK", "INVOKE", "IN",
  "UOP", "RELTRAV", "ALXLATE", "SPECIALWHERE", "DELETEOBJ", "WHILE",
  "ENDWHILE", "BREAKWHILE", "RELATE", "ENDRELATE", "UNRELATE",
  "ENDUNRELATE", "TO", "FROM", "ACROSS", "WORD", "LITERAL", "REALconstant",
  "INTconstant", "ARROW", "LE", "GE", "EQ", "NE", "AND", "OR", "UMINUS",
  "'\\n'", "'='", "'('", "')'", "','", "'-'", "'|'", "':'", "'.'", "'\\''",
  "'['", "']'", "'>'", "'<'", "'+'", "'*'", "'/'", "'$'", "'{'", "'}'",
  "'\"'", "$accept", "archetypeprogram", "comment", "commentbody",
  "archetypebody", "code", "statement", "$@1", "$@2", "selectstatement",
  "whereclause", "fparameters", "fbody", "aparameters", "elifclause",
  "$@3", "elseclause", "$@4", "endiffer", "endwhiler", "endforrer",
  "condition", "sexpr", "expr", "term", "reltraversal", "attribute",
  "parsekeyword", "format", "variable", "keyword", "param_name",
  "frag_ref_var", "inst_ref_var", "inst_ref_set_var", "inst_chain",
  "obj_keyletters", "activity_type", "identifier", "bop", "literal",
  "literalbody", "substitutionvariable", "string", "stringbody", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,    10,    61,    40,    41,    44,    45,   124,    58,    46,
      39,    91,    93,    62,    60,    43,    42,    47,    36,   123,
     125,    34
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    82,    83,    84,    85,    85,    86,    87,    87,    87,
      87,    88,    89,    88,    90,    88,    88,    88,    88,    88,
      88,    88,    88,    88,    88,    88,    88,    88,    88,    88,
      88,    88,    91,    91,    91,    91,    91,    92,    92,    93,
      93,    93,    93,    94,    94,    94,    95,    95,    95,    96,
      97,    96,    98,    99,    98,   100,   100,   101,   101,   102,
     102,   103,   104,   104,   104,   104,   104,   105,   105,   105,
     105,   106,   106,   106,   106,   106,   106,   106,   106,   107,
     107,   107,   108,   109,   109,   110,   110,   111,   111,   111,
     112,   112,   112,   112,   112,   112,   113,   114,   115,   116,
     117,   117,   118,   119,   120,   120,   121,   121,   121,   121,
     121,   121,   121,   121,   121,   121,   121,   121,   122,   122,
     123,   123,   123,   124,   125,   126,   126,   126,   126
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     3,     0,     2,     1,     0,     2,     2,
       2,     1,     0,     7,     0,     8,     7,     2,     2,     2,
       5,     2,     3,     3,     3,     3,     5,     6,     8,     4,
       4,     5,     6,     6,     6,     6,     6,     0,     2,     0,
       5,     5,     2,     0,     2,     2,     0,     2,     3,     0,
       0,     5,     0,     0,     4,     2,     2,     2,     2,     2,
       2,     3,     2,     2,     3,     1,     3,     3,     4,     5,
       1,     1,     1,     1,     1,     1,     3,     3,     3,     1,
       5,     3,     1,     1,     1,     0,     1,     1,     3,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     6,     1,     1,     1,     4,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     3,     1,
       0,     2,     2,     5,     3,     0,     2,     2,     2
};

/* YYDEFACT[STATE-NAME] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       7,     0,     2,     6,     1,     0,     0,     0,     0,     0,
       0,     0,     0,     4,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   120,   119,     9,     8,    11,
      10,    98,     0,     0,    99,     0,     0,     0,    12,     0,
     104,    14,    17,    18,     0,   125,     0,    91,    92,    93,
      90,    94,    95,     0,    89,    87,     0,     0,   104,    75,
      74,     0,    85,     0,    65,     0,    72,    73,    71,     0,
      21,    97,     0,     0,   103,     0,     0,     0,    19,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    70,     0,
       7,     0,     0,     0,     5,     3,     0,    22,     0,     0,
      23,    62,    63,    86,     0,    24,     0,   106,   107,   108,
     109,   110,   111,   115,     0,     0,   112,   113,   114,   116,
     117,     0,     0,    25,     0,    46,     0,     0,     7,   121,
     118,   122,   100,    37,    37,   102,    37,    37,    37,     0,
       0,     0,    61,    49,     0,    79,     0,    39,   126,   127,
     124,   128,     0,    88,     0,    76,    77,    83,    84,    78,
      82,    64,    66,     0,     0,     0,    46,    29,    30,     0,
       0,     0,     0,     0,     0,     0,     0,    31,     0,    67,
      52,     7,     0,   105,    43,    26,     0,    46,    46,     0,
      47,     0,    20,    38,     0,    32,    33,    35,    34,    36,
      68,     0,     0,     0,     0,    81,     0,     0,    42,     7,
       0,     7,   123,     0,    48,    27,    57,    58,     0,    69,
      50,    53,     0,    13,     0,    16,     0,     0,    44,     0,
      45,     0,     0,     7,     7,    55,    56,    59,    60,    80,
      96,     0,    15,    28,   101,    51,    54,    41,    40
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     1,    27,    44,     2,     3,    28,    90,    93,    29,
     172,   184,   210,   165,   180,   233,   203,   234,   223,   192,
     225,    38,    88,    89,    64,   146,   159,   156,   104,    53,
      54,   241,    72,    32,    65,   133,   136,    75,    66,   121,
      30,    79,    67,    68,    96
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -97
static const yytype_int16 yypact[] =
{
     -97,    13,   -97,   269,   -97,     6,     6,    34,     6,   -14,
       6,    52,     3,   -97,   -23,    -5,   -23,    16,   -23,    12,
      53,    59,    71,   -14,    64,   -97,   -97,   -97,   -97,   -97,
     -97,   -97,   119,    -2,   -97,    79,   129,   -18,   -97,   104,
      70,   -97,   -97,   -97,    -4,   -97,    81,   -97,   -97,   -97,
     -97,   -97,   -97,    85,   -97,    74,    95,   149,    68,   -97,
     -97,   149,   143,    97,   278,    94,   -97,   -97,   -97,   105,
     -97,   -20,   107,   108,   -97,     6,   121,   114,   -97,    -9,
     133,   133,   134,   133,   134,   134,    35,   -18,   -97,   122,
     -97,    34,   150,   126,   -97,   -97,   -19,   -97,   -18,    52,
     -97,    36,    36,   -97,   109,   -97,    52,   -97,   -97,   -97,
     -97,   -97,   -97,   -97,   -31,    52,   -97,   -97,   -97,   -97,
     -97,   -18,    34,   -97,    52,   116,   128,   138,   -97,   -97,
     -97,   -97,   -97,    24,    24,   -97,   181,    24,   181,   144,
     -18,   145,   -97,   269,   146,   142,   148,   -97,   -97,   -97,
     -97,   -97,   160,   -97,   149,   -97,   -97,   -97,   -97,   -97,
     -97,   -97,   -97,   159,   149,   161,   260,   -97,   -97,   123,
     -14,   182,   171,   179,   180,   183,   185,   -97,   178,   302,
     237,   -97,     2,   -97,   187,   -97,    27,   116,   260,   189,
     -97,     5,   -97,   -97,   184,   -97,   -97,   -97,   -97,   -97,
     -97,   -18,   -14,    65,   230,   -97,   203,   243,   -97,   -97,
     231,   -97,   -97,   199,   -97,   -97,   -97,   -97,   150,   -97,
     -97,   -97,    14,   -97,    15,   -97,   194,   216,   269,   207,
     269,   209,   204,   -97,   -97,   -97,   -97,   -97,   -97,   -97,
     -97,    17,   -97,   -97,   -97,   269,   269,   -97,   -97
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -97,   -97,   -12,   -97,   -97,   -88,    98,   -97,   -97,   -97,
      40,   -97,   -97,   -96,   -97,   -97,   -97,   -97,   -97,   -97,
     -97,   -22,   262,   -79,   -54,    63,   -97,   -97,   -97,   -97,
     -97,   -97,   -97,     4,    -3,    28,    33,   -97,     0,   106,
      99,   -97,   -40,     9,   -97
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -105
static const yytype_int16 yytable[] =
{
      43,    77,   143,   101,    35,    47,   148,   102,   141,    81,
      33,    41,    36,     4,    39,    55,    86,    48,    40,   152,
      73,    94,    82,    46,    13,    56,    13,    69,    49,    50,
     149,    58,   101,    59,    60,    13,    13,   205,    13,   131,
     169,   129,   161,  -104,    40,    87,   170,    62,    61,    37,
      57,    92,   130,    51,    52,    31,   151,    95,    45,    62,
      62,   178,   150,    45,    42,    58,   216,    59,    60,    62,
     190,   166,   206,    70,   158,   235,   237,   171,   247,   126,
     106,   221,    61,    34,    40,   222,    59,    60,   144,   106,
      83,   213,   214,   204,    62,   114,   115,    45,   140,   153,
     186,    40,    71,    84,   114,   115,   155,   212,    74,   134,
     188,   137,   166,    62,   157,   160,    45,   138,   139,   162,
      76,   228,   219,   230,   163,    78,     5,     6,     7,     8,
      80,     9,    10,   166,   166,   -99,    85,    91,    11,    92,
      12,    92,    97,    99,    13,   245,   246,    98,   193,    14,
      15,    16,    17,    18,    19,    20,   100,   103,   105,    21,
      22,   122,    23,   191,    24,    40,   123,    59,    60,   124,
     127,   125,   208,    25,   173,   128,   174,   175,   176,   217,
     220,   164,   132,   135,    26,   145,   142,   147,   154,   167,
       5,     6,     7,     8,    62,     9,    10,    45,    40,   168,
      59,    60,    11,   170,    12,   177,   207,   181,    13,   179,
     236,   182,   238,    14,    15,    16,    17,    18,    19,    20,
     183,   185,   187,    21,    22,   189,    23,    62,    24,   248,
      45,   194,   195,     5,     6,     7,     8,    25,     9,    10,
     196,   197,   200,   224,   198,    11,   199,    12,    26,   202,
     215,    13,   226,   227,   229,   218,    14,    15,    16,    17,
      18,    19,    20,   231,   239,   240,    21,    22,   242,    23,
     243,    24,     5,     6,     7,     8,   244,     9,    10,    63,
      25,   232,   209,   211,    11,   201,    12,     0,     0,     0,
      13,    26,     0,     0,     0,    14,    15,    16,    17,    18,
      19,    20,     0,     0,     0,    21,    22,     0,    23,    40,
      24,    59,    60,   106,     0,     0,     0,     0,     0,    25,
       0,     0,     0,     0,     0,   164,     0,     0,   114,   115,
      26,   106,   107,   108,   109,   110,   111,   112,    62,     0,
       0,    45,     0,     0,   113,     0,   114,   115,     0,     0,
       0,   116,   117,   118,   119,   120,   107,   108,   109,   110,
     111,   112,     0,     0,     0,     0,     0,     0,   113,     0,
       0,     0,     0,     0,     0,   116,   117,   118,   119,   120
};

#define yypact_value_is_default(yystate) \
  ((yystate) == (-97))

#define yytable_value_is_error(yytable_value) \
  YYID (0)

static const yytype_int16 yycheck[] =
{
      12,    23,    90,    57,     7,    10,    25,    61,    87,    11,
       6,    11,     8,     0,    10,    15,    34,    22,    49,    98,
      20,    25,    24,    14,    21,    16,    21,    18,    33,    34,
      49,    49,    86,    51,    52,    21,    21,    35,    21,    79,
     128,    50,   121,    63,    49,    63,    22,    78,    66,    63,
      34,    71,    61,    58,    59,    49,    96,    61,    81,    78,
      78,   140,    81,    81,    61,    49,    61,    51,    52,    78,
     166,   125,    70,    61,   114,    61,    61,    53,    61,    75,
      53,    16,    66,    49,    49,    20,    51,    52,    91,    53,
      11,   187,   188,   181,    78,    68,    69,    81,    63,    99,
     154,    49,    49,    24,    68,    69,   106,    80,    49,    81,
     164,    83,   166,    78,   114,   115,    81,    84,    85,   122,
      49,   209,   201,   211,   124,    61,     3,     4,     5,     6,
      11,     8,     9,   187,   188,    67,     7,    33,    15,    71,
      17,    71,    61,    69,    21,   233,   234,    62,   170,    26,
      27,    28,    29,    30,    31,    32,    61,    14,    61,    36,
      37,    67,    39,    40,    41,    49,    61,    51,    52,    62,
      49,    63,   184,    50,   134,    61,   136,   137,   138,   191,
     202,    65,    49,    49,    61,    35,    64,    61,    79,    61,
       3,     4,     5,     6,    78,     8,     9,    81,    49,    61,
      51,    52,    15,    22,    17,    61,    19,    61,    21,    64,
     222,    69,   224,    26,    27,    28,    29,    30,    31,    32,
      72,    61,    63,    36,    37,    64,    39,    78,    41,   241,
      81,    49,    61,     3,     4,     5,     6,    50,     8,     9,
      61,    61,    64,    13,    61,    15,    61,    17,    61,    12,
      61,    21,    49,    10,    23,    71,    26,    27,    28,    29,
      30,    31,    32,    64,    70,    49,    36,    37,    61,    39,
      61,    41,     3,     4,     5,     6,    72,     8,     9,    17,
      50,   218,   184,   184,    15,   179,    17,    -1,    -1,    -1,
      21,    61,    -1,    -1,    -1,    26,    27,    28,    29,    30,
      31,    32,    -1,    -1,    -1,    36,    37,    -1,    39,    49,
      41,    51,    52,    53,    -1,    -1,    -1,    -1,    -1,    50,
      -1,    -1,    -1,    -1,    -1,    65,    -1,    -1,    68,    69,
      61,    53,    54,    55,    56,    57,    58,    59,    78,    -1,
      -1,    81,    -1,    -1,    66,    -1,    68,    69,    -1,    -1,
      -1,    73,    74,    75,    76,    77,    54,    55,    56,    57,
      58,    59,    -1,    -1,    -1,    -1,    -1,    -1,    66,    -1,
      -1,    -1,    -1,    -1,    -1,    73,    74,    75,    76,    77
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,    83,    86,    87,     0,     3,     4,     5,     6,     8,
       9,    15,    17,    21,    26,    27,    28,    29,    30,    31,
      32,    36,    37,    39,    41,    50,    61,    84,    88,    91,
     122,    49,   115,   115,    49,   116,   115,    63,   103,   115,
      49,   120,    61,    84,    85,    81,   125,    10,    22,    33,
      34,    58,    59,   111,   112,   120,   125,    34,    49,    51,
      52,    66,    78,   104,   106,   116,   120,   124,   125,   125,
      61,    49,   114,   120,    49,   119,    49,   103,    61,   123,
      11,    11,    24,    11,    24,     7,    34,    63,   104,   105,
      89,    33,    71,    90,    25,    61,   126,    61,    62,    69,
      61,   106,   106,    14,   110,    61,    53,    54,    55,    56,
      57,    58,    59,    66,    68,    69,    73,    74,    75,    76,
      77,   121,    67,    61,    62,    63,   115,    49,    61,    50,
      61,   124,    49,   117,   117,    49,   118,   117,   118,   118,
      63,   105,    64,    87,   116,    35,   107,    61,    25,    49,
      81,   124,   105,   120,    79,   120,   109,   120,   124,   108,
     120,   105,   116,   120,    65,    95,   106,    61,    61,    87,
      22,    53,    92,    92,    92,    92,    92,    61,   105,    64,
      96,    61,    69,    72,    93,    61,   106,    63,   106,    64,
      95,    40,   101,   103,    49,    61,    61,    61,    61,    61,
      64,   121,    12,    98,    87,    35,    70,    19,    84,    88,
      94,   122,    80,    95,    95,    61,    61,    84,    71,   105,
     103,    16,    20,   100,    13,   102,    49,    10,    87,    23,
      87,    64,   107,    97,    99,    61,    84,    61,    84,    70,
      49,   113,    61,    61,    72,    87,    87,    61,    84
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  However,
   YYFAIL appears to be in use.  Nevertheless, it is formally deprecated
   in Bison 2.4.2's NEWS entry, where a plan to phase it out is
   discussed.  */

#define YYFAIL		goto yyerrlab
#if defined YYFAIL
  /* This is here to suppress warnings from the GCC cpp's
     -Wunused-macros.  Normally we don't worry about that warning, but
     some users do, and we want to make it easy for users to remove
     YYFAIL uses, which will produce warnings from Bison 2.5.  */
#endif

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* This macro is provided for backward compatibility. */

#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
#else
static void
yy_stack_print (yybottom, yytop)
    yytype_int16 *yybottom;
    yytype_int16 *yytop;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (0, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  YYSIZE_T yysize1;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = 0;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - Assume YYFAIL is not used.  It's too flawed to consider.  See
       <http://lists.gnu.org/archive/html/bison-patches/2009-12/msg00024.html>
       for details.  YYERROR is fine as it does not invoke this
       function.
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                yysize1 = yysize + yytnamerr (0, yytname[yyx]);
                if (! (yysize <= yysize1
                       && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                  return 2;
                yysize = yysize1;
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  yysize1 = yysize + yystrlen (yyformat);
  if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
    return 2;
  yysize = yysize1;

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}


/* Prevent warnings from -Wmissing-prototypes.  */
#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */


/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       `yyss': related to states.
       `yyvs': related to semantic values.

       Refer to the stacks thru separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yytoken = 0;
  yyss = yyssa;
  yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */
  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss_alloc, yyss);
	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 12:

/* Line 1806 of yacc.c  */
#line 105 "template_engine.y"
    {strcat(b,"if ");strcat(b,(yyvsp[(2) - (2)]));strcat(b," {\n");}
    break;

  case 13:

/* Line 1806 of yacc.c  */
#line 105 "template_engine.y"
    {strcat(b,"}\n");}
    break;

  case 14:

/* Line 1806 of yacc.c  */
#line 107 "template_engine.y"
    {
          #ifdef FUN
          printf("%s", (yyvsp[(2) - (2)]));
          #endif
          }
    break;

  case 50:

/* Line 1806 of yacc.c  */
#line 165 "template_engine.y"
    {strcat(b,"} else if ");strcat(b,(yyvsp[(3) - (3)]));strcat(b," {\n");}
    break;

  case 53:

/* Line 1806 of yacc.c  */
#line 170 "template_engine.y"
    {strcat(b,"} else {\n");}
    break;

  case 97:

/* Line 1806 of yacc.c  */
#line 253 "template_engine.y"
    {FRAG_MACRO();}
    break;

  case 118:

/* Line 1806 of yacc.c  */
#line 288 "template_engine.y"
    {if(!backslash && !stringmode){strcat(b,SSS);strcat(b,"\"\\n\");\n");}backslash=0;}
    break;

  case 120:

/* Line 1806 of yacc.c  */
#line 294 "template_engine.y"
    {if (1 && strlen(literalstr)) {strcat(b,SSS);strcat(b,"\"");strcat(b,literalstr);strcat(b,"\");");if(!stringmode)strcat(b,"\n");literalstr[0]=0;}}
    break;

  case 121:

/* Line 1806 of yacc.c  */
#line 296 "template_engine.y"
    { int len = strlen( literalstr );
          if ( 0 != len ) {
            /* CDS - Here we seem to be detecting a trailing backslash.  Set a flag and then skip appending line return.  */
            if ( '\\' == literalstr[len-1] ) { literalstr[len-1]=0;backslash=1; }
            strcat(b,SSS);strcat(b,"\"");strcat(b,literalstr);strcat(b,"\");");literalstr[0]=0;
            if(!stringmode)strcat(b,"\n");
          }
        }
    break;

  case 123:

/* Line 1806 of yacc.c  */
#line 309 "template_engine.y"
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
    break;



/* Line 1806 of yacc.c  */
#line 1801 "template_engine.tab.c"
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined(yyoverflow) || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}



/* Line 2067 of yacc.c  */
#line 343 "template_engine.y"


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

