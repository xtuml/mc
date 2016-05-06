parser grammar MaslSortParser;

options
{
  tokenVocab=MaslLexer;
  output=AST;
}

@annotations
{
@SuppressWarnings("all")
}

@header
{
import java.util.Collections;
import java.util.regex.*;
}

@members
{

// buffer for the file
private StringBuilder buf = null;

// public getter for buffer
public String getResult() {
    if ( buf == null ) return "";
    return buf.toString();
}

// private method to add to the buffer
private void appendChunk( StringBuilder block, ArrayList<String> chunk ) {
    if ( chunk == null || block == null ) return;

    // sort the chunk
    Collections.sort( chunk );

    // append each string to the block
    for ( String s : chunk ) {
        block.append( " " );
        block.append( s );
        block.append( "\n" );
    }
}

// private method for adding to the current chunk
private void addToChunk( ArrayList<String> chunk, String value ) {
    chunk.add( value );
}

}

target                        
@init { buf = new StringBuilder(); }
                              : definition+;

definition                    : projectDefinition
                              | domainDefinition { buf.append( $domainDefinition.result ); }
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

projectDefinition             : PROJECT projectName IS
                                 projectItem*
                                END PROJECT? SEMI pragmaList                              
                              ;

projectItem                   : domainPrjDefinition
                              ;

domainPrjDefinition
                              : DOMAIN domainName IS
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
returns[ String result ]
@init { 
  StringBuilder block = new StringBuilder();
  ArrayList<String> object_decl = new ArrayList<String>();
  ArrayList<String> type_decl = new ArrayList<String>();
  ArrayList<String> types = new ArrayList<String>();
  ArrayList<String> exceptions = new ArrayList<String>();
  ArrayList<String> services = new ArrayList<String>();
  ArrayList<String> terminators = new ArrayList<String>();
  ArrayList<String> relationships = new ArrayList<String>();
  ArrayList<String> objects = new ArrayList<String>();
  String begin = "";
  String end = "";
}
@after {
  appendChunk( block, object_decl );
  appendChunk( block, type_decl );
  appendChunk( block, types );
  appendChunk( block, exceptions );
  appendChunk( block, services );
  appendChunk( block, terminators );
  appendChunk( block, relationships );
  appendChunk( block, objects );
  $result = begin + " " + block.toString() + " " + end;
}
                              : domainDefinitionBegin { begin = $domainDefinitionBegin.text; }
                                (objectDeclaration { addToChunk( object_decl, $objectDeclaration.text ); }
                                | domainServiceDeclaration { addToChunk( services, $domainServiceDeclaration.result ); }        
                                | domainFunctionDeclaration { addToChunk( services, $domainFunctionDeclaration.result ); }       
                                | terminatorDefinition { addToChunk( terminators, $terminatorDefinition.result ); }       
                                | relationshipDefinition { addToChunk( relationships, $relationshipDefinition.result ); }
                                | objectDefinition { addToChunk( objects, $objectDefinition.result ); }
                                | typeForwardDeclaration { addToChunk( type_decl, $typeForwardDeclaration.text ); }
                                | typeDeclaration { addToChunk( types, $typeDeclaration.result ); }
                                | exceptionDeclaration { addToChunk( exceptions, $exceptionDeclaration.result ); } )*
                                domainDefinitionEnd { end = $domainDefinitionEnd.text; }
                              ; 

domainDefinitionBegin         : DOMAIN domainName IS
                              ;

domainDefinitionEnd           : END DOMAIN? SEMI pragmaList
                              ;

domainName                    : identifier                                                
                              ;


//---------------------------------------------------------
// Exception Declaration
//---------------------------------------------------------
exceptionDeclaration          
returns[String result]
@after {
    Matcher m = Pattern.compile( "public|private" ).matcher( $text );
    if ( !m.find() ) {
        $result = "public " + $text;    // if there is no public or private modifier, it is public
    }
    else {
        $result = $text;
    }
}
                              : exceptionVisibility EXCEPTION exceptionName 
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

typeForwardDeclaration        : typeVisibility TYPE typeName SEMI pragmaList              
                              ;

typeDeclaration
returns[String result]
@after {
    Matcher m = Pattern.compile( "public|private" ).matcher( $text );
    if ( !m.find() ) {
        $result = "public " + $text;    // if there is no public or private modifier, it is public
    }
    else {
        $result = $text;
    }
}
                              : typeVisibility TYPE typeName IS
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

