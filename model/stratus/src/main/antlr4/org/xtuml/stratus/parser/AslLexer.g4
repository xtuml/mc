lexer grammar AslLexer;

//==============================================================================================================
//==============================================================================================================
//
// Lexer 
//
//==============================================================================================================
//==============================================================================================================


// Logical Operators
AND                           : '&' | 'and';
OR                            : '|' | 'or';
XOR                           : 'xor';

// Unary and Additive Operators (Keep in this order to 
// improve efficiency so unary and additive can be looked 
// for as ranges) 

NOT                           : '!' | 'not';
PLUS                          : '+';
MINUS                         : '-';
NOT_IN                        : 'not-in';

// Multiplicative Operators
DIVIDE                        : '/';
TIMES                         : '*';
INTERSECTION                  : 'intersection-of';

// Equality Operators
EQUAL                         : '=' | 'equals';
NOT_EQUAL                     : '!=' | 'not-equals';

// Comparison Operators
GT                            : '>' | 'greater-than';
GTE                           : '>=' | 'greater-than-or-equal-to';
LT                            : '<' | 'less-than';
LTE                           : '<=' | 'less-than-or-equal-to';

// Stream Operators

// Special characters
COLON                         : ':';
COMMA                         : ',';
DOT                           : '.';
RANGE_DOTS                    : '..';

LPAREN                        : '(';
RPAREN                        : ')';

LBRACKET                      : '[';
RBRACKET                      : ']';

SCOPE                         : '::';
// Keywords
ACTION                        : 'action';
ADA_INLINE                    : '#$ADA_INLINE'; // eat Ada incline code
ALREADY_DEFINED               : 'ALREADY_DEFINED';
APPEND                        : 'append';
ASSOCIATE                     : 'associate';
ASSOCIATION                   : '-A';
BOOLEAN                       : 'Boolean';
BREAK                         : 'break';
BREAKIF                       : 'breakif';
BRIDGE                        : 'bridge';
CARAT                         : '^';
CASE                          : 'case';
COUNTOF                       : 'countof';
CREATE                        : 'create';
CREATE_TIMER                  : 'Create_Timer';
CURRENT_DATE                  : 'current-date';
CURRENT_TIME                  : 'current-time';
DEFAULT                       : 'default';
DEFINE                        : 'define';
DELETE                        : 'delete';
DELETE_TIMER                  : 'Delete_Timer';
DISUNION_OF                   : 'disunion-of';
DO                            : 'do';
DQUOTE                        : '"';
ELSE                          : 'else';
END_ADAINLINE                 : '#$END_ADAINLINE';
ENDDEFINE                     : 'enddefine';
ENDFOR                        : 'endfor';
ENDIF                         : 'endif';
ENDINLINE                     : '$ENDINLINE';
ENDLOOP                       : 'endloop';
ENDSWITCH                     : 'endswitch';
ENDUSE                        : '$ENDUSE';
ERROR                         : 'ERROR';
FIND                          : 'find';
FIND_ONE                      : 'find-one';
FIND_ONLY                     : 'find-only';
FIND_ALL                      : 'find-all';
FOR                           : 'for';
FROM                          : 'from';
FUNCTION                      : 'function';
GENERATE                      : 'generate';
GET_TIME_REMAINING            : 'Get_Time_Remaining';
IF                            : 'if';
IN                            : 'in';
INCLUDE_HEADER                : '$INCLUDE_HEADER'; // eat header lines
INLINE                        : '$INLINE'; // eat C inline code
INPUT                         : 'input';
INSTANCE                      : 'instance';
INTEGER                       : 'Base_Integer_Type';
IS                            : 'is';
LEFT_BRACE                    : '{';
LINK                          : 'link' | 'link-counterpart';      // could separate these
LOOP                          : 'loop';
NEWLINE                       : [\r\n];
OF                            : 'of';
ONE                           : 'one-of';
ORDERED_BY                    : 'ordered' (' ')+ 'by';
ON                            : 'on';
ONLY                          : 'only';
OUTPUT                        : 'output';
POINTER                       : '->';
REAL                          : 'Base_Float_Type';
RESET_TIMER                   : 'TIM2:Reset_Timer';
REVERSE                       : 'reverse';
RIGHT_BRACE                   : '}';
SCENARIO                      : 'scenario';
SET_TIMER                     : 'TIM1:Set_Timer';
STRUCTURE                     : 'structure';
SWITCH                        : 'switch';
TEXT                          : 'Base_Text_Type';
THEN                          : 'then';
THIS                          : 'this';
TO                            : 'to';
UNASSOCIATE                   : 'unassociate';
UNDEFINED                     : 'UNDEFINED';
UNION_OF                      : 'union-of';
UNIQUE                        : 'unique';
UNLINK                        : 'unlink' | 'unlink-counterpart';  // could separate these
USE                           : '$USE';
USING                         : 'using';
WHERE                         : 'where';
WITH                          : 'with';
TRUE                          : 'TRUE';
FALSE                         : 'FALSE';

EnumerationLiteral            : '\'' ( Letter | Digit | '_' )+ '\'';

// Numeric Literals
IntegerLiteral                : Digit+
                              ;


RealLiteral                   : Digit+ 
                                ( ('.' Digit+)
                                | UnbasedExponent
                                )
                              | '.' Digit+ UnbasedExponent?
                              ;

fragment UnbasedExponent      : ('e'|'E')('+'|'-')? Digit+
                              ;

fragment Digit                : '0'..'9';
fragment Letter               : 'A'..'Z' | 'a'..'z';
ContinueLine                  : '\\' (' ' | '\t' | '\f' | '\r' )* NEWLINE -> skip;
Inline                        : INLINE .*? ENDINLINE -> skip;
AdaInline                     : ADA_INLINE .*? END_ADAINLINE -> skip;
TokenH                        : '#$TOKENH' .*? '#$END_TOKENH' NEWLINE -> skip; // TODO:  eat stuff?
TokenL                        : '#$TOKENL' .*? '#$END_TOKENL' NEWLINE -> skip; // TODO:  eat stuff?
MultilineComment              : '#{' .*? '}#' NEWLINE -> skip;

// Character and String Literals

StringLiteral                 : '"' ( ~('\\'|'"') )* '"'
                              ;

// identifiers
RelationshipName              : ( 'R' | 'CPR' | 'cpr' ) '1'..'9' Digit*
                              ;

Identifier                    : ( Letter | '_' ) ( Letter | Digit | '_' )*;


SetIdentifier                 : '{' ( Letter | '_' ) ( Letter | Digit | '_' )* '}';
Description                   : '#$DESCRIPTION' .*? '#$END_DESCRIPTION'; // TODO:  parse req IDs
Comment                       : '#' ~[\r\n]* NEWLINE -> skip;
Whitespace                    : (' ' | '\t' | '\f' )+ -> skip;
