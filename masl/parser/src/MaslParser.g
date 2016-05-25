parser grammar MaslParser;

options
{
  tokenVocab=MaslLexer;
  output=AST;
}

tokens
{

  // imaginary nodes
  AGGREGATE;
  ARGUMENT;
  ARRAY_BOUNDS;
  ARRAY_SIZE_CONSTRAINT;
  ASSIGNMENT_STATEMENT;
  ASSOCIATIVE_RELATIONSHIP_DEFINITION;
  ATTRIBUTE_DEFINITION;
  ATTRIBUTE_NAME;
  CALL;
  CAST;
  CHOICE;
  CODE_BLOCK;
  COMPONENT_DEFINITION;
  COMPONENT_NAME;
  CONDITION;
  CONSTRAINED_ARRAY;
  CONSTRAINED_TYPE;
  CORRELATE;
  CREATE_ARGUMENT;
  DESCRIPTION;
  DOMAIN_NAME;
  DOMAIN_SERVICE_DECLARATION;
  DOMAIN_SERVICE_DEFINITION;
  ENUMERATOR;
  ENUMERATOR_NAME;
  EVENT_NAME;
  EXCEPTION_HANDLER;
  EXCEPTION_NAME;
  EXPRESSION_STATEMENT;
  FIND_ATTRIBUTE;
  FULL_SERVICE_NAME;
  HALF_RELATIONSHIP;
  KEY;
  LOOP_VARIABLE;
  NAME;
  NORMAL;
  OBJECT_DECLARATION;
  OBJECT_DEFINITION;
  OBJECT_NAME;
  OBJECT_SERVICE_DECLARATION;
  OBJECT_SERVICE_DEFINITION;
  OTHER_HANDLER;
  PARAMETER_DEFINITION;
  PARAMETER_LIST;
  PARAMETER_NAME;
  PARAMETER_TYPE;
  PRAGMA_NAME;
  PROJECT_NAME;
  QUALIFIED_EVENT_NAME;
  QUALIFIED_OBJECT_NAME;
  REGULAR_RELATIONSHIP_DEFINITION;
  RELATIONSHIP_NAME;
  RELATIONSHIP_SPEC;
  RENAMED_TYPE;
  RETURN_TYPE;
  ROLE_PHRASE;
  SERVICE_NAME;
  SLICE;
  SORT_ORDER_COMPONENT;
  STATE_DEFINITION;
  STATEMENT;
  STATEMENT_LIST;
  STATE_NAME;
  STREAM_STATEMENT;
  SUBTYPE_RELATIONSHIP_DEFINITION;
  TERMINATOR_DEFINITION;
  TERMINATOR_NAME;
  TERMINATOR_SERVICE_DECLARATION;
  TERMINATOR_SERVICE_DEFINITION;
  TRANSITION_OPTION;
  TRANSITION_ROW;
  TRANSITION_TABLE;
  TYPE_DECLARATION;
  TYPE_NAME;
  TYPE_REF;
  UNARY_MINUS;
  UNARY_PLUS;
  UNCONSTRAINED_ARRAY; 
  NAMED_TYPE; 
  VALUE;
  VARIABLE_DECLARATION;
  VARIABLE_NAME;
  WHERE;
}

@annotations
{
@SuppressWarnings("all")
}

target                        : definition+;

definition                    : projectDefinition
                              | domainDefinition 
                              | objectServiceDefinition 
                              | objectFunctionDefinition 
                              | stateDefinition
                              | domainServiceDefinition 
                              | domainFunctionDefinition 
                              | terminatorServiceDefinition 
                              | terminatorFunctionDefinition 
                              ;

//---------------------------------------------------------
// Project Definition
//---------------------------------------------------------

projectDefinition             : description
                                PROJECT projectName IS
                                 projectItem*
                                END PROJECT? SEMI pragmaList                              -> ^( PROJECT
                                                                                                projectName
                                                                                                description
                                                                                                projectItem*
                                                                                                pragmaList?)
                              ;

projectItem                   : domainPrjDefinition
                              ;

domainPrjDefinition
                              : description
                                DOMAIN domainName IS
                                  domainPrjItem* 
                                END DOMAIN? SEMI pragmaList                               -> ^( DOMAIN 
                                                                                                domainName 
                                                                                                description
                                                                                                domainPrjItem* 
                                                                                                pragmaList?)
                              ;

domainPrjItem                 : terminatorDefinition
                              ;

projectName                   : identifier                                               -> ^( PROJECT_NAME 
                                                                                                identifier)
                              ;


//---------------------------------------------------------
// Domain Definition
//---------------------------------------------------------

domainDefinition
                              : description
                                DOMAIN domainName IS
                                  domainItem* 
                                END DOMAIN? SEMI pragmaList                               -> ^( DOMAIN 
                                                                                                domainName 
                                                                                                description
                                                                                                domainItem* 
                                                                                                pragmaList?
                                                                                               )
                              ;

domainItem                    : objectDeclaration               
                              | domainServiceDeclaration        
                              | domainFunctionDeclaration       
                              | terminatorDefinition       
                              | relationshipDefinition
                              | objectDefinition
                              | typeForwardDeclaration
                              | typeDeclaration
                              | exceptionDeclaration             
                              ;                                 

domainName                    : identifier                                                -> ^( DOMAIN_NAME 
                                                                                                identifier)
                              ;


//---------------------------------------------------------
// Exception Declaration
//---------------------------------------------------------
exceptionDeclaration          : exceptionVisibility EXCEPTION exceptionName 
                                SEMI pragmaList                                           -> ^( EXCEPTION 
                                                                                                exceptionName 
                                                                                                exceptionVisibility 
                                                                                                pragmaList?)
                              ;

