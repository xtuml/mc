parser grammar AslParser;

options {tokenVocab=AslLexer;}


target                        : definition;

definition                    :
                              | scenarioDefinitionASL
                              | objectServiceDefinition | objectServiceDefinitionASL
                              | stateDefinition | stateDefinitionASL
                              | domainServiceDefinition | domainServiceDefinitionASL
                              | terminatorServiceDefinition | terminatorServiceDefinitionASL
                              ;

//---------------------------------------------------------
// Project Definition
//---------------------------------------------------------
//---------------------------------------------------------
// Domain Definition
//---------------------------------------------------------

domainName                    : identifier
                              ;

domainReference               : domainName
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
                              | instanceTypeRef
                              | collectionTypeRef
                              ;


instanceTypeRef               : ANONYMOUS? INSTANCE (OF fullObjectReference)?
                              ;

namedTypeRef                  : ANONYMOUS? (domainReference SCOPE)? typeName
                              ;

typeName                      : identifier
                              ;

collectionTypeRef             : sequenceTypeRef
                              ;

sequenceTypeRef               : ANONYMOUS? SEQUENCE
                              (LPAREN expression RPAREN)? OF typeReference
                              ;


//---------------------------------------------------------
// Terminator Definition
//---------------------------------------------------------

terminatorName                : identifier
                              ;

//---------------------------------------------------------
// Object Definition
//---------------------------------------------------------

objectName                    : identifier
                              ;

objectReference               : objectName
                              ;

fullObjectReference           : (domainReference SCOPE)? objectName
                              ;

attributeName                 : identifier
                              ;

relationshipSpec              : relationshipReference
                                  ( DOT ( identifier | rolePhrase )
                                    (DOT objectReference)?
                                  )?
                              ;

eventName                     : identifier
                              ;

eventReference                : identifier COLON eventName
                              ;

stateName                     : identifier
                              ;

stateType                     : ASSIGNER
                              | ASSIGNER START
                              | CREATION
                              | TERMINAL
                              | /* blank */
                              ;

//---------------------------------------------------------
// Service Declaration
//---------------------------------------------------------

parameterList                 : LPAREN
                                  parameterDefinition? ( COMMA NEWLINE* parameterDefinition )*
                                RPAREN
                              ;


parameterDefinition           : parameterName COLON parameterMode parameterType
                              ;


serviceVisibility             : PRIVATE
                              | PUBLIC
                              | /* blank */
                              ;

parameterMode                 : IN
                              | OUT
                              ;


serviceName                   : identifier
                              ;

parameterName                 : identifier
                              ;

parameterType                 : typeReference
                              ;

returnType                    : typeReference
                              ;






//---------------------------------------------------------
// Relationship Definition
//---------------------------------------------------------

relationshipName              : RelationshipName
                              ;

relationshipReference         : (domainReference SCOPE)? relationshipName
                              ;

rolePhrase                    : StringLiteral
                              ;


//---------------------------------------------------------
// Pragma Definition
//---------------------------------------------------------


pragmaList                    : (pragma SEMI)*
                              ;

pragma                        : PRAGMA pragmaName
                                LPAREN
                                  (pragmaValue (COMMA pragmaValue)*)?
                                RPAREN
                              ;

pragmaValue                   : identifier
                              | literal
                              ;

pragmaName                    : identifier
                              ;

//---------------------------------------------------------
// Descriptions
//---------------------------------------------------------

description                   : ( Description | DescriptionASL )*
                              ;

//---------------------------------------------------------
// Dynamic Behaviour
//---------------------------------------------------------



domainServiceDefinition       : description
                                serviceVisibility SERVICE
                                domainReference SCOPE serviceName
                                parameterList
                                ( RETURN returnType )? IS NEWLINE+
                                codeBlock
                                SERVICE? SEMI? pragmaList
                              ;

domainServiceDefinitionASL    : DEFINE SERVICE functionName NEWLINE+
                                ( INSTANCE THIS COLON objectName NEWLINE )?
                                blockInput
                                blockOutput
                                codeBlock
                                ENDDEFINE
                              ;



objectServiceDefinition       : description
                                serviceVisibility INSTANCE? SERVICE
                                  domainReference SCOPE objectReference DOT serviceName
                                  parameterList
                                  ( RETURN returnType )? IS NEWLINE+ codeBlock
                                SERVICE? SEMI? pragmaList
                              ;

objectServiceDefinitionASL    : DEFINE SERVICE objectServiceName NEWLINE+
                                blockInput
                                blockOutput
                                codeBlock
                                ENDDEFINE
                              ;

terminatorServiceDefinition   : description
                                serviceVisibility SERVICE
                                domainReference SCOPE terminatorName TERMINATOR_SCOPE serviceName
                                parameterList
                                ( RETURN returnType )? IS NEWLINE+
                                codeBlock
                                SERVICE? SEMI? pragmaList
                              ;

terminatorServiceDefinitionASL : DEFINE BRIDGE bridgeName NEWLINE+
                                blockInput
                                blockOutput
                                codeBlock
                                ENDDEFINE
                              ;



stateDefinition               : description
                                stateType STATE
                                domainReference SCOPE objectReference DOT stateName
                                parameterList IS NEWLINE+ codeBlock
                                STATE? SEMI? pragmaList
                              ;

stateDefinitionASL            : DEFINE ACTION stateName NEWLINE+
                                blockInput
                                blockOutput
                                codeBlock
                                ENDDEFINE
                              ;

scenarioDefinitionASL         : DEFINE SCENARIO scenarioName NEWLINE+
                                blockInput
                                blockOutput
                                codeBlock
                                ENDDEFINE
                              ;