/*
typeReference
                              : namedTypeRef                                              
                              | instanceTypeRef                                           
                              | collectionTypeRef                                         
                              | deprecatedType                                            
                              ;
                              */

typeReference
                              : named=namedTypeRef                                        
                              | inst=instanceTypeRef                                      
                              | col=collectionTypeRef                                     
                              | depr=deprecatedType                                       
                              ;

typeReferenceWithCA           : typeReference                                             
                              | constrainedArrayTypeRef                                   
                              ;

deprecatedType                : INSTANCE                                                  
                              | EVENT                                                     
                              | SERVICE                                                   
                              ;


qualifiedObjectName           : (domainName SCOPE)? objectName                            
                              ;

instanceTypeRef               : ANONYMOUS? INSTANCE OF qualifiedObjectName                
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



collectionTypeRef             : ANONYMOUS? SEQUENCE 
                              		(LPAREN expression RPAREN)? OF typeReference            
                              | ANONYMOUS? ARRAY arrayBounds OF typeReference             
                              | ANONYMOUS? SET OF typeReference                           
                              | ANONYMOUS? BAG OF typeReference                           
                              | ANONYMOUS? DICTIONARY 
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

terminatorDefinition          
returns[String result]
@init { 
  StringBuilder block = new StringBuilder();
  ArrayList<String> services = new ArrayList<String>();
  String begin = "";
  String end = "";
}
@after {
  appendChunk( block, services );
  $result = begin + " " + block.toString() + " " + end;
}
                              : terminatorDefinitionBegin { begin = $terminatorDefinitionBegin.text; }
                                (terminatorServiceDeclaration { addToChunk( services, $terminatorServiceDeclaration.result ); }
                                | terminatorFunctionDeclaration { addToChunk( services, $terminatorFunctionDeclaration.result ); } )*
                                terminatorDefinitionEnd { end = $terminatorDefinitionEnd.text; }
                              ;

terminatorDefinitionBegin     : TERMINATOR terminatorName IS
                              ;

terminatorDefinitionEnd       : END TERMINATOR? SEMI pragmaList                           
                              ;

terminatorServiceDeclaration  
returns[String result]
@after {
    Matcher m = Pattern.compile( "public|private" ).matcher( $text );
    if ( !m.find() ) {
        $result = "public " + $text;    // if there is no public or private modifier, it is public
    }
    else {
        $result = $text;
    }
}
                              : serviceVisibility SERVICE serviceName 
                                  parameterList SEMI pragmaList                           
                              ;

terminatorFunctionDeclaration 
returns[String result]
@after {
    Matcher m = Pattern.compile( "public|private" ).matcher( $text );
    if ( !m.find() ) {
        $result = "public " + $text;    // if there is no public or private modifier, it is public
    }
    else {
        $result = $text;
    }
}
                              : serviceVisibility FUNCTION serviceName 
                                  parameterList RETURN returnType 
                                  SEMI pragmaList                                         
                              ;

//---------------------------------------------------------
// Object Definition
//---------------------------------------------------------

objectName                    : identifier                                                
                              ;

attributeName                 : identifier                                                
                              ;

objectDeclaration             : OBJECT objectName SEMI pragmaList                         
                              ;


objectDefinition              
returns[ String result ]
@init { 
  StringBuilder block = new StringBuilder();
  ArrayList<String> attrs = new ArrayList<String>();
  ArrayList<String> ids = new ArrayList<String>();
  ArrayList<String> services = new ArrayList<String>();
  ArrayList<String> states = new ArrayList<String>();
  ArrayList<String> events = new ArrayList<String>();
  ArrayList<String> trans_tables = new ArrayList<String>();
  String begin = "";
  String end = "";
}
@after {
  appendChunk( block, attrs );
  appendChunk( block, ids );
  appendChunk( block, services );
  appendChunk( block, states );
  appendChunk( block, events );
  appendChunk( block, trans_tables );
  $result = begin + " " + block.toString() + " " + end;
}
                              : objectDefinitionBegin { begin = $objectDefinitionBegin.text; }
                                (attributeDefinition { addToChunk( attrs, $attributeDefinition.text ); }
                                | identifierDefinition { addToChunk( ids, $identifierDefinition.text ); }
                                | objectServiceDeclaration { addToChunk( services, $objectServiceDeclaration.result ); }
                                | objectFunctionDeclaration { addToChunk( services, $objectFunctionDeclaration.result ); }
                                | eventDefinition { addToChunk( events, $eventDefinition.text ); }
                                | stateDeclaration { addToChunk( states, $stateDeclaration.text ); }
                                | transitionTable { addToChunk( trans_tables, $transitionTable.result ); })*
                                objectDefinitionEnd { end = $objectDefinitionEnd.text; }
                              ;