exceptionName                 : identifier                                                -> ^(EXCEPTION_NAME identifier)
                              ;

exceptionVisibility           : PRIVATE                                                   -> PRIVATE
                              | PUBLIC                                                    -> PUBLIC
                              | /* blank */                                               -> PUBLIC
                              ;

//---------------------------------------------------------
// Type Definition
//---------------------------------------------------------

typeForwardDeclaration        : description typeVisibility TYPE typeName SEMI pragmaList        ->^( TYPE_DECLARATION[$TYPE]
                                                                                                typeName 
                                                                                                typeVisibility 
                                                                                                pragmaList? )
                              ;

typeDeclaration               : description typeVisibility TYPE typeName IS
                                typeDef=typeDefinition SEMI pragmaList                          ->^( TYPE[$typeDef.text]
                                                                                                typeName 
                                                                                                typeVisibility 
                                                                                                description
                                                                                                pragmaList?
                                                                                                typeDefinition )
                                                                                                
                              ;

typeDefinition                : structureTypeDefinition
                              | enumerationTypeDefinition
                              | constrainedTypeDefinition
                              | typeReferenceWithCA
                              | unconstrainedArrayDefinition
                              ;

typeVisibility                : PRIVATE                                                   -> PRIVATE
                              | PUBLIC                                                    -> PUBLIC
                              | /* blank */                                               -> PUBLIC
                              ;



// Constrained Type
constrainedTypeDefinition     : namedTypeRef typeConstraint                               -> ^( CONSTRAINED_TYPE 
                                                                                                namedTypeRef 
                                                                                                typeConstraint)
                              ;

typeConstraint                : rangeConstraint
                              | deltaConstraint
                              | digitsConstraint
                              ;

rangeConstraint               : RANGE expression                                          -> ^( RANGE expression )
                              ;

deltaConstraint               : DELTA constExpression rangeConstraint                     -> ^( DELTA 
                                                                                                constExpression 
                                                                                                rangeConstraint)
                              ;

digitsConstraint              : DIGITS constExpression rangeConstraint                    -> ^( DIGITS 
                                                                                                constExpression 
                                                                                                rangeConstraint)
                              ;

// Structure Type
structureTypeDefinition       : STRUCTURE 
                                  structureComponentDefinition+ 
                                END STRUCTURE?                                            -> ^( STRUCTURE 
                                                                                                structureComponentDefinition+)
                              ;

structureComponentDefinition  : componentName COLON typeReference 
                                (ASSIGN defaultValue=constExpression)?
                                SEMI pragmaList                                           -> ^( COMPONENT_DEFINITION 
                                                                                                componentName 
                                                                                                typeReference 
                                                                                                $defaultValue?
                                                                                                pragmaList?)
                              ;

componentName                 : identifier                                                -> ^( COMPONENT_NAME identifier )
                              ;


// Enumeration Type
enumerationTypeDefinition     : ENUM LPAREN 
                                  enumerator ( COMMA enumerator )*
                                RPAREN                                                    -> ^( ENUM 
                                                                                                enumerator+)
                              ;

enumerator                    : enumeratorName ( (EQUAL|ASSIGN) constExpression )?        -> ^( ENUMERATOR 
                                                                                                enumeratorName 
                                                                                                constExpression? )
                              ;

enumeratorName                : identifier                                                -> ^( ENUMERATOR_NAME identifier )
                              ;


// Unconstrained array
unconstrainedArrayDefinition  : ARRAY LPAREN 
                                  indexType=indexTypeReference RANGE LTGT 
                                RPAREN 
                                OF arrayOf=typeReference                                  -> ^( UNCONSTRAINED_ARRAY[$ARRAY] 
                                                                                                $arrayOf 
                                                                                                $indexType)
                              ;


indexTypeReference            : namedTypeRef
                              ;

//---------------------------------------------------------
// Type Reference
//---------------------------------------------------------

/*
typeReference
                              : namedTypeRef                                              -> namedTypeRef
                              | instanceTypeRef                                           -> instanceTypeRef
                              | collectionTypeRef                                         -> collectionTypeRef
                              | deprecatedType                                            -> deprecatedType 
                              ;
                              */

typeReference
                              : named=namedTypeRef                                        -> TYPE_REF[$named.text]
                              | inst=instanceTypeRef                                      -> TYPE_REF[$inst.text]
                              | col=collectionTypeRef                                     -> TYPE_REF[$col.text]
                              | depr=deprecatedType                                       -> TYPE_REF[$depr.text]
                              ;

typeReferenceWithCA           : typeReference                                             -> typeReference
                              | constrainedArrayTypeRef                                   -> constrainedArrayTypeRef
                              ;

deprecatedType                : INSTANCE                                                  -> ^(NAMED_TYPE ^( TYPE_NAME Identifier[$INSTANCE] ))
                              | EVENT                                                     -> ^(NAMED_TYPE ^( TYPE_NAME Identifier[$EVENT] ))
                              | SERVICE                                                   -> ^(NAMED_TYPE ^( TYPE_NAME Identifier[$SERVICE] ))
                              ;


qualifiedObjectName           : (domainName SCOPE)? objectName                            -> domainName? 
                                                                                             objectName
                              ;

instanceTypeRef               : ANONYMOUS? INSTANCE OF qualifiedObjectName                -> ^( INSTANCE 
                                                                                                qualifiedObjectName
                                                                                                ANONYMOUS? )
                              ;

namedTypeRef                  : ANONYMOUS? (domainName SCOPE)? typeName                   -> ^( NAMED_TYPE 
                                                                                                domainName? 
                                                                                                typeName
                                                                                                ANONYMOUS? )
                              ;

userDefinedTypeRef            : (domainName SCOPE)? typeName                              -> ^( NAMED_TYPE 
                                                                                                domainName? 
                                                                                                typeName )
                              ;

