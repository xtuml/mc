// TODO:  Check expression recursion differences.
// TODO:  names - may need to recognise key letters and function/operation numbers
parser grammar AslParser;

options {tokenVocab=AslLexer;}


target                        : definition;

definition                    :
                              | scenarioDefinition
                              | objectServiceDefinition
                              | stateDefinition
                              | domainServiceDefinition
                              | terminatorServiceDefinition
                              ;

//---------------------------------------------------------
// Project Definition
//---------------------------------------------------------
//---------------------------------------------------------
// Domain Definition
//---------------------------------------------------------

domainName                    : identifier
                              ;
//---------------------------------------------------------
// Exception Declaration
//---------------------------------------------------------
//---------------------------------------------------------
// Type Definition
//---------------------------------------------------------
//---------------------------------------------------------
// Type Reference
//---------------------------------------------------------

typeReference
                              : namedTypeRef
                              ;

namedTypeRef                  : typeName
                              | TEXT
                              | INTEGER
                              | REAL
                              | BOOLEAN
                              ;

typeName                      : identifier
                              ;

//---------------------------------------------------------
// Terminator Definition
//---------------------------------------------------------
//---------------------------------------------------------
// Object Definition
//---------------------------------------------------------

objectName                    : identifier
                              ;

objectReference               : objectName
                              ;

attributeName                 : identifier
                              ;

relationshipSpec              : relationshipReference
                                  ( DOT ( objectReference | rolePhrase )
                                    (DOT objectReference)?
                                  )?
                              ;

eventName                     : identifier
                              ;

stateName                     : identifier
                              ;


//---------------------------------------------------------
// Service Declaration
//---------------------------------------------------------

parameterList                 :
                                  parameterDefinition? ( COMMA NEWLINE? parameterDefinition )*
                              ;

parameterDefinition           : parameterName COLON parameterType
                              ;

parameterName                 : identifier
                              ;

parameterType                 : typeReference
                              ;

//---------------------------------------------------------
// Relationship Definition
//---------------------------------------------------------

relationshipName              : RelationshipName
                              ;

relationshipReference         : relationshipName
                              ;

rolePhrase                    : StringLiteral
                              ;


//---------------------------------------------------------
// Pragma Definition
//---------------------------------------------------------
//---------------------------------------------------------
// Descriptions
//---------------------------------------------------------

description                   : Description
                              ;

//---------------------------------------------------------
// Dynamic Behaviour
//---------------------------------------------------------



domainServiceDefinition       : DEFINE FUNCTION functionName NEWLINE+
                                ( INSTANCE THIS COLON objectName NEWLINE )?
                                blockInput
                                blockOutput
                                statementList
                                ENDDEFINE
                              ;



objectServiceDefinition       : DEFINE FUNCTION objectServiceName NEWLINE+
                                blockInput
                                blockOutput
                                statementList
                                ENDDEFINE
                              ;

terminatorServiceDefinition   : DEFINE BRIDGE bridgeName NEWLINE+
                                blockInput
                                blockOutput
                                statementList
                                ENDDEFINE
                              ;



stateDefinition               : DEFINE ACTION stateName NEWLINE+
                                blockInput
                                blockOutput
                                statementList
                                ENDDEFINE
                              ;

scenarioDefinition            : DEFINE SCENARIO scenarioName NEWLINE+
                                blockInput
                                blockOutput
                                statementList
                                ENDDEFINE
                              ;

blockInput                    : INPUT parameterList NEWLINE+;
blockOutput                   : OUTPUT parameterList NEWLINE+;
bridgeName                    : identifier COLON identifier COLON identifier;  // TODO refine this
functionName                  : identifier SCOPE identifier; // TODO see if this can be aligned
objectServiceName             : identifier COLON identifier; // TODO see if this can be aligned
scenarioName                  : identifier;

//---------------------------------------------------------
// Statements
//---------------------------------------------------------

statementList                 : statement*
                              ;



statement                     : (
                                | assignStatement
                                | enumValueAssignStatement
                                | callStatement
                                | exitStatement
                                | deleteStatement
                                | linkStatement
                                | generateStatement
                                | ifStatement
                                | caseStatement
                                | forStatement
                                | whileStatement
                                | structureInstantiation
                                | structureAssembly
                                | startDomainContext
                                | endDomainContext
                                | description
                                | AdaInline
                                | Inline
                                )
                                NEWLINE
                              ;

assignStatement               : lhs=postfixExpression EQUAL rhs=expression
                              ;

enumValueAssignStatement      : identifier OF identifier EQUAL EnumerationLiteral // TODO:  refine
                              ;

callStatement                 : root=sequence EQUAL
                                ( nameExpression | CREATE_TIMER | DELETE_TIMER | GET_TIME_REMAINING )
                                LBRACKET argumentList RBRACKET
                                ( ON identifier )?
                              ;

exitStatement                 : BREAK
                              | BREAKIF condition
                              ;

deleteStatement               : DELETE expression
                              | DELETE objectName WHERE whereClause
                              ;
linkStatement                 : linkType
                                lhs=navigateExpression relationshipSpec
                                (
                                  rhs=navigateExpression
                                  ( ( USING | FROM ) assoc=navigateExpression)?
                                )
                              ;

linkType                      : LINK
                              | UNLINK
                              | UNASSOCIATE
                              ;

createTimer                   : sequence EQUAL root=CREATE_TIMER LBRACKET argumentList RBRACKET
                              ;


generateStatement             : GENERATE
                                ( ( operationName COLON eventName ) | SET_TIMER | RESET_TIMER )
                                LPAREN argumentList RPAREN ( TO expression )?
                              ;

