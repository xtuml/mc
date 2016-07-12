lexer grammar MaslLexer;

@annotations
{
@SuppressWarnings("all")
}

@header
{
import java.io.*;
}

@members
{
// parent masl parser
private MaslImportParser masl_parser = null;

// set the parent masl parser
public void setMaslParser( MaslImportParser p ) {
    if ( p != null )
        this.masl_parser = p;
    else
        this.masl_parser = null;
}

// get the current file name
private String getFileName() {
    if ( null == masl_parser ) return null;
    File f = new File( masl_parser.getFile() );
    return f.getName();
}

}

//==============================================================================================================
//==============================================================================================================
//
// Lexer 
//
//==============================================================================================================
//==============================================================================================================


// Logical Operators
AND                           : 'and';
OR                            : 'or';
XOR                           : 'xor';

// Unary and Additive Operators (Keep in this order to 
// improve efficiency so unary and additive can be looked 
// for as ranges) 
ABS                           : 'abs';
NOT                           : 'not';
PLUS                          : '+';
MINUS                         : '-';
CONCATENATE                   : '&';
UNION                         : 'union';
NOT_IN                        : 'not_in';

// Multiplicactive Operators
DIVIDE                        : '/';
TIMES                         : '*';
INTERSECTION                  : 'intersection';
MOD                           : 'mod';
POWER                         : '**';
REM                           : 'rem';
DISUNION                      : 'disunion';

// Equality Operators
EQUAL                         : '=';
NOT_EQUAL                     : '/=';

// Comparison Operators
GT                            : '>';
GTE                           : '>=';
LT                            : '<';
LTE                           : '<=';

// Stream Operators          
STREAM_LINE_IN                : '>>>';
STREAM_LINE_OUT               : '<<<';
STREAM_IN                     : '>>';
STREAM_OUT                    : '<<';


// Special characters
ASSIGN                        : ':=';
COLON                         : ':';
COMMA                         : ',';
DOT                           : '.';
LTGT                          : '<>';
PRIME                         : '\'';
RANGE_DOTS                    : '..';

LPAREN                        : '(';
RPAREN                        : ')';

LBRACKET                      : '[';
RBRACKET                      : ']';

SCOPE                         : '::';
SEMI                          : ';';
GOES_TO                       : '=>';

NAVIGATE                      : '->';
TERMINATOR_SCOPE              : '~>';
CASE_OR                       : '|';

// Keywords
ARRAY                         : 'array';
ANONYMOUS                     : 'anonymous';
ASSIGNER                      : 'assigner';
AT                            : 'at';
BAG                           : 'bag';
BEGIN                         : 'begin';
CANNOT_HAPPEN                 : 'Cannot_Happen' | 'cannot_happen';
CANCEL                        : 'cancel';
CASE                          : 'case';
CONDITIONALLY                 : 'conditionally';           
CONSOLE                       : 'console';
CREATE                        : 'create';
CREATION                      : 'creation';
CURRENT_STATE                 : 'Current_State' /* | 'current_state' */;
DECLARE                       : 'declare';
DEFERRED                      : 'deferred';  
DELAY                         : 'delay';
DELETE                        : 'delete';
DELTA                         : 'delta';
DICTIONARY                    : 'dictionary';
DIGITS                        : 'digits';
DOMAIN                        : 'domain';                  
ELSE                          : 'else';
ELSIF                         : 'elsif';
END                           : 'end';                     
ENUM                          : 'enum';                     
ERASE                         : 'erase';
EVENT                         : 'event';
EXCEPTION                     : 'exception';
EXIT                          : 'exit';
FIND                          : 'find' | 'find_all';
FIND_ONE                      : 'find_one';
FIND_ONLY                     : 'find_only';
FOR                           : 'for';
FUNCTION                      : 'function';                
GENERATE                      : 'generate';
IDENTIFIER                    : 'identifier';
IF                            : 'if';
IGNORE                        : 'Ignore' /* | 'ignore' */;
IN                            : 'in';                      
INSTANCE                      : 'instance'; 
IS_A                          : 'is_a';  
IS                            : 'is';                      
LINK                          : 'link';
LOOP                          : 'loop';
MANY                          : 'many';                    
NON_EXISTENT                  : 'Non_Existent' | 'Non_Existant' | 'non_existent';
OBJECT                        : 'object';                 
OF                            : 'of';
ONE                           : 'one';                     
ORDERED_BY                    : 'ordered_by';
OTHERS                        : 'others';
OUT                           : 'out';                     
PRAGMA                        : 'pragma';
PREFERRED                     : 'preferred';
PRIVATE                       : 'private';                 
PROJECT                       : 'project';
PUBLIC                        : 'public';                  
RAISE                         : 'raise';
RANGE                         : 'range';
READONLY                      : 'readonly';
REFERENTIAL                   : 'referential';
RELATIONSHIP                  : 'relationship';            
RETURN                        : 'return';                  
REVERSE                       : 'reverse';
REVERSE_ORDERED_BY            : 'reverse_ordered_by';
SCHEDULE                      : 'schedule';
SEQUENCE                      : 'sequence';
SERVICE                       : 'service';                 
SET                           : 'set';
START                         : 'start';
STATE                         : 'state';
STRUCTURE                     : 'structure';
TERMINAL                      : 'terminal';
TERMINATOR                    : 'terminator';
THEN                          : 'then';
THIS                          : 'this';
TO                            : 'to';
TRANSITION                    : 'transition';
TYPE                          : 'type' | 'subtype';
UNCONDITIONALLY               : 'unconditionally';         
UNIQUE                        : 'unique';
UNLINK                        : 'unlink';
USING                         : 'using';  
WHEN                          : 'when';
WHILE                         : 'while';
WITH                          : 'with';
NULL                          : 'null';
FLUSH                         : 'flush';
ENDL                          : 'endl';
TRUE                          : 'true';
FALSE                         : 'false';