constrainedArrayTypeRef       : userDefinedTypeRef arrayBounds                            -> ^( CONSTRAINED_ARRAY 
                                                                                                userDefinedTypeRef 
                                                                                                arrayBounds)
                              ;

typeName                      : identifier                                                -> ^( TYPE_NAME 
                                                                                                identifier);

arrayBounds                   : LPAREN expression RPAREN                                  -> ^( ARRAY_BOUNDS[$LPAREN] 
                                                                                                expression)
                              ;



collectionTypeRef             : ANONYMOUS? SEQUENCE 
                              		(LPAREN expression RPAREN)? OF typeReference            -> ^( SEQUENCE 
                                                                                                typeReference 
                                                                                                expression?
                                                                                                ANONYMOUS? )
                              | ANONYMOUS? ARRAY arrayBounds OF typeReference             -> ^( ARRAY 
                                                                                                typeReference 
                                                                                                arrayBounds
                                                                                                ANONYMOUS? )
                              | ANONYMOUS? SET OF typeReference                           -> ^( SET 
                                                                                                typeReference
                                                                                                ANONYMOUS? )
                              | ANONYMOUS? BAG OF typeReference                           -> ^( BAG 
                                                                                                typeReference
                                                                                                ANONYMOUS? )
                              | ANONYMOUS? DICTIONARY 
                                ( dictKeyType? OF dictValueType )?                        -> ^( DICTIONARY 
                                                                                                dictKeyType?
                                                                                                dictValueType?
                                                                                                ANONYMOUS? )
                              ;

dictKeyType                   : namedTypeRef																							-> ^( KEY namedTypeRef )
															| instanceTypeRef																					  -> ^( KEY instanceTypeRef )
															;

dictValueType                 : typeReference																							-> ^( VALUE typeReference )
															;

//---------------------------------------------------------
// Terminator Definition
//---------------------------------------------------------

terminatorName                : identifier                                                -> ^( TERMINATOR_NAME 
                                                                                                identifier )
                              ;

terminatorDefinition          : description
                                startDec=TERMINATOR terminatorName IS
                                  terminatorItem*
                                END TERMINATOR? SEMI pragmaList                           -> ^( TERMINATOR_DEFINITION[$startDec] 
                                                                                                terminatorName 
                                                                                                description
                                                                                                pragmaList?
                                                                                                terminatorItem* )
                              ;

terminatorItem                : terminatorServiceDeclaration
                              | terminatorFunctionDeclaration
                              ;


terminatorServiceDeclaration  : description serviceVisibility SERVICE serviceName 
                                  parameterList SEMI pragmaList                           -> ^( TERMINATOR_SERVICE_DECLARATION[$SERVICE] 
                                                                                                serviceVisibility 
                                                                                                serviceName 
                                                                                                description
                                                                                                parameterList?
                                                                                                pragmaList? )
                              ;

terminatorFunctionDeclaration : description serviceVisibility FUNCTION serviceName 
                                  parameterList RETURN returnType 
                                  SEMI pragmaList                                         -> ^( TERMINATOR_SERVICE_DECLARATION[$FUNCTION] 
                                                                                                serviceVisibility 
                                                                                                serviceName 
                                                                                                description
                                                                                                parameterList?
                                                                                                returnType
                                                                                                pragmaList? )
                              ;

//---------------------------------------------------------
// Object Definition
//---------------------------------------------------------

objectName                    : identifier                                                -> ^( OBJECT_NAME 
                                                                                                identifier )
                              ;

attributeName                 : identifier                                                -> ^( ATTRIBUTE_NAME 
                                                                                                identifier )
                              ;

objectDeclaration             : description OBJECT objectName SEMI pragmaList             -> ^( OBJECT_DECLARATION[$OBJECT] 
                                                                                                objectName 
                                                                                                pragmaList?)
                              ;


objectDefinition              : description
                                startDec=OBJECT objectName IS
                                  objectItem*
                                END OBJECT? SEMI pragmaList                               -> ^( OBJECT_DEFINITION[$startDec] 
                                                                                                objectName 
                                                                                                objectItem* 
                                                                                                description
                                                                                                pragmaList?)
                              ;

objectItem                    : attributeDefinition
                              | identifierDefinition
                              | objectServiceDeclaration
                              | objectFunctionDeclaration
                              | eventDefinition
                              | stateDeclaration
                              | transitionTable
                              ;

attributeDefinition           : description
                                attributeName COLON 
                                attModifiers attReferentials? typeReference 
                                (ASSIGN defaultValue=constExpression)? 
                                SEMI pragmaList                                           -> ^( ATTRIBUTE_DEFINITION[$defaultValue.text]
                                                                                                attributeName 
                                                                                                attModifiers? 
                                                                                                attReferentials? 
                                                                                                description
                                                                                                typeReference 
                                                                                                $defaultValue? 
                                                                                                pragmaList?)
                              ;

attModifiers                  : PREFERRED? UNIQUE?;

attReferentials               : REFERENTIAL 
                                LPAREN
                                  attReferential ( COMMA attReferential )*
                                RPAREN                                                    -> attReferential+
                              ;

attReferential                : relationshipSpec 
                                DOT attributeName                                         -> ^( REFERENTIAL
                                                                                                relationshipSpec 
                                                                                                attributeName )
                              ;

relationshipSpec              : relationshipName
                                  ( DOT objOrRole=identifier
                                    (DOT objectName)?
                                  )?                                                      -> ^( RELATIONSHIP_SPEC 
                                                                                                relationshipName 
                                                                                                $objOrRole? 
                                                                                                objectName?)
                              ;


