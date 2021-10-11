parser grammar MaslParser;

options {tokenVocab=MaslLexer;}


target                        : definition+;

definition                    : projectDefinition
                              | domainDefinition
                              | objectServiceDefinition
                              | stateDefinition
                              | domainServiceDefinition
                              | terminatorServiceDefinition
                              ;

//---------------------------------------------------------
// Project Definition
//---------------------------------------------------------

projectDefinition             : description
                                PROJECT projectName IS
                                 projectItem*
                                END PROJECT? SEMI pragmaList
                              ;

projectItem                   : projectDomainDefinition
                              ;

projectDomainDefinition
                              : description
                                DOMAIN domainName IS
                                  domainPrjItem*
                                END DOMAIN? SEMI pragmaList
                              ;

domainPrjItem                 : terminatorDefinition
                              ;

projectName                   : identifier
                              ;


//---------------------------------------------------------
// Domain Definition
//---------------------------------------------------------

domainDefinition
                              : description
                                DOMAIN domainName IS
                                  domainItem*
                                END DOMAIN? SEMI pragmaList
                              ;

domainItem                    : objectDeclaration
                              | domainServiceDeclaration
                              | terminatorDefinition
                              | relationshipDefinition
                              | objectDefinition
                              | typeForwardDeclaration
                              | typeDeclaration
                              | exceptionDeclaration
                              ;

domainName                    : identifier
                              ;


//---------------------------------------------------------
// Exception Declaration
//---------------------------------------------------------
exceptionDeclaration          : exceptionVisibility EXCEPTION exceptionName
                                SEMI pragmaList
                              ;

exceptionName                 : identifier
                              ;

exceptionVisibility           : PRIVATE
                              | PUBLIC
                              | /* blank */
                              ;

//---------------------------------------------------------
// Type Definition
//---------------------------------------------------------

typeForwardDeclaration        : description typeVisibility TYPE typeName SEMI pragmaList
                              ;

typeDeclaration               : description typeVisibility TYPE typeName IS
                                typeDef=typeDefinition SEMI pragmaList
                              ;

typeDefinition                : structureTypeDefinition
                              | enumerationTypeDefinition
                              | constrainedTypeDefinition
                              | typeReferenceWithCA
                              | unconstrainedArrayDefinition
                              ;

typeVisibility                : PRIVATE
                              | PUBLIC
                              | /* blank */
                              ;



// Constrained Type
constrainedTypeDefinition     : namedTypeRef typeConstraint
                              ;

typeConstraint                : rangeConstraint
                              | deltaConstraint
                              | digitsConstraint
                              ;

rangeConstraint               : RANGE expression
                              ;

deltaConstraint               : DELTA constExpression rangeConstraint
                              ;

digitsConstraint              : DIGITS constExpression rangeConstraint
                              ;

// Structure Type
structureTypeDefinition       : STRUCTURE
                                  structureComponentDefinition+
                                END STRUCTURE?
                              ;

structureComponentDefinition  : componentName COLON typeReference
                                (ASSIGN defaultValue=constExpression)?
                                SEMI pragmaList
                              ;

componentName                 : identifier
                              ;


// Enumeration Type
enumerationTypeDefinition     : ENUM LPAREN
                                  enumerator ( COMMA enumerator )*
                                RPAREN
                              ;

enumerator                    : enumeratorName ( (EQUAL|ASSIGN) constExpression )?
                              ;

enumeratorName                : identifier
                              ;


// Unconstrained array
unconstrainedArrayDefinition  : ARRAY LPAREN
                                  indexType=indexTypeReference RANGE LTGT
                                RPAREN
                                OF arrayOf=typeReference
                              ;


indexTypeReference            : namedTypeRef
                              ;

//---------------------------------------------------------
// Type Reference
//---------------------------------------------------------

typeReference
                              : namedTypeRef
                              | instanceTypeRef
                              | collectionTypeRef
                              | deprecatedType
                              ;

typeReferenceWithCA           : typeReference
                              | constrainedArrayTypeRef
                              ;