objectDefinitionBegin         : startDec=OBJECT objectName IS
                              ;

objectDefinitionEnd          : END OBJECT? SEMI pragmaList                               
                              ;

attributeDefinition           : attributeName COLON 
                                attModifiers attReferentials? typeReference 
                                (ASSIGN defaultValue=constExpression)? 
                                SEMI pragmaList                                           
                              ;

attModifiers                  : PREFERRED? UNIQUE?;

attReferentials               : REFERENTIAL 
                                LPAREN
                                  attReferential ( COMMA attReferential )*
                                RPAREN                                                    
                              ;

attReferential                : relationshipSpec 
                                DOT attributeName                                         
                              ;

relationshipSpec              : relationshipName
                                  ( DOT objOrRole=identifier
                                    (DOT objectName)?
                                  )?                                                      
                              ;


objectServiceDeclaration      
returns[String result]
@after {
    Matcher m = Pattern.compile( "public|private" ).matcher( $text );
    if ( !m.find() ) {
        $result = "public " + $text;    // if there is no public or private modifier, it is public
    }
    else {
        $result = $text;
    }
}
                              : serviceVisibility serviceType SERVICE serviceName 
                                  parameterList SEMI pragmaList                           
                              ;

objectFunctionDeclaration     
returns[String result]
@after {
    Matcher m = Pattern.compile( "public|private" ).matcher( $text );
    if ( !m.find() ) {
        $result = "public " + $text;    // if there is no public or private modifier, it is public
    }
    else {
        $result = $text;
    }
}
                              : serviceVisibility serviceType FUNCTION serviceName 
                                  parameterList 
                                  RETURN returnType SEMI pragmaList                       
                              ;

serviceType                   : (INSTANCE (DEFERRED LPAREN relationshipName RPAREN)?)?  
                              ;

identifierDefinition          : IDENTIFIER IS
                                LPAREN 
                                attributeName ( COMMA attributeName )*
                                RPAREN SEMI pragmaList                                    
                              ;

eventDefinition               : eventType EVENT eventName parameterList SEMI pragmaList   
                              ; 
eventName                     : identifier                                                
                              ;

eventType                     : ASSIGNER                                                  
                              | CREATION                                                  
                              | /* blank */                                               
                              ;

stateDeclaration              : stateType STATE stateName parameterList SEMI pragmaList  
                              ; 

stateName                     : identifier                                                
                              ;

stateType                     : ASSIGNER                                                  
                              | ASSIGNER START                                            
                              | CREATION                                                  
                              | TERMINAL                                                  
                              | /* blank */                                               
                              ;


transitionTable               
returns[ String result ]
@init { 
  StringBuilder block = new StringBuilder();
  ArrayList<String> rows = new ArrayList<String>();
  String begin = "";
  String end = "";
}
@after {
  appendChunk( block, rows );
  $result = begin + "\n" + block.toString() + " " + end;
}
                              : transitionTableBegin { begin = $transitionTableBegin.text; }
                                  (transitionRow { addToChunk( rows, $transitionRow.result ); } )+ 
                                transitionTableEnd { end = $transitionTableEnd.text; }
                              ;

transitionTableBegin          : transTableType TRANSITION IS 
                              ;

transitionTableEnd            : END TRANSITION SEMI pragmaList                            
                              ;

transTableType                : ASSIGNER                                                  
                              | /* blank */                                               
                              ;

transitionRow
returns[String result]
@init {
  ArrayList<String> tos = new ArrayList<String>();
  String begin = "";
  String end = "";
}
@after {
  Collections.sort( tos );
  $result = begin;
  String separator = "";
  for ( String s : tos ) {
    $result += separator + s;
    separator = ",\n";
  }
  $result += end;
}
                              : transitionRowBegin { begin = $transitionRowBegin.text; }
                                  to=transitionOption { addToChunk( tos, $to.text ); } (COMMA next_to=transitionOption { addToChunk( tos, $next_to.text ); } )*
                                transitionRowEnd { end = $transitionRowEnd.text; }
                              ;

transitionRowBegin            : startState LPAREN 
                              ;