objectServiceDeclaration      : description serviceVisibility serviceType SERVICE serviceName 
                                  parameterList SEMI pragmaList                           -> ^( OBJECT_SERVICE_DECLARATION[$SERVICE] 
                                                                                                serviceVisibility 
                                                                                                serviceType? 
                                                                                                serviceName 
                                                                                                description
                                                                                                parameterList? 
                                                                                                pragmaList?
                                                                                                )
                              ;

objectFunctionDeclaration     : description serviceVisibility serviceType FUNCTION serviceName 
                                  parameterList 
                                  RETURN returnType SEMI pragmaList                       -> ^( OBJECT_SERVICE_DECLARATION[$FUNCTION] 
                                                                                                serviceVisibility 
                                                                                                serviceType? 
                                                                                                serviceName
                                                                                                description
                                                                                                parameterList?
                                                                                                returnType 
                                                                                                pragmaList?)
                              ;

serviceType                   : (INSTANCE (DEFERRED LPAREN relationshipName RPAREN)?)?  -> (INSTANCE relationshipName?)?
                              ;

identifierDefinition          : IDENTIFIER IS
                                LPAREN 
                                attributeName ( COMMA attributeName )*
                                RPAREN SEMI pragmaList                                    -> ^( IDENTIFIER 
                                                                                                attributeName+ 
                                                                                                pragmaList?)
                              ;

eventDefinition               : description eventType EVENT eventName parameterList SEMI pragmaList   -> ^( EVENT
                                                                                                eventName
                                                                                                eventType 
                                                                                                description
                                                                                                parameterList?
                                                                                                pragmaList?
                                                                                              )
                              ; 
eventName                     : identifier                                                -> ^( EVENT_NAME 
                                                                                                identifier );

eventType                     : ASSIGNER                                                  -> ASSIGNER
                              | CREATION                                                  -> CREATION
                              | /* blank */                                               -> NORMAL
                              ;

stateDeclaration              : description stateType STATE stateName parameterList SEMI pragmaList  -> ^( STATE 
                                                                                                stateName  
                                                                                                stateType 
                                                                                                description
                                                                                                parameterList?
                                                                                                pragmaList? )
                              ; 

stateName                     : identifier                                                -> ^( STATE_NAME 
                                                                                                identifier);

stateType                     : ASSIGNER                                                  -> ASSIGNER
                              | ASSIGNER START                                            -> START[$ASSIGNER.text + " " + $START.text]
                              | CREATION                                                  -> CREATION
                              | TERMINAL                                                  -> TERMINAL
                              | /* blank */                                               -> NORMAL
                              ;


transitionTable               : transTableType st=TRANSITION IS 
                                  transitionRow+ 
                                END TRANSITION SEMI pragmaList                            -> ^( TRANSITION_TABLE[$st] 
                                                                                                transTableType 
                                                                                                transitionRow+ 
                                                                                                pragmaList?)
                              ;


transTableType                : ASSIGNER                                                  -> ASSIGNER
                              | /* blank */                                               -> NORMAL
                              ;

transitionRow                : startState
                                LPAREN 
                                  transitionOption (COMMA transitionOption)*
                                RPAREN SEMI pragmaList                                    -> ^( TRANSITION_ROW 
                                                                                                startState 
                                                                                                transitionOption+
                                                                                                pragmaList?)
                              ;

transitionOption              : incomingEvent GOES_TO endState                            -> ^( TRANSITION_OPTION 
                                                                                                incomingEvent
                                                                                                endState )
                              ;

incomingEvent                 : (objectName DOT)? eventName                               -> ^( EVENT 
                                                                                                objectName? 
                                                                                                eventName)
                              ;

startState                    : NON_EXISTENT                                              -> NON_EXISTENT
                              | stateName                                                 -> stateName
                              ;

endState                      : stateName                                                 -> stateName
                              | IGNORE                                                    -> IGNORE
                              | CANNOT_HAPPEN                                             -> CANNOT_HAPPEN
                              ;

//---------------------------------------------------------
// Service Declaration
//---------------------------------------------------------

domainServiceDeclaration      : description serviceVisibility SERVICE serviceName 
                                  parameterList SEMI pragmaList                           -> ^( DOMAIN_SERVICE_DECLARATION[$SERVICE] 
                                                                                                serviceVisibility 
                                                                                                serviceName 
                                                                                                description
                                                                                                parameterList?
                                                                                                pragmaList? )
                              ;

domainFunctionDeclaration     : description serviceVisibility FUNCTION serviceName 
                                  parameterList 
                                  RETURN returnType SEMI pragmaList                       -> ^( DOMAIN_SERVICE_DECLARATION[$FUNCTION]
                                                                                                serviceVisibility 
                                                                                                serviceName 
                                                                                                description
                                                                                                parameterList?
                                                                                                returnType 
                                                                                                pragmaList? )
                              ;


parameterList                 : LPAREN
                                  parameterDefinition? ( COMMA parameterDefinition )*                          
                                RPAREN                                                    -> parameterDefinition*
                              ;


parameterDefinition           : parameterName COLON parameterMode parameterType           -> ^( PARAMETER_DEFINITION 
                                                                                                parameterName 
                                                                                                parameterMode 
                                                                                                parameterType )
                              ;


serviceVisibility             : PRIVATE                                                   -> PRIVATE
                              | PUBLIC                                                    -> PUBLIC
                              | /* blank */                                               -> PUBLIC
                              ;
        
parameterMode                 : IN
                              | OUT
                              ;


serviceName                   : identifier                                                -> ^( SERVICE_NAME 
                                                                                                identifier )
                              ;

parameterName                 : identifier                                                -> ^( PARAMETER_NAME 
                                                                                                identifier)
                              ;

parameterType                 : typeReference                                             -> ^( PARAMETER_TYPE 
                                                                                                typeReference)
                              ;

