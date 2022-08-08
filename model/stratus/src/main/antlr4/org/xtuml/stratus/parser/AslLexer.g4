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
POWER                         : '^';

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
SEMI                          : ';';

NAVIGATE                      : '->';
TERMINATOR_SCOPE              : '~>';

// Keywords
ACTION                        : 'action';
ANONYMOUS                     : 'anonymous';
ADA_INLINE                    : '#$ADA_INLINE'; // eat Ada incline code
ALREADY_DEFINED               : 'ALREADY_DEFINED';
APPEND                        : 'append';
ASSIGNER                      : 'assigner';
ASSOCIATE                     : 'associate';
ASSOCIATION                   : '-A';
BEGIN                         : 'begin';
BREAK                         : 'break';
BREAKIF                       : 'breakif';
BRIDGE                        : 'bridge';
CASE                          : 'case';
COUNTOF                       : 'countof';
CREATE                        : 'create';
CREATION                      : 'creation';
CREATE_TIMER                  : 'Create_Timer';
CURRENT_DATE                  : 'current-date';
CURRENT_STATE                 : 'Current_State' | 'current_state' | 'CURRENT_STATE';
CURRENT_TIME                  : 'current-time';
DEFAULT                       : 'default';
DEFINE                        : 'define';
DELETE                        : 'delete';
DELETE_TIMER                  : 'Delete_Timer';
DISUNION                      : 'disunion-of';
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
END                           : 'end';
ERROR                         : 'ERROR';
FIND                          : 'find';
FIND_ONE                      : 'find-one';
FIND_ONLY                     : 'find-only';
FIND_ALL                      : 'find-all';
FOR                           : 'for';
FROM                          : 'from';
GENERATE                      : 'generate';
GET_TIME_REMAINING            : 'Get_Time_Remaining';
IF                            : 'if';
IN                            : 'in';
INCLUDE_HEADER                : '$INCLUDE_HEADER'; // eat header lines
INLINE                        : '$INLINE'; // eat C inline code
INPUT                         : 'input';
INSTANCE                      : 'instance';
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
OUT                           : 'out';
OUTPUT                        : 'output';
PRAGMA                        : 'pragma';
PRIVATE                       : 'private';
PUBLIC                        : 'public';
RESET_TIMER                   : 'TIM2:Reset_Timer';
RETURN                        : 'return';
REVERSE                       : 'reverse';
RIGHT_BRACE                   : '}';
SCENARIO                      : 'scenario';
SEQUENCE                      : 'sequence';
SERVICE                       : 'service' | 'function';
SET_TIMER                     : 'TIM1:Set_Timer';
START                         : 'start';
STATE                         : 'state';
STRUCTURE                     : 'structure';
SWITCH                        : 'switch';
TERMINAL                      : 'terminal';
THEN                          : 'then';
THIS                          : 'this';
TO                            : 'to';
UNASSOCIATE                   : 'unassociate';
UNDEFINED                     : 'UNDEFINED';
UNION                         : 'union-of';
UNIQUE                        : 'unique';
UNLINK                        : 'unlink' | 'unlink-counterpart';  // could separate these
USE                           : '$USE';
USING                         : 'using';
WHERE                         : 'where';
WITH                          : 'with';
NULL                          : 'null';
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
RelationshipName              : ( 'R' | 'CPR' | 'cpr' ) '1'..'9' Digit*;
Identifier                    : ( Letter | '_' ) ( Letter | Digit | '_' )*;
SetIdentifier                 : '{' ( Letter | '_' ) ( Letter | Digit | '_' )* '}';

DescriptionASL                : '#$DESCRIPTION' .*? '#$END_DESCRIPTION'; // TODO:  parse req IDs
Description                   : '//!' ~('\n'|'\r')* '\r'? '\n';
Comment                       : '#' ~[\r\n]* NEWLINE -> skip;
Whitespace                    : (' ' | '\t' | '\f' )+ -> skip;