transitionRowEnd              : RPAREN SEMI pragmaList                                    
                              ;

transitionOption              : incomingEvent GOES_TO endState                            
                              ;

incomingEvent                 : (objectName DOT)? eventName                               
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

domainServiceDeclaration      
returns[String result]
@after {
    Matcher m = Pattern.compile( "public|private" ).matcher( $text );
    if ( !m.find() ) {
        $result = "public " + $text;    // if there is no public or private modifier, it is public
    }
    else {
        $result = $text;
    }
}
                              : serviceVisibility SERVICE serviceName 
                                  parameterList SEMI pragmaList                           
                              ;

domainFunctionDeclaration     
returns[String result]
@after {
    Matcher m = Pattern.compile( "public|private" ).matcher( $text );
    if ( !m.find() ) {
        $result = "public " + $text;    // if there is no public or private modifier, it is public
    }
    else {
        $result = $text;
    }
}
                              : serviceVisibility FUNCTION serviceName 
                                  parameterList 
                                  RETURN returnType SEMI pragmaList                       
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

relationshipDefinition        
returns[String result]
                              : relationshipDefinitionBegin
                                ( regularRelationshipDefinition { $result = $relationshipDefinitionBegin.text + " " + $regularRelationshipDefinition.result; }
                                | assocRelationshipDefinition { $result = $relationshipDefinitionBegin.text + " " + $assocRelationshipDefinition.result; }
                                | subtypeRelationshipDefinition { $result = $relationshipDefinitionBegin.text + " " + $subtypeRelationshipDefinition.result; }
                                ) SEMI pragmaList { $result += ";" + $pragmaList.text; }
                              ;

relationshipDefinitionBegin   : RELATIONSHIP relationshipName IS
                              ;


regularRelationshipDefinition 
returns[String result]
                              : forwards=halfRelationshipDefinition COMMA 
                                backwards=halfRelationshipDefinition
                                                                        {
                                                                            if ( $forwards.text.compareTo( $backwards.text ) <= 0 ) {
                                                                              $result = $forwards.text + "," + $backwards.text;
                                                                            }
                                                                            else {
                                                                              $result = $backwards.text + "," + $forwards.text;
                                                                            }
                                                                        }
                              ;
        

assocRelationshipDefinition   
returns[String result]
                              : forwards=halfRelationshipDefinition COMMA 
                                backwards=halfRelationshipDefinition                      
                                assocRelationshipDefinitionUsing
                                                                        {
                                                                            if ( $forwards.text.compareTo( $backwards.text ) <= 0 ) {
                                                                              $result = $forwards.text + "," + $backwards.text + " " + $assocRelationshipDefinitionUsing.text;
                                                                            }
                                                                            else {
                                                                              $result = $backwards.text + "," + $forwards.text + " " + $assocRelationshipDefinitionUsing.text;
                                                                            }
                                                                        }
                              ;

assocRelationshipDefinitionUsing
                              : USING ONE? objectName                                     
                              ;

halfRelationshipDefinition    : from=objectName conditionality rolePhrase 
                                multiplicity to=objectName                                
                              ;


subtypeRelationshipDefinition 
returns[String result]
@init {
  ArrayList<String> subtypes = new ArrayList<String>();
  String begin = "";
}
@after {
  Collections.sort( subtypes );
  $result = begin + " ( ";
  String separator = "";
  for ( String s : subtypes ) {
    $result += separator + s;
    separator = ",";
  }
  $result += " ) ";
}
                              : subtypeRelationshipDefinitionBegin { begin = $subtypeRelationshipDefinitionBegin.text; }
                                LPAREN
                                  sub=objectName { addToChunk( subtypes, $sub.text ); }
                                  ( COMMA next_sub=objectName { addToChunk( subtypes, $next_sub.text ); } )*
                                RPAREN                                                    
                              ;

subtypeRelationshipDefinitionBegin
                              : supertype=objectName IS_A 
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
// Dynamic Behaviour
//---------------------------------------------------------



domainServiceDefinition       : serviceVisibility serv=SERVICE 
                                domainName SCOPE serviceName 
                                parameterList IS 
                                codeBlock 
                                SERVICE? SEMI pragmaList                                  
                              ;

domainFunctionDefinition      : serviceVisibility func=FUNCTION 
                                  domainName SCOPE serviceName 
                                  parameterList 
                                  RETURN returnType IS codeBlock 
                                FUNCTION? SEMI pragmaList                                 
                              ;