returnType                    : typeReference                                             -> ^( RETURN_TYPE    
                                                                                                typeReference)
                              ;






//---------------------------------------------------------
// Relationship Definition
//---------------------------------------------------------

relationshipName              : RelationshipName                                           -> ^(RELATIONSHIP_NAME RelationshipName)
                              ;

relationshipDefinition        : description RELATIONSHIP relationshipName IS
                                ( regularRelationshipDefinition SEMI pragmaList           -> ^( REGULAR_RELATIONSHIP_DEFINITION[$RELATIONSHIP] 
                                                                                                relationshipName 
                                                                                                description
                                                                                                regularRelationshipDefinition 
                                                                                                pragmaList? )
                                | assocRelationshipDefinition SEMI pragmaList             -> ^( ASSOCIATIVE_RELATIONSHIP_DEFINITION[$RELATIONSHIP]
                                                                                                relationshipName 
                                                                                                description
                                                                                                assocRelationshipDefinition 
                                                                                                pragmaList? )
                                | subtypeRelationshipDefinition SEMI pragmaList           -> ^( SUBTYPE_RELATIONSHIP_DEFINITION[$RELATIONSHIP] 
                                                                                                relationshipName 
                                                                                                description
                                                                                                subtypeRelationshipDefinition 
                                                                                                pragmaList? )
                                )
                              ;



regularRelationshipDefinition : forwards=halfRelationshipDefinition COMMA 
                                backwards=halfRelationshipDefinition                      -> $forwards $backwards
                              ;
        

assocRelationshipDefinition   : forwards=halfRelationshipDefinition COMMA 
                                backwards=halfRelationshipDefinition                      
                                USING ONE? objectName                                     -> $forwards $backwards objectName
                              ;

halfRelationshipDefinition    : from=objectName conditionality rolePhrase 
                                multiplicity to=objectName                                -> ^( HALF_RELATIONSHIP 
                                                                                                $from 
                                                                                                conditionality 
                                                                                                rolePhrase 
                                                                                                multiplicity 
                                                                                                $to )
                              ;


subtypeRelationshipDefinition : supertype=objectName IS_A 
                                LPAREN
                                  sub+=objectName ( COMMA sub+=objectName )*
                                RPAREN                                                    -> $supertype $sub+
                              ;

rolePhrase                    : identifier                                                -> ^( ROLE_PHRASE 
                                                                                                identifier )
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


pragmaList                    : (pragma SEMI)*                                            -> pragma*
                              ;

pragma                        : PRAGMA pragmaName 
                                LPAREN
                                  (pragmaValue (COMMA pragmaValue)*)? 
                                RPAREN                                                    -> ^( PRAGMA 
                                                                                                pragmaName 
                                                                                                pragmaValue*)
                              ;

pragmaValue                   : identifier
                              | literal
                              ;

pragmaName                    : identifier                                                -> ^( PRAGMA_NAME
                                                                                                identifier )
                              ;

//---------------------------------------------------------
// Descriptions
//---------------------------------------------------------

description                   : Description*                                              -> ^( DESCRIPTION
                                                                                                Description* )
                              ;

//---------------------------------------------------------
// Dynamic Behaviour
//---------------------------------------------------------



domainServiceDefinition       : description
                                serviceVisibility serv=SERVICE 
                                domainName SCOPE serviceName 
                                parameterList IS 
                                codeBlock 
                                SERVICE? SEMI pragmaList                                  -> ^( DOMAIN_SERVICE_DEFINITION[$serv]
                                                                                                serviceVisibility 
                                                                                                domainName 
                                                                                                serviceName 
                                                                                                parameterList?  
                                                                                                codeBlock 
                                                                                                pragmaList? )                               
                              ;

domainFunctionDefinition      : description
                                serviceVisibility func=FUNCTION 
                                  domainName SCOPE serviceName 
                                  parameterList 
                                  RETURN returnType IS codeBlock 
                                FUNCTION? SEMI pragmaList                                 -> ^( DOMAIN_SERVICE_DEFINITION[$func]
                                                                                                serviceVisibility 
                                                                                                domainName 
                                                                                                serviceName 
                                                                                                parameterList? 
                                                                                                returnType  
                                                                                                codeBlock 
                                                                                                pragmaList? )
                              ;



objectServiceDefinition       : description
                                serviceVisibility INSTANCE? serv=SERVICE 
                                  domainName SCOPE objectName DOT serviceName 
                                  parameterList IS codeBlock 
                                SERVICE? SEMI pragmaList                                  -> ^( OBJECT_SERVICE_DEFINITION[$serv]
                                                                                                serviceVisibility 
                                                                                                INSTANCE? 
                                                                                                domainName 
                                                                                                objectName 
                                                                                                serviceName 
                                                                                                parameterList?  
                                                                                                codeBlock 
                                                                                                pragmaList? )
                              ;

terminatorServiceDefinition   : description
                                serviceVisibility serv=SERVICE 
                                domainName SCOPE terminatorName TERMINATOR_SCOPE serviceName 
                                parameterList IS 
                                codeBlock 
                                SERVICE? SEMI pragmaList                                  -> ^( TERMINATOR_SERVICE_DEFINITION[$serv]
                                                                                                serviceVisibility 
                                                                                                domainName
                                                                                                terminatorName 
                                                                                                serviceName 
                                                                                                parameterList? 
                                                                                                codeBlock 
                                                                                                pragmaList? )                               
                              ;

terminatorFunctionDefinition  : description
                                serviceVisibility func=FUNCTION 
                                domainName SCOPE terminatorName TERMINATOR_SCOPE serviceName 
                                parameterList RETURN returnType IS 
                                codeBlock 
                                FUNCTION? SEMI pragmaList                                 -> ^( TERMINATOR_SERVICE_DEFINITION[$func]
                                                                                                serviceVisibility 
                                                                                                domainName
                                                                                                terminatorName 
                                                                                                serviceName 
                                                                                                parameterList?  
                                                                                                returnType
                                                                                                codeBlock 
                                                                                                pragmaList? )                               
                              ;