deprecatedType                : INSTANCE
                              | EVENT
                              | SERVICE
                              ;


instanceTypeRef               : ANONYMOUS? INSTANCE OF fullObjectReference
                              ;

namedTypeRef                  : ANONYMOUS? (domainName SCOPE)? typeName
                              ;

userDefinedTypeRef            : (domainName SCOPE)? typeName
                              ;

constrainedArrayTypeRef       : userDefinedTypeRef arrayBounds
                              ;

typeName                      : identifier
                              ;

arrayBounds                   : LPAREN expression RPAREN
                              ;



collectionTypeRef             : sequenceTypeRef             
                              | arrayTypeRef                
                              | setTypeRef                  
                              | bagTypeRef                  
                              | dictionaryTypeRef           
                              ;

sequenceTypeRef               : ANONYMOUS? SEQUENCE
                              (LPAREN expression RPAREN)? OF typeReference
                              ;

arrayTypeRef                  : ANONYMOUS? ARRAY arrayBounds OF typeReference
                              ;

setTypeRef                    : ANONYMOUS? SET OF typeReference
                              ;

bagTypeRef                    : ANONYMOUS? BAG OF typeReference
                              ;

dictionaryTypeRef             : ANONYMOUS? DICTIONARY
                                ( dictKeyType? OF dictValueType )?
                              ;

dictKeyType                   : namedTypeRef
                              | instanceTypeRef
                              ;

dictValueType                 : typeReference
                              ;

//---------------------------------------------------------
// Terminator Definition
//---------------------------------------------------------

terminatorName                : identifier
                              ;

terminatorDefinition          : description
                                startDec=TERMINATOR terminatorName IS
                                  terminatorItem*
                                END TERMINATOR? SEMI pragmaList
                              ;

terminatorItem                : terminatorServiceDeclaration
                              ;


terminatorServiceDeclaration  : description serviceVisibility SERVICE serviceName
                                  parameterList ( RETURN returnType )?
                                  SEMI pragmaList
                              ;

//---------------------------------------------------------
// Object Definition
//---------------------------------------------------------

objectName                    : identifier
                              ;

objectReference               : objectName
                              ;

fullObjectReference           : (domainName SCOPE)? objectName
                              ;

attributeName                 : identifier
                              ;

objectDeclaration             : description OBJECT objectName SEMI pragmaList
                              ;


objectDefinition              : description
                                startDec=OBJECT objectName IS
                                  objectItem*
                                END OBJECT? SEMI pragmaList
                              ;

objectItem                    : attributeDefinition
                              | identifierDefinition
                              | objectServiceDeclaration
                              | eventDefinition
                              | stateDeclaration
                              | transitionTable
                              ;

attributeDefinition           : description
                                attributeName COLON
                                PREFERRED? UNIQUE? attReferentials? typeReference
                                (ASSIGN defaultValue=constExpression)?
                                SEMI pragmaList
                              ;

attReferentials               : REFERENTIAL
                                LPAREN
                                  attReferential ( COMMA attReferential )*
                                RPAREN
                              ;

attReferential                : relationshipSpec
                                DOT attributeName
                              ;

relationshipSpec              : relationshipReference
                                  ( DOT objOrRole=identifier
                                    (DOT objectReference)?
                                  )?
                              ;


objectServiceDeclaration      : description serviceVisibility (INSTANCE serviceDeferral?)? SERVICE serviceName
                                  parameterList
                                  ( RETURN returnType )?
                                  SEMI pragmaList
                              ;


serviceDeferral               : DEFERRED LPAREN relationshipName RPAREN
                              ;

identifierDefinition          : IDENTIFIER IS
                                LPAREN
                                attributeName ( COMMA attributeName )*
                                RPAREN SEMI pragmaList
                              ;

eventDefinition               : description eventType EVENT eventName parameterList SEMI pragmaList
                              ;

eventName                     : identifier
                              ;

eventReference                : (objectReference DOT)? eventName
                              ;

eventType                     : ASSIGNER
                              | CREATION
                              | /* blank */
                              ;