blockInput                    : INPUT ( parameterName COLON parameterType )? ( COMMA NEWLINE* parameterName COLON parameterType )* NEWLINE+;
blockOutput                   : OUTPUT ( parameterName COLON parameterType )? ( COMMA NEWLINE* parameterName COLON parameterType )* NEWLINE+;
bridgeName                    : operationName COLON identifier COLON identifier;  // TODO refine this
functionName                  : operationName SCOPE identifier; // TODO see if this can be aligned
objectServiceName             : operationName COLON identifier; // TODO see if this can be aligned
scenarioName                  : operationName;

//---------------------------------------------------------
// Statements
//---------------------------------------------------------

statementList                 : statement*
                              ;



statement                     : (
                                  assignStatement
                                | nullStatement
                                | callStatement
                                | exitStatement
                                | deleteStatement
                                | linkStatement
                               // scheduleStatement
                                | cancelTimerStatement
                                | generateStatement
                                | ifStatement
                                | caseStatement
                                | forStatement
                                | whileStatement
                                | structureInstantiation
                                | startDomainContext
                                | endDomainContext
                                | description
                                | comment
                                | AdaInline
                                | Inline
                                | NEWLINE
                                )
                                NEWLINE
                              ;

nullStatement                 : BEGIN NEWLINE* NULL SEMI NEWLINE* END SEMI
                              ;

assignStatement               : lhs=postfixNoCallExpression EQUAL rhs=expression
                              | CONCATENATE additiveExp // structureAssembly
                              ;

callStatement                 : LBRACKET RBRACKET EQUAL root=nameExpression
                                LBRACKET argumentList RBRACKET
                                ( ON identifier )?
                              ;

exitStatement                 : BREAK
                              | BREAKIF condition
                              ;

deleteStatement               : DELETE expression whereClause?
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
                              ;


scheduleStatement             : LBRACKET timerId=expression RBRACKET EQUAL
                                CREATE_TIMER LBRACKET RBRACKET
                              ;

cancelTimerStatement          : LBRACKET RBRACKET EQUAL DELETE_TIMER LBRACKET timerId=expression RBRACKET
                              ;



generateStatement             : GENERATE eventReference
                                LPAREN argumentList RPAREN (TO expression)?
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

condition                     : expression
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

loopVariableSpec              : ( identifier | tuple ) IN expression
                              ;

structureInstantiation        : LEFT_BRACE nameExpression RIGHT_BRACE IS typeReference;
startDomainContext            : USE domainName;
endDomainContext              : ENDUSE;

//---------------------------------------------------------
// Code Blocks
//---------------------------------------------------------

codeBlock                     : statementList
                              ;


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

additiveExp                   : lhs=additiveExp ( PLUS | MINUS | TO | NOT_IN ) rhs=multExp
                              | multExp
                              ;

multExp                       : lhs=multExp ( TIMES | DIVIDE | POWER ) rhs=unaryExp
                              | unaryExp
                              ;

unaryExp                      : unaryOperator exp=unaryExp
                              | linkExpression
                              ;

unaryOperator                 : MINUS
                              | PLUS
                              | NOT
                              | ABS
                              | UNIQUE
                              | UNION
                              | DISUNION
                              | INTERSECTION
                              ;

linkExpression                : navigateExpression
                              ;

navigateExpression            : lhs=navigateExpression
                                ( NAVIGATE relationshipSpec whereClause?
                                | AND rhs=extendedExpression
                                  NAVIGATE relationshipSpec
                                )
                              | extendedExpression
                              ;

extendedExpression            : postfixExpression
                              | createExpression
                              | findExpression
                              ;


sortOrder                     : REVERSE? ORDERED_BY sortOrderComponent
                                ( AND sortOrderComponent )*
                              ;

sortOrderComponent            : REVERSE? attributeName
                              ;

createExpression              : CREATE UNIQUE? objectReference ( WITH createArgumentList )?
                              ;

createArgumentList            :
                                createArgument ( AND createArgument )*
                              ;

createArgument                : attributeName EQUAL unaryExp
                              | CURRENT_STATE EQUAL TICMARK stateName TICMARK
                              ;



findExpression                : findType postfixNoCallExpression
                                whereClause?
                                sortOrder?
                              ;


whereClause                   : WHERE findCondition
                              ;

findType                      : FIND
                              | FIND_ONE
                              | FIND_ONLY
                              ;

postfixExpression             : root=postfixExpression
                                ( LPAREN argumentList RPAREN
                                | DOT ( identifier | CURRENT_STATE )
                                | LBRACKET argumentList RBRACKET ( ON identifier )?
                                )
                              | primaryExpression
                              ;

postfixNoCallExpression       : root=postfixNoCallExpression
                                DOT ( identifier | CURRENT_STATE )
                              | primaryExpression
                              ;

primaryExpression             : literal
                              | parenthesisedExpression
                              | nameExpression
                              | tuple
                              | enumValue
                              ;

enumValue                     : v=identifier OF t=identifier
                              ;

tuple                         : LBRACKET argumentList RBRACKET
                              ;

nameExpression                : ( operationName ( SCOPE | COLON ) )? identifier
                              | LEFT_BRACE identifier RIGHT_BRACE
                              | TICMARK identifier TICMARK
                              ;

operationName                 : identifier;

parenthesisedExpression
                              : LPAREN expression
                                RPAREN
                              ;


argumentList                  : (expression ( COMMA expression )*)?
                              ;



literal
                              : IntegerLiteral
                              | RealLiteral
                              | StringLiteral
                              | TRUE
                              | FALSE
                              | UNDEFINED
                              | THIS
                              ;


identifier                    : Identifier
                              ;

comment                       : Comment
                              ;