objectFunctionDefinition      : description
                                serviceVisibility serviceType func=FUNCTION 
                                  domainName SCOPE objectName DOT serviceName 
                                  parameterList 
                                  RETURN returnType IS codeBlock 
                                FUNCTION? SEMI pragmaList                                 -> ^( OBJECT_SERVICE_DEFINITION[$func]
                                                                                                serviceVisibility 
                                                                                                serviceType? 
                                                                                                domainName 
                                                                                                objectName 
                                                                                                serviceName 
                                                                                                parameterList? 
                                                                                                returnType  
                                                                                                codeBlock 
                                                                                                pragmaList? )
                              ;


stateDefinition               : description
                                stateType STATE 
                                domainName SCOPE objectName DOT stateName 
                                parameterList IS codeBlock 
                                STATE? SEMI pragmaList                                    -> ^( STATE_DEFINITION 
                                                                                                stateType 
                                                                                                domainName 
                                                                                                objectName 
                                                                                                stateName 
                                                                                                parameterList? 
                                                                                                codeBlock 
                                                                                                pragmaList? )
                              ; 



//---------------------------------------------------------
// Statements
//---------------------------------------------------------

statementList                 : statement*                                                -> ^( STATEMENT_LIST statement* )
                              ;



statement                     : ( codeBlockStatement                                      -> codeBlockStatement
                                | ( expression ASSIGN )=> assignStatement                 -> assignStatement      
                                | ( expression streamOperator )=> streamStatement         -> streamStatement
                                | ( NULL ) => nullStatement                               -> nullStatement?
                                | ( callStatement )=> callStatement											  -> callStatement
                                | exitStatement                                           -> exitStatement
                                | returnStatement                                         -> returnStatement
                                | delayStatement                                          -> delayStatement
                                | raiseStatement                                          -> raiseStatement
                                | deleteStatement                                         -> deleteStatement
                                | eraseStatement                                          -> eraseStatement
                                | linkStatement                                           -> linkStatement
                                | scheduleStatement                                       -> scheduleStatement
                                | cancelTimerStatement                                    -> cancelTimerStatement
                                | generateStatement                                       -> generateStatement
                                | ifStatement                                             -> ifStatement
                                | caseStatement                                           -> caseStatement
                                | forStatement                                            -> forStatement
                                | whileStatement                                          -> whileStatement
                                | emptyStatement                                          -> emptyStatement?
                                )
                                SEMI pragmaList                                           -> ^( STATEMENT 
                                                                                                $statement 
                                                                                                pragmaList?)
                              ;

emptyStatement								:
                              ;

nullStatement                 : NULL ->
                              ;
                              
assignStatement               : lhs=expression ASSIGN rhs=expression                     -> ^( ASSIGN $lhs $rhs )
                              ;
                              
streamOperator                : STREAM_IN 
                              | STREAM_OUT 
                              | STREAM_LINE_IN 
                              | STREAM_LINE_OUT
                              ;
                              
streamValue                   : streamOperator expression                                 -> ^( streamOperator expression )
                              ;                             
                                
streamStatement               : expression streamValue+                                   -> ^( STREAM_STATEMENT expression streamValue+ )  
															;

callStatement                 : ( primaryExpression                                       -> primaryExpression
                                )
                                ( ( DOT identifier                                          -> ^( DOT $callStatement identifier )
                                  | TERMINATOR_SCOPE identifier                             -> ^( TERMINATOR_SCOPE $callStatement identifier )
                                  | LBRACKET expression RBRACKET                            -> ^( SLICE[$LBRACKET] $callStatement expression)
                                  | PRIME characteristic                                    -> ^( PRIME $callStatement characteristic )
                                  )*
                                 LPAREN argumentList RPAREN                                 -> ^( CALL[$LPAREN] $callStatement argumentList? )                                 
                                )+ 
                              ;

exitStatement                 : EXIT (WHEN condition)?                                    -> ^( EXIT 
                                                                                                condition?)
                              ;

returnStatement               : RETURN expression                                         -> ^( RETURN 
                                                                                                expression)
                              ;

delayStatement                : DELAY expression                                          -> ^( DELAY 
                                                                                                expression)
                              ;

raiseStatement                : RAISE qualifiedExceptionName 
                                      ( LPAREN expression? RPAREN )?                       -> ^( RAISE 
                                                                                                qualifiedExceptionName
                                                                                                expression? )
                              ;

deleteStatement               : DELETE expression                                         -> ^( DELETE 
                                                                                                expression)
                              ;

eraseStatement                : ERASE expression                                         -> ^( ERASE 
                                                                                                expression)
                              ;

linkStatement                 : linkType
                                lhs=navigateExpression relationshipSpec 
                                ( 
                                  rhs=navigateExpression 
                                  (USING assoc=navigateExpression)? 
                                )?                                                        -> ^( linkType 
                                                                                                $lhs 
                                                                                                relationshipSpec 
                                                                                                $rhs? 
                                                                                                $assoc?)
                              ;
                              
linkType                      : LINK
                              | UNLINK
                              ;

                              
scheduleStatement	            : SCHEDULE timerId=expression 
                                generateStatement 
                                scheduleType time=expression (DELTA period=expression)?    -> ^( SCHEDULE 
                                                                                                $timerId
                                                                                                generateStatement
                                                                                                scheduleType
                                                                                                $time
                                                                                                $period? )
                              ;