stateDeclaration              : description stateType STATE stateName parameterList SEMI pragmaList
                              ;

stateName                     : identifier
                              ;

stateType                     : ASSIGNER
                              | ASSIGNER START
                              | CREATION
                              | TERMINAL
                              | /* blank */
                              ;


transitionTable               : transTableType TRANSITION IS
                                  transitionRow+
                                END TRANSITION SEMI pragmaList
                              ;


transTableType                : ASSIGNER
                              | /* blank */
                              ;

transitionRow                : startState
                                LPAREN
                                  transitionOption (COMMA transitionOption)*
                                RPAREN SEMI pragmaList
                              ;

transitionOption              : eventReference GOES_TO endState
                              ;

startState                    : NON_EXISTENT
                              | stateName
                              ;

endState                      : stateName
                              | IGNORE
                              | CANNOT_HAPPEN
                              ;

//---------------------------------------------------------
// Service Declaration
//---------------------------------------------------------

domainServiceDeclaration      : description serviceVisibility SERVICE serviceName
                                  parameterList
                                  ( RETURN returnType )?
                                  SEMI pragmaList
                              ;


parameterList                 : LPAREN
                                  parameterDefinition? ( COMMA parameterDefinition )*
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

relationshipReference         : (domainName SCOPE)? relationshipName
                              ;

relationshipDefinition        : description RELATIONSHIP relationshipName IS
                                ( regularRelationshipDefinition
                                | assocRelationshipDefinition
                                | subtypeRelationshipDefinition
                                )
                                SEMI pragmaList
                              ;



regularRelationshipDefinition : forwards=halfRelationshipDefinition COMMA
                                backwards=halfRelationshipDefinition
                              ;


assocRelationshipDefinition   : forwards=halfRelationshipDefinition COMMA
                                backwards=halfRelationshipDefinition
                                USING ONE? objectReference
                              ;

halfRelationshipDefinition    : from=objectReference conditionality rolePhrase
                                multiplicity to=objectReference
                              ;


subtypeRelationshipDefinition : supertype=objectReference IS_A
                                LPAREN
                                  subtype+=objectReference ( COMMA subtype+=objectReference )*
                                RPAREN
                              ;

rolePhrase                    : identifier
                              ;

conditionality                : UNCONDITIONALLY
                              | CONDITIONALLY
                              ;

multiplicity                  : ONE
                              | MANY
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

description                   : Description*
                              ;

//---------------------------------------------------------
// Dynamic Behaviour
//---------------------------------------------------------



domainServiceDefinition       : description
                                serviceVisibility SERVICE
                                domainName SCOPE serviceName
                                parameterList
                                ( RETURN returnType )? IS
                                codeBlock
                                SERVICE? SEMI pragmaList
                              ;



objectServiceDefinition       : description
                                serviceVisibility INSTANCE? SERVICE
                                  domainName SCOPE objectReference DOT serviceName
                                  parameterList
                                  ( RETURN returnType )? IS codeBlock
                                SERVICE? SEMI pragmaList
                              ;

terminatorServiceDefinition   : description
                                serviceVisibility SERVICE
                                domainName SCOPE terminatorName TERMINATOR_SCOPE serviceName
                                parameterList
                                ( RETURN returnType )? IS
                                codeBlock
                                SERVICE? SEMI pragmaList
                              ;



stateDefinition               : description
                                stateType STATE
                                domainName SCOPE objectReference DOT stateName
                                parameterList IS codeBlock
                                STATE? SEMI pragmaList
                              ;



//---------------------------------------------------------
// Statements
//---------------------------------------------------------

statementList                 : statement*
                              ;



statement                     : ( codeBlockStatement
                                | assignStatement
                                | streamStatement
                                | nullStatement
                                | callStatement
                                | exitStatement
                                | returnStatement
                                | delayStatement
                                | raiseStatement
                                | deleteStatement
                                | eraseStatement
                                | linkStatement
                                | scheduleStatement
                                | cancelTimerStatement
                                | generateStatement
                                | ifStatement
                                | caseStatement
                                | forStatement
                                | whileStatement
                                | emptyStatement
                                )
                                SEMI pragmaList
                              ;