ifStatement                   : IF condition THEN NEWLINE
                                  statementList
                                elseBlock?
                                ENDIF
                              ;

elseBlock                     : ELSE NEWLINE statementList
                              ;


whileStatement                : LOOP NEWLINE
                                 statementList
                                ENDLOOP
                              ;

condition                     : logicalOr // TODO
                              ;


caseStatement                 : SWITCH expression NEWLINE+
                                 caseAlternative*
                                 caseOthers?
                                ENDSWITCH
                              ;

caseAlternative               : CASE choiceList NEWLINE statementList
                              ;

choiceList                    : expression
                              ;

caseOthers                    : DEFAULT NEWLINE statementList
                              ;

forStatement                  : FOR loopVariableSpec
                                DO NEWLINE
                                  statementList
                                ENDFOR
                              ;

loopVariableSpec              : ( identifier | sequence ) IN SetIdentifier
                              ;

structureInstantiation        : SetIdentifier IS typeName;
structureAssembly             : APPEND sequence TO SetIdentifier;
startDomainContext            : USE domainName;
endDomainContext              : ENDUSE;

//---------------------------------------------------------
// Code Blocks
//---------------------------------------------------------

//---------------------------------------------------------
// Find Condition Definition
//---------------------------------------------------------

findCondition                     : findLogicalOr;

findLogicalOr                     : lhs=findLogicalOr OR rhs=findLogicalXor
                                  | findLogicalXor
                                  ;

findLogicalXor                    : lhs=findLogicalXor XOR rhs=findLogicalAnd
                                  | findLogicalAnd
                                  ;

findLogicalAnd                    : lhs=findLogicalAnd AND rhs=findPrimary
                                  | findPrimary
                                  ;


findPrimary                       : findComparison
                                  | findUnary
                                  ;

findUnary                         : NOT findUnary
                                  | LPAREN findCondition RPAREN
                                  ;

findComparison                    : lhs=findName ( EQUAL | NOT_EQUAL | LT | GT | LTE | GTE  ) rhs=additiveExp;

findName                          : att=identifier
                                    ( DOT comp=identifier
                                    | LBRACKET expression RBRACKET
                                    )*
                                  ;

//---------------------------------------------------------
// Expression Definition
//---------------------------------------------------------

constExpression               : expression;


expression                    : rangeExpression;

rangeExpression               : logicalOr (RANGE_DOTS logicalOr)?;

logicalOr                     : lhs=logicalOr OR rhs=logicalXor
                              | logicalXor
                              ;

logicalXor                    : lhs=logicalXor XOR rhs=logicalAnd
                              | logicalAnd
                              ;

logicalAnd                    : lhs=logicalAnd AND rhs=equality
                              | equality
                              ;

equality                      : lhs=equality ( EQUAL | NOT_EQUAL ) rhs=relationalExp
                              | relationalExp
                              ;

relationalExp                 : lhs=relationalExp ( LT | GT | LTE | GTE ) rhs=additiveExp
                              | additiveExp
                              ;

additiveExp                   : lhs=additiveExp ( PLUS | MINUS ) rhs=multExp
                              | multExp
                              ;

multExp                       : lhs=multExp ( TIMES | DIVIDE | CARAT ) rhs=unaryExp // multiplication, division, exponentiation
                              | unaryExp
                              ;

unaryExp                      : unaryOperator exp=unaryExp
                              | linkExpression
                              ;

unaryOperator                 : MINUS
                              | PLUS
                              | NOT
                              | COUNTOF
                              ;

linkExpression                : navigateExpression
                              ;

navigateExpression            : lhs=navigateExpression
                                ( POINTER relationshipSpec whereClause?
                                )
                              | objectName whereClause
                              | postfixExpression
                              ;

extendedExpression            :
                              | createExpression
                              | findExpression
                              | primaryExpression
                              ;

sortOrder                     : REVERSE? ORDERED_BY sortOrderComponent
                                ( AND sortOrderComponent )*
                              ;

sortOrderComponent            : attributeName
                              ;

createExpression              : CREATE UNIQUE? objectReference ( WITH createArgumentList )?
                              ;

createArgumentList            :
                                (createArgument ( AND createArgument )*)?
                              ;

createArgument                : attributeName EQUAL expression
                              ;

findExpression                : findType objectReference
                                whereClause?
                                sortOrder?
                              ;

whereClause                   : WHERE findCondition
                              ;

findType                      : FIND
                              | FIND_ALL
                              | FIND_ONE
                              | FIND_ONLY
                              ;

postfixExpression             : root=postfixExpression
                                ( LPAREN argumentList RPAREN
                                | DOT identifier
                                )
                              | extendedExpression
                              ;

primaryExpression             : literal
                              | parenthesisedExpression
                              | nameExpression
                              | sequence
                              ;

sequence                      : LBRACKET argumentList RBRACKET
                              ;

nameExpression                : ( operationName SCOPE )? identifier
                              | ( operationName COLON )? identifier
                              | identifier
                              ;

operationName                 : identifier; // TODO:  omit?

parenthesisedExpression
                              : LPAREN expression
                                RPAREN
                              ;


argumentList                  : (expression ( COMMA expression )*)?
                              ;



literal
                              : IntegerLiteral
                              | RealLiteral
                              | EnumerationLiteral
                              | StringLiteral
                              | TRUE
                              | FALSE
                              | THIS
                              | UNDEFINED
                              ;


identifier                    : Identifier | SetIdentifier
                              ;