cancelTimerStatement          : CANCEL timerId=expression                                 -> ^( CANCEL 
                                                                                                $timerId )
                              ;

                              
scheduleType                  : AT 
                              | DELAY
                              ;
                                  

generateStatement             : GENERATE qualifiedEventName
                                LPAREN argumentList RPAREN (TO expression)?               -> ^( GENERATE 
                                                                                                qualifiedEventName 
                                                                                                argumentList? 
                                                                                                expression? )
                              ;


qualifiedEventName            : (qualifiedObjectName DOT)? eventName                      ->  qualifiedObjectName? 
                                                                                              eventName
                              ;


ifStatement                   : IF condition THEN
                                  statementList
                                elsifBlock*
                                elseBlock?
                                END IF?                                                   -> ^( IF 
                                                                                                condition 
                                                                                                statementList 
                                                                                                elsifBlock* 
                                                                                                elseBlock? )
                              ;
 

elsifBlock                    : ELSIF condition THEN
                                  statementList                                           -> ^( ELSIF 
                                                                                                condition 
                                                                                                statementList)
                              ;

elseBlock                     : ELSE statementList                                        -> ^( ELSE 
                                                                                                statementList )
                              ;


whileStatement                : WHILE condition
                                LOOP
                                 statementList
                                END LOOP?                                                 -> ^( WHILE 
                                                                                                condition 
                                                                                                statementList )
                              ;

condition                     : expression                                                -> ^( CONDITION 
                                                                                                expression )
                              ;


caseStatement                 : CASE expression IS
                                 caseAlternative*
                                 caseOthers?
                                END CASE?                                                 -> ^( CASE 
                                                                                                expression 
                                                                                                caseAlternative* 
                                                                                                caseOthers? )
                              ;

caseAlternative               : WHEN choiceList GOES_TO statementList                     -> ^( WHEN 
                                                                                                choiceList 
                                                                                                statementList )
                              ;

choiceList                    : expression (CASE_OR expression)*                          -> ^( CHOICE 
                                                                                                expression)+
                              ;

caseOthers                    : WHEN OTHERS GOES_TO statementList                         -> ^( OTHERS 
                                                                                                statementList)
                              ;

forStatement                  : FOR loopVariableSpec
                                LOOP
                                  statementList
                                END LOOP?                                                 -> ^( FOR 
                                                                                                loopVariableSpec 
                                                                                                statementList )
                              ;

loopVariableSpec              : identifier IN REVERSE? expression                         -> ^( LOOP_VARIABLE 
                                                                                                identifier 
                                                                                                REVERSE? 
                                                                                                expression )
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
                                END                                                       -> ^( CODE_BLOCK[$BEGIN]
                                                                                                variableDeclaration* 
                                                                                                statementList 
                                                                                                exceptionHandler* 
                                                                                                otherHandler? )
                              ;

codeBlock                     :   variableDeclaration*
                                BEGIN
                                  statementList
                                (EXCEPTION
                                  exceptionHandler*
                                  otherHandler?)?
                                END                                                       -> ^( CODE_BLOCK[$BEGIN] 
                                                                                                variableDeclaration* 
                                                                                                statementList 
                                                                                                exceptionHandler* 
                                                                                                otherHandler? )
                              ;

variableDeclaration           : variableName COLON 
                                READONLY? typeReferenceWithCA 
                                (ASSIGN expression)? 
                                SEMI pragmaList                                           -> ^( VARIABLE_DECLARATION 
                                                                                                variableName 
                                                                                                READONLY? 
                                                                                                typeReferenceWithCA 
                                                                                                expression? 
                                                                                                pragmaList? )
                              ;


exceptionHandler              : WHEN qualifiedExceptionName GOES_TO statementList         -> ^( EXCEPTION_HANDLER 
                                                                                                qualifiedExceptionName 
                                                                                                statementList)
                              ;

otherHandler                  : WHEN OTHERS GOES_TO statementList                         -> ^( OTHER_HANDLER[$OTHERS] 
                                                                                                statementList)
                              ;

qualifiedExceptionName        : (domainName SCOPE)? exceptionName                         ->  domainName? 
                                                                                              exceptionName
                              ; 

variableName                  : identifier                                                -> ^( VARIABLE_NAME
                                                                                             identifier )
                              ;


//---------------------------------------------------------
// Find Condition Definition
//---------------------------------------------------------

findCondition                     : findLogicalOr;

findLogicalOr                     : findLogicalXor ( OR^ findLogicalXor )*;

findLogicalXor                    : findLogicalAnd ( XOR^ findLogicalAnd )*;

findLogicalAnd                    : findPrimary ( AND^ findPrimary )*;


findPrimary                       : findComparison
                                  | findUnary
                                  ;

findUnary                         : NOT^ findUnary
                                  | LPAREN findCondition RPAREN                           -> findCondition
                                  ;

findComparison                    : findName ( EQUAL | NOT_EQUAL | LT | GT | LTE | GTE  )^ additiveExp;

findName                          : ( att=identifier                                      -> ^( FIND_ATTRIBUTE $att )
                                    )
                                    ( DOT comp=identifier                                 -> ^( DOT $findName $comp )
                                    | LBRACKET expression RBRACKET                        -> ^( SLICE[$LBRACKET] $findName expression)
                                    )*
                                  ;

//---------------------------------------------------------
// Expression Definition
//---------------------------------------------------------

constExpression               : expression;


expression                    : rangeExpression;

rangeExpression               : logicalOr (RANGE_DOTS^ logicalOr)?;

logicalOr                     : logicalXor ( OR^ logicalXor )*;

logicalXor                    : logicalAnd ( XOR^ logicalAnd )*;

logicalAnd                    : equality   ( AND^ equality )*;

equality                      : relationalExp ( ( EQUAL | NOT_EQUAL )^ relationalExp )*; 
 