emptyStatement                :
                              ;

nullStatement                 : NULL
                              ;

assignStatement               : lhs=expression ASSIGN rhs=expression
                              ;

streamOperator                : STREAM_IN
                              | STREAM_OUT
                              | STREAM_LINE_IN
                              | STREAM_LINE_OUT
                              ;
                              
streamValue                   : streamOperator expression
                              ;

streamStatement               : lhs=expression streamValue+
                              ;

callStatement                 : root=postfixNoCallExpression
                                LPAREN argumentList RPAREN
                              ;

exitStatement                 : EXIT (WHEN condition)?
                              ;

returnStatement               : RETURN expression
                              ;

delayStatement                : DELAY expression
                              ;

raiseStatement                : RAISE exceptionReference
                                      ( LPAREN expression? RPAREN )?
                              ;

deleteStatement               : DELETE expression
                              ;

eraseStatement                : ERASE expression
                              ;

linkStatement                 : linkType
                                lhs=navigateExpression relationshipSpec
                                (
                                  rhs=navigateExpression
                                  (USING assoc=navigateExpression)?
                                )?
                              ;

linkType                      : LINK
                              | UNLINK
                              ;


scheduleStatement             : SCHEDULE timerId=expression
                                generateStatement
                                scheduleType time=expression (DELTA period=expression)?
                              ;

cancelTimerStatement          : CANCEL timerId=expression
                              ;


scheduleType                  : AT
                              | DELAY
                              ;


generateStatement             : GENERATE qualifiedEventName
                                LPAREN argumentList RPAREN (TO expression)?
                              ;


qualifiedEventName            : (fullObjectReference DOT)? eventName
                              ;


ifStatement                   : IF condition THEN
                                  statementList
                                elsifBlock*
                                elseBlock?
                                END IF?
                              ;


elsifBlock                    : ELSIF condition THEN
                                  statementList
                              ;

elseBlock                     : ELSE statementList
                              ;


whileStatement                : WHILE condition
                                LOOP
                                 statementList
                                END LOOP?
                              ;

condition                     : expression
                              ;


caseStatement                 : CASE expression IS
                                 caseAlternative*
                                 caseOthers?
                                END CASE?
                              ;

caseAlternative               : WHEN choiceList GOES_TO statementList
                              ;

choiceList                    : expression (CASE_OR expression)*
                              ;

caseOthers                    : WHEN OTHERS GOES_TO statementList
                              ;

forStatement                  : FOR loopVariableSpec
                                LOOP
                                  statementList
                                END LOOP?
                              ;

loopVariableSpec              : identifier IN REVERSE? expression
                              ;



//---------------------------------------------------------
// Code Blocks
//---------------------------------------------------------

codeBlockStatement            : (DECLARE
                                  variableDeclaration* )?
                                BEGIN
                                  statementList
                                (EXCEPTION
                                  exceptionHandler*
                                  otherHandler?)?
                                END
                              ;

codeBlock                     : variableDeclaration*
                                BEGIN
                                  statementList
                                (EXCEPTION
                                  exceptionHandler*
                                  otherHandler?)?
                                END
                              ;

variableDeclaration           : variableName COLON
                                READONLY? typeReferenceWithCA
                                (ASSIGN expression)?
                                SEMI pragmaList
                              ;


exceptionHandler              : WHEN exceptionReference GOES_TO statementList
                              ;

otherHandler                  : WHEN OTHERS GOES_TO statementList
                              ;

exceptionReference            : (domainName SCOPE)? exceptionName
                              ;

variableName                  : identifier
                              ;


//---------------------------------------------------------
// Find Condition Definition
//---------------------------------------------------------

findCondition                     : findLogicalOr;

findLogicalOr                     : findLogicalXor ( OR findLogicalXor )*;

findLogicalXor                    : findLogicalAnd ( XOR findLogicalAnd )*;