objectServiceDefinition       : serviceVisibility INSTANCE? serv=SERVICE 
                                  domainName SCOPE objectName DOT serviceName 
                                  parameterList IS codeBlock 
                                SERVICE? SEMI pragmaList                                  
                              ;

terminatorServiceDefinition   : serviceVisibility serv=SERVICE 
                                domainName SCOPE terminatorName TERMINATOR_SCOPE serviceName 
                                parameterList IS 
                                codeBlock 
                                SERVICE? SEMI pragmaList                                  
                              ;

terminatorFunctionDefinition  : serviceVisibility func=FUNCTION 
                                domainName SCOPE terminatorName TERMINATOR_SCOPE serviceName 
                                parameterList RETURN returnType IS 
                                codeBlock 
                                FUNCTION? SEMI pragmaList                                 
                              ;


objectFunctionDefinition      : serviceVisibility serviceType func=FUNCTION 
                                  domainName SCOPE objectName DOT serviceName 
                                  parameterList 
                                  RETURN returnType IS codeBlock 
                                FUNCTION? SEMI pragmaList                                 
                              ;


stateDefinition               : stateType STATE 
                                domainName SCOPE objectName DOT stateName 
                                parameterList IS codeBlock 
                                STATE? SEMI pragmaList                                    
                              ; 



//---------------------------------------------------------
// Statements
//---------------------------------------------------------

statementList                 : statement*                                                
                              ;



statement                     : ( codeBlockStatement                                      
                                | ( expression ASSIGN )=> assignStatement                 
                                | ( expression streamOperator )=> streamStatement         
                                | ( NULL ) => nullStatement                               
                                | ( callStatement )=> callStatement											  
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

emptyStatement								:
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
                                
streamStatement               : expression streamValue+                                   
			      ;

callStatement                 : ( primaryExpression                                       
                                )
                                ( ( DOT identifier                                          
                                  | TERMINATOR_SCOPE identifier                             
                                  | LBRACKET expression RBRACKET                            
                                  | PRIME characteristic                                    
                                  )*
                                 LPAREN argumentList RPAREN                                 
                                )+ 
                              ;

exitStatement                 : EXIT (WHEN condition)?                                    
                              ;

returnStatement               : RETURN expression                                         
                              ;

delayStatement                : DELAY expression                                          
                              ;

raiseStatement                : RAISE qualifiedExceptionName 
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

                              
scheduleStatement	            : SCHEDULE timerId=expression 
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


qualifiedEventName            : (qualifiedObjectName DOT)? eventName                      
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

codeBlock                     :   variableDeclaration*
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


exceptionHandler              : WHEN qualifiedExceptionName GOES_TO statementList         
                              ;

otherHandler                  : WHEN OTHERS GOES_TO statementList                         
                              ;

qualifiedExceptionName        : (domainName SCOPE)? exceptionName                         
                              ; 

variableName                  : identifier                                                
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
                                  | LPAREN findCondition RPAREN                           
                                  ;

findComparison                    : findName ( EQUAL | NOT_EQUAL | LT | GT | LTE | GTE  )^ additiveExp;

findName                          : ( att=identifier                                      
                                    )
                                    ( DOT comp=identifier                                 
                                    | LBRACKET expression RBRACKET                        
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

navigateExpression            : (extendedExpression                                       
                                )
                                ( NAVIGATE relationshipSpec whereClause?                  
                                | WITH rhs=extendedExpression 
                                  nav=NAVIGATE relationshipSpec                           
                                | ORDERED_BY sortOrder                                    
                                | REVERSE_ORDERED_BY sortOrder                            
                                )*                                             
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

createExpression              : CREATE UNIQUE? objectName createArgumentList              
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

postfixExpression             : ( primaryExpression                                       
                                )
                                ( l=LPAREN argumentList RPAREN                            
                                | DOT identifier                                          
                                | TERMINATOR_SCOPE identifier                             
                                | LBRACKET expression RBRACKET                            
                                | (PRIME characteristic LPAREN)=> 
                                  PRIME characteristic LPAREN al=argumentList RPAREN      
                                | PRIME characteristic                                    
                                )*
                              ;

postfixNoCallExpression       : ( primaryExpression                                       
                                )
                                ( DOT identifier                                          
                                | TERMINATOR_SCOPE identifier                             
                                | LBRACKET expression RBRACKET                            
                                | PRIME characteristic                                    
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