relationalExp                 : additiveExp ( ( LT | GT | LTE | GTE )^ additiveExp )*;

additiveExp                   : multExp ( ( PLUS | MINUS | CONCATENATE | UNION | NOT_IN )^ multExp )*;


multExp                       : unaryExp (( TIMES | DIVIDE | MOD | POWER | REM | INTERSECTION | DISUNION )^ unaryExp )*;

unaryExp                      : unaryOperator exp=unaryExp                                -> ^( unaryOperator $exp )  
                              | linkExpression                                
                              ;

unaryOperator                 : MINUS                                                     -> UNARY_MINUS
                              | PLUS                                                      -> UNARY_PLUS
                              | NOT                                                       -> NOT
                              | ABS                                                       -> ABS
                              ;

linkExpression                : navigateExpression
														  | ( linkType
                                  lhs=navigateExpression relationshipSpec 
                                  (rhs=navigateExpression)?                               -> ^( linkType
                                                                                                $lhs 
                                                                                                relationshipSpec 
                                                                                                $rhs? )
                                )
                              ;														  

navigateExpression            : (extendedExpression                                       -> extendedExpression
                                )
                                ( NAVIGATE relationshipSpec whereClause?                  -> ^( NAVIGATE
                                                                                                $navigateExpression
                                                                                                relationshipSpec
                                                                                                whereClause? )
                                | WITH rhs=extendedExpression 
                                  nav=NAVIGATE relationshipSpec                           -> ^( CORRELATE[$nav]
                                                                                                $navigateExpression 
                                                                                                $rhs 
                                                                                                relationshipSpec)
                                | ORDERED_BY sortOrder                                    -> ^( ORDERED_BY 
                                                                                                $navigateExpression
                                                                                                sortOrder? ) 
                                | REVERSE_ORDERED_BY sortOrder                            -> ^( REVERSE_ORDERED_BY 
                                                                                                $navigateExpression
                                                                                                sortOrder? ) 
                                )*                                             
                              ;

extendedExpression            : postfixExpression
                              | createExpression
                              | findExpression
                              ;


sortOrder                     : LPAREN 
                                ( sortOrderComponent 
                                ( COMMA sortOrderComponent )* )?
                                RPAREN                                                    -> sortOrderComponent*
                              ;

sortOrderComponent            : REVERSE? identifier                                       -> ^( SORT_ORDER_COMPONENT 
                                                                                                REVERSE? 
                                                                                                identifier )
                              ;

createExpression              : CREATE UNIQUE? objectName createArgumentList              -> ^( CREATE 
                                                                                                objectName 
                                                                                                createArgumentList? )
                              ;

createArgumentList            : LPAREN 
                                (createArgument ( COMMA createArgument )*)? 
                                RPAREN                                                    -> createArgument*
                              ;

createArgument                : attributeName GOES_TO expression                          -> ^( CREATE_ARGUMENT
                                                                                                attributeName 
                                                                                                expression )
                              | CURRENT_STATE GOES_TO stateName                           -> ^( CURRENT_STATE 
                                                                                                stateName )
                              ;



findExpression                : findType postfixNoCallExpression 
                                whereClause                                               -> ^( findType 
                                                                                                postfixNoCallExpression 
                                                                                                whereClause )
                              ;
                              

whereClause                   : LPAREN findCondition? RPAREN                              -> ^( WHERE findCondition? )
                              ;

findType                      : FIND 
                              | FIND_ONE 
                              | FIND_ONLY
                              ;

postfixExpression             : ( primaryExpression                                       -> primaryExpression
                                )
                                ( l=LPAREN argumentList RPAREN                            -> ^( CALL[$l] $postfixExpression argumentList? )  
                                | DOT identifier                                          -> ^( DOT $postfixExpression identifier )
                                | TERMINATOR_SCOPE identifier                             -> ^( TERMINATOR_SCOPE $postfixExpression identifier )
                                | LBRACKET expression RBRACKET                            -> ^( SLICE[$LBRACKET] $postfixExpression expression)
                                | (PRIME characteristic LPAREN)=> 
                                  PRIME characteristic LPAREN al=argumentList RPAREN      -> ^( PRIME $postfixExpression characteristic $al? )
                                | PRIME characteristic                                    -> ^( PRIME $postfixExpression characteristic )
                                )*
                              ;

postfixNoCallExpression       : ( primaryExpression                                       -> primaryExpression
                                )
                                ( DOT identifier                                          -> ^( DOT $postfixNoCallExpression identifier )
                                | TERMINATOR_SCOPE identifier                             -> ^( TERMINATOR_SCOPE $postfixNoCallExpression identifier )
                                | LBRACKET expression RBRACKET                            -> ^( SLICE[$LBRACKET] $postfixNoCallExpression expression)
                                | PRIME characteristic                                    -> ^( PRIME $postfixNoCallExpression characteristic )
                                )*
                              ;

primaryExpression             : literal
                              | parenthesisedExpression
                              | nameExpression
                              | typeNameExpression
                              ;


typeNameExpression            : instanceTypeRef
                              | collectionTypeRef
                              ;

nameExpression                : (domainName SCOPE)? identifier                            -> ^(NAME domainName? identifier)
                              ;

parenthesisedExpression                
                              : LPAREN expression
                                ( ( COMMA expression )+                                   -> ^( AGGREGATE[$LPAREN] expression+)
                                |                                                         -> expression
                                )
                                RPAREN
                              ;


argumentList                  : (expression ( COMMA expression )*)?                       -> ^( ARGUMENT
                                                                                                expression )*
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
                              | characteristicRW                                         -> Identifier[$characteristicRW.start,$characteristicRW.text]
                              ;

characteristicRW              : RANGE | DELTA
                              ;
