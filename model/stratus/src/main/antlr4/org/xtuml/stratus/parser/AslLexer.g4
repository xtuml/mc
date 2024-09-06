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
ABS                           : 'countof';
NOT                           : '!' | 'not';
PLUS                          : '+';
MINUS                         : '-';
CONCATENATE                   : 'append';
UNION                         : 'union-of';
NOT_IN                        : 'not-in';

// Multiplicative Operators
DIVIDE                        : '/';
TIMES                         : '*';
INTERSECTION                  : 'intersection-of';
POWER                         : '^';
DISUNION                      : 'disunion-of';

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
ASSIGNER                      : 'assigner';
ASSOCIATION                   : '-A';
BEGIN                         : 'begin';
BREAK                         : 'break';
BREAKIF                       : 'breakif';
BRIDGE                        : 'bridge';
CASE                          : 'case';
CREATE                        : 'create';
CREATION                      : 'creation';
CURRENT_DATE                  : 'current-date';
CURRENT_STATE                 : 'Current_State' | 'current_state' | 'CURRENT_STATE';
CURRENT_TIME                  : 'current-time';
DEFAULT                       : 'default';
DEFINE                        : 'define';
DELETE                        : 'delete';
DELETE_TIMER                  : 'Delete_Timer';
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
FIND                          : 'find' | 'find-all';
FIND_ONE                      : 'find-one';
FIND_ONLY                     : 'find-only';
FOR                           : 'for';
FROM                          : 'from';
GENERATE                      : 'generate';
IF                            : 'if';
IN                            : 'in';
INCLUDE_HEADER                : '$INCLUDE_HEADER'; // eat header lines
INLINE                        : '$INLINE'; // eat C inline code
INPUT                         : 'input';
INSTANCE                      : 'instance';
IS                            : 'is';
LEFT_BRACE                    : '{';
LINK                          : 'link' | 'associate' | 'link-counterpart';      // could separate these
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
RETURN                        : 'return';
REVERSE                       : 'reverse';
RIGHT_BRACE                   : '}';
SCENARIO                      : 'scenario';
SEQUENCE                      : 'sequence';
SERVICE                       : 'service' | 'function';
START                         : 'start';
STATE                         : 'state';
STRUCTURE                     : 'structure';
SWITCH                        : 'switch';
TERMINAL                      : 'terminal';
THEN                          : 'then';
THIS                          : 'this';
TICMARK                       : '\'';
TO                            : 'to';
UNDEFINED                     : 'UNDEFINED';
UNIQUE                        : 'unique';
UNLINK                        : 'unlink' | 'unassociate' | 'unlink-counterpart';  // could separate these
USE                           : '$USE';
USING                         : 'using';
WHERE                         : 'where';
WITH                          : 'with';
NULL                          : 'null';
TRUE                          : 'TRUE';
FALSE                         : 'FALSE';

// Numeric Literals
IntegerLiteral                : '-'? Digit+
                              ;


RealLiteral                   : '-'? Digit+ 
                                ( ('.' Digit+)
                                | UnbasedExponent
                                )
                              | '.' Digit+ UnbasedExponent?
                              | '-'? Digit+ '.' Digit+ UnbasedExponent
                              ;

fragment UnbasedExponent      : ('e'|'E')('+'|'-')? Digit+
                              ;

fragment Digit                : '0'..'9';
fragment Letter               : 'A'..'Z' | 'a'..'z';
ContinueLine                  : '\\' (' ' | '\t' | '\f' | '\r' )* NEWLINE -> skip;
Inline                        : INLINE .*? ENDINLINE -> skip;
IncludeHeader                 : INCLUDE_HEADER .*? NEWLINE -> skip;
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

DescriptionASL                : '#$DESCRIPTION' .*? '#$END_DESCRIPTION'; // TODO:  parse req IDs
Description                   : '//!' ~('\n'|'\r')* '\r'? '\n';
Comment                       : '#' ~[\r\n]*;
Whitespace                    : (' ' | '\t' | '\f' )+ -> skip;