findLogicalAnd                    : findPrimary ( AND findPrimary )*;


findPrimary                       : findComparison
                                  | findUnary
                                  ;

findUnary                         : NOT findUnary
                                  | LPAREN findCondition RPAREN
                                  ;

findComparison                    : findName ( EQUAL | NOT_EQUAL | LT | GT | LTE | GTE  ) additiveExp;

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

additiveExp                   : lhs=additiveExp ( PLUS | MINUS | CONCATENATE | UNION | NOT_IN ) rhs=multExp
                              | multExp
                              ;

multExp                       : lhs=multExp ( TIMES | DIVIDE | MOD | POWER | REM | INTERSECTION | DISUNION ) rhs=unaryExp
                              | unaryExp
                              ;

unaryExp                      : unaryOperator exp=unaryExp
                              | linkExpression
                              ;

unaryOperator                 : MINUS
                              | PLUS
                              | NOT
                              | ABS
                              ;

linkExpression                : navigateExpression
                              | ( linkType
                                  lhs=navigateExpression relationshipSpec
                                  (rhs=navigateExpression)?
                                )
                              ;

navigateExpression            : lhs=navigateExpression
                                ( NAVIGATE relationshipSpec whereClause?
                                | WITH rhs=extendedExpression
                                  NAVIGATE relationshipSpec
                                | ORDERED_BY sortOrder
                                | REVERSE_ORDERED_BY sortOrder
                                )
                              | extendedExpression
                              ;

extendedExpression            : postfixExpression
                              | createExpression
                              | findExpression
                              ;


sortOrder                     : LPAREN
                                ( sortOrderComponent
                                ( COMMA sortOrderComponent )* )?
                                RPAREN
                              ;

sortOrderComponent            : REVERSE? identifier
                              ;

createExpression              : CREATE UNIQUE? objectReference createArgumentList
                              ;

createArgumentList            : LPAREN
                                (createArgument ( COMMA createArgument )*)?
                                RPAREN
                              ;

createArgument                : attributeName GOES_TO expression
                              | CURRENT_STATE GOES_TO stateName
                              ;



findExpression                : findType postfixNoCallExpression
                                whereClause
                              ;


whereClause                   : LPAREN findCondition? RPAREN
                              ;

findType                      : FIND
                              | FIND_ONE
                              | FIND_ONLY
                              ;

postfixExpression             : root=postfixExpression
                                ( LPAREN serviceArgs=argumentList RPAREN
                                | DOT identifier
                                | TERMINATOR_SCOPE identifier
                                | LBRACKET expression RBRACKET
                                | PRIME characteristic LPAREN charArgs=argumentList RPAREN
                                | PRIME characteristic
                                )
                              | primaryExpression
                              ;

postfixNoCallExpression       : root=postfixNoCallExpression
                                ( DOT identifier
                                | TERMINATOR_SCOPE identifier
                                | LBRACKET expression RBRACKET
                                | PRIME characteristic
                                )
                              | primaryExpression
                              ;

primaryExpression             : literal
                              | parenthesisedExpression
                              | nameExpression
                              | typeNameExpression
                              ;


typeNameExpression            : instanceTypeRef
                              | collectionTypeRef
                              ;

nameExpression                : (domainName SCOPE)? identifier
                              ;

parenthesisedExpression
                              : LPAREN expression
                                ( ( COMMA expression )+
                                |
                                )
                                RPAREN
                              ;


argumentList                  : (expression ( COMMA expression )*)?
                              ;



literal
                              : IntegerLiteral
                              | RealLiteral
                              | CharacterLiteral
                              | StringLiteral
                              | TimestampLiteral
                              | DurationLiteral
                              | TRUE
                              | FALSE
                              | NULL
                              | FLUSH
                              | ENDL
                              | THIS
                              | CONSOLE
                              ;


identifier                    : Identifier
                              ;


characteristic                : Identifier
                              | characteristicRW
                              ;

characteristicRW              : RANGE | DELTA
                              ;