LINE_NO                       : '#LINE#' { setText(""+$line); $type=IntegerLiteral; };
FILE_NAME                     : '#FILE#' { setText("\"" + getFileName() + "\""); $type=StringLiteral; };


// Numeric Literals
IntegerLiteral                :  Digit Digit? '#' BasedDigit+
                              |  Digit+
                              ;


                              // I don't think that the predicate and type setting should be 
                              // necessary - I think it's a bug in ANTLR. Given input 
                              // 123..456, the 123 should get parsed as IntegerLiteral .. 
                              // IntegerLiteral, but the '.' in RealLiteral seems to stop 
                              // the 123 getting recognised as an integer, even though it 
                              // doesn't match RealLiteral. Hack around this by adding the predicate to stop allowing 
                              // RealLiteral to match integers as well, but adjust the token type.
RealLiteral                   : Digit+ 
                                ( ('.' Digit)=> '.' Digit+ UnbasedExponent? 
                                | UnbasedExponent
                                | { $type=IntegerLiteral; }
                                )
                              | '.' Digit+ UnbasedExponent?
                              | Digit Digit? '#' 
                                ( BasedDigit+ 
                                    ( ('.' BasedDigit)=>'.' BasedDigit+ BasedExponent? 
                                    | BasedExponent
                                    | '#'? { $type=IntegerLiteral; }
                                    )
                                | '.' BasedDigit+ BasedExponent?
                                )
                              ;
                              

fragment UnbasedExponent      : ('e'|'E')('+'|'-')? Digit+
                              ;


fragment BasedExponent        : '#' ('+'|'-')? Digit+
                              ;




fragment Digit                : '0'..'9';
fragment BasedDigit           : '0'..'9' | 'a'..'z' | 'A'..'Z';
fragment Letter               : 'A'..'Z' | 'a'..'z';

// Character and String Literals

DurationLiteral               : '@P' ( ~('@' | ' ' | '\t' | '\f' | '\n' | '\r') )* '@'
                              ;
                              
TimestampLiteral              : '@' ( ~('@' | ' ' | '\t' | '\f' | '\n' | '\r') )* '@'
                              ;

CharacterLiteral              : '\'' 
                                ( (( EscapeSequence | ~('\''|'\\') )  '\'')=> ( EscapeSequence | ~('\''|'\\') )  '\''
                                | { $type=PRIME; }
                                )
                              ;

StringLiteral                 : '"' ( EscapeSequence | ~('\\'|'"') )* '"'
                              ;

fragment EscapeSequence       : '\\' ('b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
                              | UnicodeEscape
                              | OctalEscape
                              ;

fragment OctalEscape          : '\\' ('0'..'3') ('0'..'7') ('0'..'7')
                              | '\\' ('0'..'7') ('0'..'7')
                              | '\\' ('0'..'7')
                              ;

fragment UnicodeEscape        : '\\' 'u' HexDigit HexDigit HexDigit HexDigit;
fragment HexDigit             : ('0'..'9'|'a'..'f'|'A'..'F') ;


// identifiers
RelationshipName              : 'R' '1'..'9' Digit*
                              ;

Identifier                    : ( Letter | '_' ) ( Letter | Digit | '_' )*;


Description                   : '//!' ~('\n'|'\r')* '\r'? '\n';
Comment                       : '//' ~('\n'|'\r')* '\r'? '\n' { $channel=HIDDEN; };       
Whitespace                    : (' ' | '\t' | '\f' | '\n' | '\r' )+ {$channel=HIDDEN;};

