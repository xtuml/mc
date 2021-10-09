tree grammar MaslWalker;

// external interface
private Object empty_object = null;
private Object empty_code_block = null;
private Object current_project = empty_object;
private Object current_project_domain = empty_object;
private Object current_domain = empty_object;
private Object current_service = empty_object;
private Object current_object = empty_object;
private Object current_ooastate = empty_object;
private Object current_code_block = empty_code_block;

// trace routine


target
                              : definition+;

definition
                              : projectDefinition
                              | domainDefinition
                              ;


//---------------------------------------------------------
// Project Definition
//---------------------------------------------------------

identifier
returns [String name]
                              : Identifier                  
                              ;


projectDefinition
returns [Object project]
                              : ^( PROJECT
                                   projectName              
                                   description
                                   ( projectDomainDefinition
                                   )*
                                   pragmaList)              
                              ;

projectDomainDefinition
returns [Object project_domain]
                              : ^( DOMAIN
                                   projectDomainReference   
                                   description              
                                   ( projectTerminatorDefinition    
                                   )*
                                   pragmaList
                                 )                          
                              ;


projectName
returns [String name]
                              : ^( PROJECT_NAME
                                   identifier               
                                )
                              ;


//---------------------------------------------------------
// Domain Definition
//---------------------------------------------------------

domainDefinition
returns [Object domain]
                              : ^( DOMAIN
                                   domainName               
                                   description
                                   ( objectDeclaration           
                                   | domainServiceDeclaration    
                                   | domainTerminatorDefinition    
                                   | relationshipDefinition     
                                   | objectDefinition       // object related when declared (above)
                                   | typeDeclaration             
                                   | typeForwardDeclaration // leaving child unrelated until typeDeclaration
                                   | exceptionDeclaration        
                                   )*
                                   pragmaList
                                 )                              
                              ;

domainName
returns [String domainname]
                              : ^( DOMAIN_NAME
                                   identifier               
                                 )
                              ;

domainReference
returns [String domainname]
                              : domainName                   
                              ;

projectDomainReference
returns [String domainname]
                              : domainName                  
                              ;

optionalDomainReference
returns [String domainname, boolean defaulted]
                              : domainReference             
                              | /* blank */                 
                              ;



//---------------------------------------------------------
// Exception Declaration
//---------------------------------------------------------
exceptionDeclaration
returns [Object rejection]
                              : ^( EXCEPTION
                                   exceptionName            
                                   exceptionVisibility      
                                   pragmaList
                                 )                          
                              ;

exceptionName
returns [ String exceptionname ]
                              : ^( EXCEPTION_NAME
                                   identifier)              
                              ;

exceptionReference
returns [Object exception_reference]
                              : optionalDomainReference
                                exceptionName               
                              ;
                                

exceptionVisibility
returns [String visibility]
                              : PRIVATE                     
                              | PUBLIC                      
                              ;

//---------------------------------------------------------
// Type Definition
//---------------------------------------------------------

typeForwardDeclaration
returns [Object user_defined_type]
                              : ^( TYPE_DECLARATION
                                   typeName                 
                                   typeVisibility
                                   pragmaList				
                                 )                          
                              ;
                              

typeDeclaration
returns [Object user_defined_type]
                              : ^( TYPE
                                   typeName                 
                                   typeVisibility
                                   description
                                   pragmaList
                                   typeDefinition
                                 )
                              ;


typeDefinition
returns [Object type_definition]
                              : structureTypeDefinition
                              | enumerationTypeDefinition   
                              | constrainedTypeDefinition   
                              | typeReference               
                              | unconstrainedArrayDefinition
                              ;

typeVisibility
returns [String visibility]
                              : PRIVATE                     
                              | PUBLIC                      
                              ;



// Constrained Type
constrainedTypeDefinition
returns [Object constrained_type]
                              : ^( CONSTRAINED_TYPE
                                   typeReference
                                   typeConstraint
                                 )                          
                              ;

typeConstraint
returns [Object type_constraint]
                              : rangeConstraint
                              | deltaConstraint             
                              | digitsConstraint            
                              ;

rangeConstraint
returns [Object range_constraint]
                              : ^( RANGE
                                   expression
                                 )                          
                              ;

deltaConstraint
returns [Object delta_constraint]
                              : ^( DELTA
                                   expression
                                   rangeConstraint
                                 )                          
                              ;

digitsConstraint
returns [Object digits_constraint]
                              : ^( DIGITS
                                   expression
                                   rangeConstraint
                                 )                          
                              ;

// Structure Type
structureTypeDefinition
returns [Object structure_type]
                              : ^( STRUCTURE
                                   ( structureComponentDefinition 
                                   )+
                                 )                          
                              ;


structureComponentDefinition
returns [Object structure_element]
                              : ^( COMPONENT_DEFINITION
                                   componentName
                                   typeReference
                                   expression?
                                   pragmaList
                                 )                          
                              ;

componentName
returns [String componentname]
                              : ^( COMPONENT_NAME
                                   identifier
                                 )                          
                              ;


// Enumeration Type
enumerationTypeDefinition
returns [Object enumerate_type]
                              : ^( ENUM
                                   ( enumerator             
                                   )+
                                 )                          
                              ;

enumerator
returns [Object enumerate_item]
                              : ^( ENUMERATOR
                                   enumeratorName
                                   expression?
                                 )                          
                              ;

enumeratorName
returns [String enumeratorname]         : ^( ENUMERATOR_NAME
                                   identifier
                                 )                          
                              ;


// Unconstrained array
unconstrainedArrayDefinition
returns [Object type]
                              : ^( UNCONSTRAINED_ARRAY
                                   index=typeReference
                                   contained=typeReference
                                 )                          
                              ;

//---------------------------------------------------------
// Type Reference
//---------------------------------------------------------

typeReference
returns [Object basic_type]
                              : namedTypeRef                
                              | constrainedArrayTypeRef     
                              | instanceTypeRef             
                              | sequenceTypeRef             
                              | arrayTypeRef                
                              | setTypeRef                  
                              | bagTypeRef                  
                              | dictionaryTypeRef           
                              ;

instanceTypeRef
returns [Object basic_type]
                              : ^( INSTANCE
                                   objectReference
                                   ANONYMOUS?
                                 )                          
                              ;

namedTypeRef
returns [Object basic_type]
                              : ^( NAMED_TYPE
                                   optionalDomainReference
                                   typeName
                                   ANONYMOUS?
                                 )                          
                              ;

userDefinedTypeRef
returns [Object user_defined_type]
                              : ^( NAMED_TYPE
                                   optionalDomainReference
                                   typeName
                                 )                          
                              ;

constrainedArrayTypeRef
returns [Object basic_type]
                              : ^( CONSTRAINED_ARRAY
                                   userDefinedTypeRef
                                   arrayBounds
                                 )                          
                              ;


sequenceTypeRef
returns [Object basic_type]
                              : ^( SEQUENCE
                                   typeReference
                                   expression?
                                   ANONYMOUS?
                                 )                          
                              ;

arrayTypeRef
returns [Object basic_type]
                              : ^( ARRAY
                                   typeReference
                                   arrayBounds
                                   ANONYMOUS?
                                 )                          
                              ;

setTypeRef
returns [Object basic_type]
                              : ^( SET
                                   typeReference
                                   ANONYMOUS?
                                 )                          
                              ;

bagTypeRef
returns [Object basic_type]
                              : ^( BAG
                                   typeReference
                                   ANONYMOUS?
                                 )                          
                              ;

dictionaryTypeRef
returns [Object basic_type]
                              : ^( DICTIONARY
                                   (^(KEY   key=typeReference))?
                                   (^(VALUE value=typeReference))?
                                   ANONYMOUS?
                              ;
typeName
returns [String name]
                              : ^( TYPE_NAME
                                   identifier )             
                              ;

arrayBounds
returns [Object expression]
                              : ^( ARRAY_BOUNDS
                                   expression )             
                              ;

//---------------------------------------------------------
// Terminator Definition
//---------------------------------------------------------

terminatorName
returns [String terminatorname]
                              : ^( TERMINATOR_NAME
                                   identifier )             
                              ;


domainTerminatorDefinition
returns [Object domain_terminator]
                              : ^( TERMINATOR_DEFINITION
                                   terminatorName             
                                   description
                                   pragmaList
                                   ( terminatorServiceDeclaration
                                   )*
                                 )
                              ;

projectTerminatorDefinition
returns [Object project_terminator]
                              : ^( TERMINATOR_DEFINITION
                                   terminatorName
                                   description
                                   pragmaList
                                   ( projectTerminatorServiceDeclaration
                                   )*
                                 )
                              ;



terminatorServiceDeclaration
returns [Object domain_terminator_service]
                              : ^( TERMINATOR_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName
                                   description
                                   parameterList
                                   ( returnType
                                   )?
                                   pragmaList
                                 )
                              ;

projectTerminatorServiceDeclaration
returns [Object project_terminator_service]
                              : ^( TERMINATOR_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName              
                                   description
                                   parameterList
                                   ( returnType
                                   )?
                                   pragmaList
                                 )
                              ;


//---------------------------------------------------------
// Object Definition
//---------------------------------------------------------

objectName
returns [String name]
                              : ^( OBJECT_NAME
                                   identifier )             
                              ;


objectReference
returns [Object object_declaration]
                              : optionalDomainReference
                                objectName                  
                              ;

fullObjectReference
returns [Object object_declaration]
                              : domainReference
                                objectName                  
                              ;


optionalObjectReference
returns [Object object_declaration]
                              : objectReference             
                              | /* blank */                 
                              ;
attributeName
returns [String name]
                              : ^( ATTRIBUTE_NAME
                                   identifier )             
                              ;

objectDeclaration
returns [Object object_declaration]
                              : ^( OBJECT_DECLARATION
                                   objectName
                                   pragmaList
                                 )                          
                              ;


objectDefinition
returns [Object object_declaration]
                              : ^( OBJECT_DEFINITION
                                   objectName               
                                   ( attributeDefinition [previousattribute]      
                                   | identifierDefinition   // creates and relates in subrule
                                   | objectServiceDeclaration 
                                   | eventDefinition          
                                   | stateDeclaration         
                                   | transitionTable          
                                   )*
                                   description
                                   pragmaList
                                 )
                              ;

attributeDefinition[Object previousattribute]
returns [Object attribute_declaration]
                              : ^( ATTRIBUTE_DEFINITION
                                   attributeName            
                                   PREFERRED? UNIQUE?
                                   ( attReferential [$attribute_declaration]
                                   )*
                                   description
                                   typeReference
                                   (expression
                                   )?
                                   pragmaList
                                 )                          
                              ;

attReferential [Object attribute_declaration]
returns [Object referential_attribute_definition]
                              : ^( REFERENTIAL
                                   relationshipSpec[current_object, false, false]
                                   attributeName
                                 )                          
                              ;


relationshipSpec[Object object_declaration, boolean allow_assoc, boolean force_assoc]
returns [Object relationship_specification, Object basic_type]
                              : ^( RELATIONSHIP_SPEC
                                   relationshipReference    
                                   ( objOrRole              
                                   ( objectReference        
                                   )? 
                                   )?
                                 )                          
                              ;

objOrRole
returns [String name]
                              : identifier                  
                              ;


objectServiceDeclaration
returns [Object object_service]
                              : ^( OBJECT_SERVICE_DECLARATION
                                   serviceVisibility
                                   ( INSTANCE
                                     relationshipReference?)?
                                   serviceName
                                   description
                                   parameterList
                                   ( returnType
                                   )?
                                   pragmaList
                                 )                          
                              ;


identifierDefinition
returns [Object identifier_declaration]
                              : ^( IDENTIFIER
                                   ( attributeName
                                   )+
                                   pragmaList
                                 )                     
                              ;

eventDefinition
returns [Object event_declaration]
                              : ^( EVENT 
                                   eventName
                                   eventType                
                                   description
                                   parameterList
                                   pragmaList
                                 )
                                                                 ;

eventName
returns [String name]
                              : ^( EVENT_NAME
                                   identifier )             
                              ;

eventType
returns [String type]
                              : ASSIGNER                    
                              | CREATION                    
                              | NORMAL                      
                              ;

stateDeclaration
returns [Object ooastate]
                              : ^( STATE
                                   stateName                
                                   stateType               
                                   description
                                   parameterList
                                   pragmaList
                                )                           
                              ;

stateName
returns [String name]
                              : ^( STATE_NAME
                                   identifier )             
                              ;

stateType
returns [String type]
                              : ASSIGNER                    
                              | START                       
                              | CREATION                    
                              | TERMINAL                    
                              | NORMAL                      
                              ;


transitionTable
returns [Object transition_table]
                              : ^( TRANSITION_TABLE
                                   transTableType
                                   ( transitionRow          
                                   )+
                                   pragmaList
                                 )                          
                              ;


transTableType
returns [boolean isassigner]
                              : ASSIGNER                    
                              | NORMAL                      
                              ;

transitionRow
returns [Object transition_row]
                              : ^( TRANSITION_ROW
                                   startState
                                   ( transitionOption
                                   )+
                                   pragmaList
                                )                           
                              ;

transitionOption
returns [Object transition_option]
                              : ^( TRANSITION_OPTION
                                   incomingEvent
                                   endState
                                 )                          
                              ;

incomingEvent
returns [Object event_declaration]
                              : ^( EVENT
                                   eventReference           
                                 )
                              ;

startState
returns [String name]
                              : NON_EXISTENT                
                              | stateName                   
                              ;

endState
returns [String name, String transition_type]
                              : stateName                   
                              | IGNORE                      
                              | CANNOT_HAPPEN               
                              ;

eventReference
returns [Object event_declaration]
                              : optionalObjectReference
                                eventName                   
                              ;


//---------------------------------------------------------
// Service Declaration
//---------------------------------------------------------

domainServiceDeclaration
returns [Object domain_service]
                              : ^( DOMAIN_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName
                                   description
                                   parameterList
                                   ( returnType
                                   )?
                                   pragmaList
                                 )
                              ;


parameterDefinition
returns [Object parameter]
                              : ^( PARAMETER_DEFINITION
                                   parameterName
                                   parameterMode
                                   parameterType
                                )           
                              ;
                              
parameterList
returns [Object firstparameter]
                              : ( parameterDefinition       
                               )*
                              ;


serviceVisibility
returns [String visibility]
                              : PRIVATE                     
                              | PUBLIC                      
                              ;

parameterMode
returns [String parameter_mode]
                              : IN                          
                              | OUT                         
                              ;


serviceName
returns [String name]
                              : ^( SERVICE_NAME
                                   identifier )             
                              ;

parameterName
returns [String name]
                              : ^( PARAMETER_NAME
                                   identifier )             
                              ;

parameterType
returns [Object type]
                              : ^( PARAMETER_TYPE
                                   typeReference )            
                              ;

returnType
returns [Object type]
                              : ^( RETURN_TYPE
                                   typeReference )            
                              ;


//---------------------------------------------------------
// Relationship Definition
//---------------------------------------------------------


relationshipDefinition
returns [Object relationship_declaration]
                              : regularRelationshipDefinition
                              | assocRelationshipDefinition   
                              | subtypeRelationshipDefinition 
                              ;



regularRelationshipDefinition
returns [Object normal_relationship_declaration, String name]
                              : ^( REGULAR_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   leftToRight=halfRelationshipDefinition
                                   rightToLeft=halfRelationshipDefinition
                                   pragmaList
                                 )                          
                              ;


assocRelationshipDefinition
returns [Object associative_relationship_declaration, String name]
                              : ^( ASSOCIATIVE_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   leftToRight=halfRelationshipDefinition
                                   rightToLeft=halfRelationshipDefinition
                                   assocObj=objectReference
                                   pragmaList
                              ;

halfRelationshipDefinition
returns [Object half_relationship]
                              : ^( HALF_RELATIONSHIP
                                   from=objectReference
                                   conditionality
                                   rolePhrase
                                   multiplicity
                                   to=objectReference
                              ;


subtypeRelationshipDefinition
returns [Object subtype_relationship_declaration, String name]
                              : ^( SUBTYPE_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   supertype=objectReference
                                   (subtype=objectReference
                                   )+
                                   pragmaList
                                 )                          
                              ;

rolePhrase
returns [String role]
                              : ^( ROLE_PHRASE
                                   identifier )             
                              ;

conditionality
returns [boolean isconditional]
                              : UNCONDITIONALLY             
                              | CONDITIONALLY               
                              ;

multiplicity
returns [String multiplicity]
                              : ONE                         
                              | MANY                        
                              ;


relationshipName
returns [String name]
                              : ^( RELATIONSHIP_NAME
                                   RelationshipName  
                                 )                          
                              ;
                              

relationshipReference
returns [Object relationship_declaration]
                              : optionalDomainReference
                                relationshipName            
                              ;


//---------------------------------------------------------
// Pragma Definition
//---------------------------------------------------------


pragmaList
returns [ Object pragmas ]
                              : ( pragma
                                )*
                              ;

pragma
returns [Object def]
                              : ^( PRAGMA
                                   pragmaName
                                   ( pragmaValue            
                                   )*
                                 )                          
                              ;

pragmaValue
returns [ Object value ]
                              : identifier                  
                              | literalExpression           
                              ;

pragmaName
returns [ String name ]
                              : ^( PRAGMA_NAME
                                   identifier               
                                 )
                              ;

//---------------------------------------------------------
// Descriptions
//---------------------------------------------------------

description
returns [String text]
                              : ^( DESCRIPTION              
                                   (Description             
                                   )*
                                 )
                              ;

//---------------------------------------------------------
// Dynamic Behaviour
//---------------------------------------------------------


domainServiceDefinition
returns [Object service]
@init{ Object code_block = empty_code_block; }
@after{ current_service = empty_object; }
                              : ^( DOMAIN_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   serviceName
                                   parameterList
                                   returnType?
                                   codeBlock
                                   pragmaList
                                 )
                              ;


terminatorServiceDefinition
returns [Object service]
@after{ current_service = empty_object; }
                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                   parameterList
                                   returnType?
                                                            {
                                                              try {
                                                                $service = loader.call_function( "select_DomainTerminatorService_where_name", $domainReference.domainname, $terminatorName.terminatorname, $serviceName.name );
                                                                current_service = $service;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock
                                   pragmaList
                                 )
                              ;


projectTerminatorServiceDefinition
returns [Object service]
@after{ current_service = empty_object; }
                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                   parameterList
                                   returnType?
                                                            {
                                                              try {
                                                                $service = loader.call_function( "select_ProjectTerminatorService_where_name", $domainReference.domainname, $terminatorName.terminatorname, $serviceName.name );
                                                                current_service = $service;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock
                                   pragmaList
                                 )
                              ;



objectServiceDefinition
returns [Object service]
@after{ current_object = empty_object; current_service = empty_object; }
                              : ^( OBJECT_SERVICE_DEFINITION
                                   serviceVisibility
                                   INSTANCE?
                                   fullObjectReference
                                   serviceName
                                   parameterList
                                   returnType?
                                                            {
                                                              try {
                                                                $service = loader.call_function( "select_ObjectService_where_name", $fullObjectReference.object_declaration, $serviceName.name );
                                                                current_service = $service;
                                                                current_object = $fullObjectReference.object_declaration;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock
                                   pragmaList
                                 )
                              ;


stateDefinition
returns [Object ooastate]
@after{ current_object = empty_object; current_ooastate = empty_object; }
                              : ^( STATE_DEFINITION
                                   stateType
                                   fullObjectReference
                                   stateName
                                   parameterList
                                                            {
                                                              try {
                                                                ooastate = loader.call_function( "select_State_related_where_name", $fullObjectReference.object_declaration, $stateName.name );
                                                                current_ooastate = ooastate;
                                                                current_object = $fullObjectReference.object_declaration;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock
                                   pragmaList
                                 )
                              ;



//---------------------------------------------------------
// Statements
//---------------------------------------------------------

statement
returns [Object st]
                              : ^( STATEMENT
                                   ( codeBlock
                                   | assignmentStatement    
                                   | streamStatement        
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
                                   |                        
                                   )
                                   pragmaList
                                 )
                              ;

statementList
returns [Object st]
                              : ^( STATEMENT_LIST
                                   ( statement              
                                   )*
                                 )
                              ;


assignmentStatement
returns [Object st]
                              : ^( ASSIGN
                                   lhs=expression rhs=expression
                                 )
                              ;

streamStatement
returns [Object st]

                              : ^( STREAM_STATEMENT
                                   expression
                                   ( streamOperator         
                                   )+
                                 )                          
                              ;

streamOperator
returns [String op, Object expression]
                              : ^( ( STREAM_IN              
                                   | STREAM_OUT             
                                   | STREAM_LINE_IN         
                                   | STREAM_LINE_OUT        
                                   ) expression             
                                 )                          
                              ;

callStatement
returns [Object st]
@init                                                       {
                                                              try {
                                                                $st = loader.create( "ServiceInvocation" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }

                              : ^( CALL
                                   expression
                                                            {
                                                              try {
                                                                // TODO - name lookup occurs here to resolve subtype
                                                                Object subservice = loader.create( "DomainServiceInvocation" );
                                                                subservice = loader.create( "ObjectServiceInvocation" );
                                                                subservice = loader.create( "InstanceServiceInvocation" );
                                                                subservice = loader.create( "TerminatorServiceInvocation" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( argument               
                                                            {
                                                              try {
                                                                loader.relate( $argument.expression, $st, 5616, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*                       
                                 )                          

                              ;


exitStatement
returns [Object st]
@init                                                       {
                                                              try {
                                                                $st = loader.create( "ExitStatement" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              : ^( EXIT
                                   ( condition
                                                            {
                                                              try {
                                                                loader.relate( $condition.expression, $st, 5109, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )?
                                 )                          
                              ;

returnStatement
returns [Object st]
                              : ^( RETURN
                                   expression              
                                 )                          {
                                                              try {
                                                                $st = loader.create( "ReturnStatement" );
                                                                loader.relate( current_service, $st, 5127, "" );
                                                                loader.relate( $expression.expression, $st, 5128, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

delayStatement
returns [Object st]
                              : ^( DELAY
                                   expression
                                 )                         {
                                                              try {
                                                                $st = loader.create( "DelayStatement" );
                                                                loader.relate( $expression.expression, $st, 5104, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

raiseStatement
returns [Object st]
                              : ^( RAISE
                                   exceptionReference
                                                            {
                                                              try {
                                                                $st = loader.create( "RaiseStatement" );
                                                                loader.relate( $exceptionReference.exception_reference, $st, 5126, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   (
                                   expression
                                                           {
                                                              try {
                                                                loader.relate( $expression.expression, $st, 5125, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )?
                                 )                          
                              ;

deleteStatement
returns [Object st]
                              : ^( DELETE
                                   expression
                                 )                         {
                                                              try {
                                                                $st = loader.create( "DeleteStatement" );
                                                                loader.relate( $expression.expression, $st, 5105, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

eraseStatement
returns [Object st]
                              : ^( ERASE
                                   expression
                                 )                          {
                                                              try {
                                                                $st = loader.create( "EraseStatement" );
                                                                loader.relate( $expression.expression, $st, 5107, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

linkStatement
returns [Object st]
                              : ^( linkStatementType
                                   lhs=expression      
                                                            {
                                                              Object object_declaration = null;
                                                              try {
                                                                object_declaration = loader.call_function( "select_ObjectDeclaration_related_by_Expression", $lhs.expression );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "linkStatement:expression" ); }
                                                            }
                                   relationshipSpec[object_declaration, false, false]
                                                            {
                                                              try {
                                                                $st = loader.create( "LinkUnlinkStatement" );
                                                                loader.set_attribute( $st, "isLink", $linkStatementType.isLink );
                                                                loader.relate( $lhs.expression, $st, 5122, "" );
                                                                loader.relate( $relationshipSpec.relationship_specification, $st, 5120, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   (rhs=expression
                                                            {
                                                              try {
                                                                loader.relate( $rhs.expression, $st, 5119, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                     (assoc=expression
                                                            {
                                                              try {
                                                                loader.relate( $assoc.expression, $st, 5121, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                     )?
                                   )?
                                 )                          
                              ;

linkStatementType
returns [Boolean isLink]
                              : LINK                        { $isLink = true; }
                              | UNLINK                      { $isLink = false; }
                              ;


cancelTimerStatement
returns [Object st]
                             : ^( CANCEL
                                  timerId=expression )      {
                                                              try {
                                                                $st = loader.create( "CancelTimerStatement" );
                                                                loader.relate( $timerId.expression, $st, 5102, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                             ;
                              
scheduleStatement
returns [Object st]
                              : ^( SCHEDULE
                                   timerId=expression
                                   generateStatement
                                   scheduleType
                                   time=expression
                                                            {
                                                              try {
                                                                $st = loader.create( "ScheduleStatement" );
                                                                loader.relate( $timerId.expression, $st, 5132, "" );
                                                                loader.relate( $generateStatement.st, $st, 5129, "" );
                                                                loader.set_attribute( $st, "isAbsolute", $scheduleType.isAbsolute );
                                                                loader.relate( $time.expression, $st, 5130, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( period=expression
                                                            {
                                                              try {
                                                                loader.relate( $period.expression, $st, 5131, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )?
                                 )                         
                              ;
scheduleType
returns [Boolean isAbsolute]
                              : AT                          { $isAbsolute = true; }
                              | DELAY                       { $isAbsolute = false; }
                              ;



generateStatement
returns [Object st]

                              : ^( GENERATE
                                   eventReference
                                                            {
                                                              try {
                                                                $st = loader.create( "GenerateStatement" );
                                                                loader.relate( $eventReference.event_declaration, $st, 5112, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( argument               
                                                            {
                                                              try {
                                                                loader.relate( $argument.expression, $st, 5114, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*                       
                                   ( expression
                                                            {
                                                              try {
                                                                loader.relate( $expression.expression, $st, 5113, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )?
                                 )            
                              ;

ifStatement
returns [Object st]
                              : ^( IF
                                   condition
                                   statementList            
                                   ( elsifBlock             
                                   )*              
                                   ( elseBlock              
                                   )?
                                 )                          
                              ;


elsifBlock
returns [Object alternative]
                              : ^( ELSIF
                                   condition
                                   statementList )          
                   ;

elseBlock
returns [Object alternative]
                              : ^( ELSE
                                   statementList )          
                                       ;


whileStatement
returns [Object st]
                              : ^( WHILE
                                   condition
                                   statementList )          
                                                            {
                                                              try {
                                                                $st = loader.create( "WhileStatement" );
                                                                loader.relate( $condition.expression, $st, 5142, "" );
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $st, 5141, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

condition
returns [Object expression]      
                              : ^( CONDITION
                                   expression )             { $expression = $expression.expression; }
                              ;


caseStatement
returns [Object st]      
@init{ Object previousalternative = null; }
                              : ^( CASE
                                  expression
                                                            {
                                                              try {
                                                                $st = loader.create( "CaseStatement" );
                                                                loader.relate( $expression.expression, $st, 5103, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                  ( caseAlternative         
                                                            {
                                                              try {
                                                                loader.relate( $caseAlternative.alternative, $st, 5146, "" );
                                                                if ( null != previousalternative ) {
                                                                  loader.relate( $caseAlternative.alternative, previousalternative, 5158, "succeeds" );
                                                                }
                                                                previousalternative = $caseAlternative.alternative;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                  )*
                                  ( caseOthers              
                                                            {
                                                              try {
                                                                loader.relate( $caseOthers.alternative, $st, 5146, "" );
                                                                if ( null != previousalternative ) {
                                                                  loader.relate( $caseOthers.alternative, previousalternative, 5158, "succeeds" );
                                                                }
                                                                previousalternative = $caseOthers.alternative;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                  )?
                                )                           
                              ;

caseAlternative
returns [Object alternative]
                              : ^( WHEN
                                   ( choice                 
                                   )+
                                   statementList )         
                                                            {
                                                              try {
                                                                $alternative = loader.create( "Alternative" );
                                                                loader.set_attribute( $alternative, "else_otherwise", false );
                                                                loader.relate( $choice.expression, $alternative, 5147, "" );
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $alternative, 5148, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

choice
returns [Object expression]      
                              : ^( CHOICE
                                   expression )             { $expression = $expression.expression; }
                              ;

caseOthers
returns [Object alternative]
                              : ^( OTHERS
                                   statementList )          
                                                            {
                                                              try {
                                                                $alternative = loader.create( "Alternative" );
                                                                loader.set_attribute( $alternative, "else_otherwise", true );
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $alternative, 5148, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

forStatement
returns [Object st]
@init{ Object previousstatement = null; }
                              : ^( FOR
                                   loopVariableSpec
                                   statementList
                                 )
                                                            {
                                                              try {
                                                                $st = loader.create( "ForStatement" );
                                                                loader.relate( $loopVariableSpec.loop_spec, $st, 5110, "" );
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $st, 5153, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

loopVariableSpec
returns [Object loop_spec]
@init{ Object variable_definition = null; boolean isimplicit = false; }
                              : ^( LOOP_VARIABLE
                                   identifier
                                   REVERSE?
                                   expression
                                                            {
                                                              try {
                                                                $loop_spec = loader.create( "LoopSpec" );
                                                                loader.set_attribute( $loop_spec, "isreverse", ( null != $REVERSE ) );
                                                                loader.set_attribute( $loop_spec, "loopVariable", $identifier.name );
                                                                Object basic_type = loader.call_function( "resolve_name", current_code_block, $expression.expression, "", $identifier.name, "4" );
                                                                if ( ((IModelInstance)basic_type).isEmpty() ) {
                                                                  // Loop variables may be implicitly declared.  Create it.
                                                                  variable_definition = loader.create( "VariableDefinition" );
                                                                  loader.set_attribute( variable_definition, "name", $identifier.name );
                                                                  loader.set_attribute( variable_definition, "isreadonly", true );
                                                                  loader.relate( variable_definition, $loop_spec, 5154, "" );
                                                                  loader.relate( variable_definition, current_code_block, 5151, "" );
                                                                  isimplicit = true;
                                                                }
                                                                // TODO here figuring out loop spec subtypes.
                                                                if ( isimplicit ) {
                                                                  basic_type = loader.call_function( "select_BasicType_related_CollectionType", $expression.basic_type );
                                                                  loader.relate( basic_type, variable_definition, 5137, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                 )
                              ;



//---------------------------------------------------------
// Code Blocks
//---------------------------------------------------------

codeBlock
returns [Object code_block]
                              : ^( CODE_BLOCK
                                   ( variableDeclaration     
                                  )*     
                                   statementList
                                  ( exceptionHandler
                                  )*
                                  ( otherHandler            
                                  )?
                                )
                              ;



variableDeclaration
returns [Object variable_definition]
                              : ^( VARIABLE_DECLARATION
                                   variableName
                                   READONLY?
                                   typeReference
                                   (expression
                                   )?
                                   pragmaList )
                              ;


exceptionHandler
returns [Object handler]
                              : ^( EXCEPTION_HANDLER
                                   exceptionReference
                                   statementList
                                 )
                                                            {
                                                              try {
                                                                $handler = loader.create( "ExceptionHandler" );
                                                                loader.set_attribute( $handler, "isother", false );
                                                                loader.relate( $exceptionReference.exception_reference, $handler, 5108, "" );
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $handler, 5152, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

otherHandler
returns [Object handler]
                              : ^( OTHER_HANDLER
                                   statementList
                                 )
                                                            {
                                                              try {
                                                                $handler = loader.create( "ExceptionHandler" );
                                                                loader.set_attribute( $handler, "isother", true );
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $handler, 5152, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

variableName
returns [String name]
                              : ^( VARIABLE_NAME
                                   identifier )             { $name = $identifier.name; }
                              ;

//---------------------------------------------------------
// Expression Definition
//---------------------------------------------------------


expression
returns [Object expression, Object basic_type]
@init                                                       {
                                                              try {
                                                                $expression = loader.create( "Expression" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "expression:init" ); }
                                                            }
@after                                                      {
                                                              try {
                                                                // Note that MASL does not have 'void'.  So, this association
                                                                // can be unpopulated.
                                                                if ( !((IModelInstance)$basic_type).isEmpty() ) {
                                                                  loader.relate( $basic_type, $expression, 5570, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "expression:after" ); }
                                                            }
                              : binaryExpression
                                                            {
                                                              try {
                                                                loader.relate( $binaryExpression.binary_expression, $expression, 5517, "" );
                                                                $basic_type = $binaryExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | unaryExpression             
                                                            {
                                                              try {
                                                                loader.relate( $unaryExpression.unary_expression, $expression, 5517, "" );
                                                                $basic_type = $unaryExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | rangeExpression             
                                                            {
                                                              try {
                                                                loader.relate( $rangeExpression.range_expression, $expression, 5517, "" );
                                                                $basic_type = $rangeExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | aggregateExpression         
                                                            {
                                                              try {
                                                                loader.relate( $aggregateExpression.structure_aggregate, $expression, 5517, "" );
                                                                $basic_type = $aggregateExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | linkExpression              
                                                            {
                                                              try {
                                                                loader.relate( $linkExpression.link_unlink_expression, $expression, 5517, "" );
                                                                $basic_type = $linkExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | navigateExpression          
                                                            {
                                                              try {
                                                                loader.relate( $navigateExpression.navigation_expression, $expression, 5517, "" );
                                                                $basic_type = $navigateExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | correlateExpression         
                                                            {
                                                              try {
                                                                loader.relate( $correlateExpression.correlated_nav_expression, $expression, 5517, "" );
                                                                $basic_type = $correlateExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | orderByExpression           
                                                            {
                                                              try {
                                                                loader.relate( $orderByExpression.ordering_expression, $expression, 5517, "" );
                                                                $basic_type = $orderByExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | createExpression            
                              | findExpression              
                                                            {
                                                              try {
                                                                loader.relate( $findExpression.find_expression, $expression, 5517, "" );
                                                                $basic_type = $findExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | dotExpression[$expression]
                                                            { // Link occurs in the subrule.
                                                              $basic_type = $dotExpression.basic_type;
                                                            }
                              | terminatorServiceExpression 
                                                            {
                                                              try {
                                                                loader.relate( $terminatorServiceExpression.terminator_name_expression, $expression, 5517, "" );
                                                                $basic_type = $terminatorServiceExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "expression:terminatorServiceExpression" ); }
                                                            }
                              | callExpression              
                                                            {
                                                              try {
                                                                loader.relate( $callExpression.call_expression, $expression, 5517, "" );
                                                                $basic_type = $callExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "expression:callExpression" ); }
                                                            }
                              | sliceExpression             
                                                            {
                                                              try {
                                                                loader.relate( $sliceExpression.slice_expression, $expression, 5517, "" );
                                                                $basic_type = $sliceExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "expression:sliceExpression" ); }
                                                            }
                              | primeExpression             
                                                            {
                                                              try {
                                                                loader.relate( $primeExpression.characteristic_expression, $expression, 5517, "" );
                                                                $basic_type = $primeExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "expression:primeExpression" ); }
                                                            }
                              | nameExpression[$expression] 
                                                            { // Link occurs in the subrule.
                                                              $basic_type = $nameExpression.basic_type;
                                                            }
                              | literalExpression           
                              ;

binaryExpression
returns [Object binary_expression, Object basic_type]
                              : ^( binaryOperator
                                   lhs=expression
                                   rhs=expression
                                )                           {
                                                              try {
                                                                $binary_expression = loader.create( "BinaryExpression" );
                                                                loader.set_attribute( $binary_expression, "operator", $binaryOperator.binary_operator );
                                                                loader.relate( $lhs.expression, $binary_expression, 5001, "" );
                                                                loader.relate( $rhs.expression, $binary_expression, 5002, "" );
                                                                // TODO - lhs for now
                                                                $basic_type = $lhs.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;


binaryOperator
returns [String binary_operator]
                              : AND                         { $binary_operator = "Operator::and"; }
                              | CONCATENATE                 { $binary_operator = "Operator::concatenate"; }
                              | DISUNION                    { $binary_operator = "Operator::disunion"; }
                              | DIVIDE                      { $binary_operator = "Operator::divide"; }
                              | EQUAL                       { $binary_operator = "Operator::equal"; }
                              | GT                          { $binary_operator = "Operator::greaterthan"; }
                              | GTE                         { $binary_operator = "Operator::greaterthanequal"; }
                              | INTERSECTION                { $binary_operator = "Operator::intersection"; }
                              | LT                          { $binary_operator = "Operator::lessthan"; }
                              | LTE                         { $binary_operator = "Operator::lessthanequal"; }
                              | MINUS                       { $binary_operator = "Operator::minus"; }
                              | MOD                         { $binary_operator = "Operator::modulo"; }
                              | NOT_EQUAL                   { $binary_operator = "Operator::notequal"; }
                              | NOT_IN                      { $binary_operator = "Operator::notin"; }
                              | OR                          { $binary_operator = "Operator::or"; }
                              | PLUS                        { $binary_operator = "Operator::plus"; }
                              | POWER                       { $binary_operator = "Operator::power"; }
                              | REM                         { $binary_operator = "Operator::rem"; }
                              | TIMES                       { $binary_operator = "Operator::times"; }
                              | UNION                       { $binary_operator = "Operator::union"; }
                              | XOR                         { $binary_operator = "Operator::xor"; }
                              ;

unaryExpression
returns [Object unary_expression, Object basic_type]
                              : ^( unaryOperator
                                  expression
                                )                          {
                                                              try {
                                                                $unary_expression = loader.create( "UnaryExpression" );
                                                                loader.set_attribute( $unary_expression, "operator", $unaryOperator.unary_operator );
                                                                loader.relate( $expression.expression, $unary_expression, 5561, "" );
                                                                $basic_type = $expression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

unaryOperator
returns [String unary_operator]
                              : UNARY_PLUS                  { $unary_operator = "Operator::unaryplus"; }
                              | UNARY_MINUS                 { $unary_operator = "Operator::unaryminus"; }
                              | NOT                         { $unary_operator = "Operator::not"; }
                              | ABS                         { $unary_operator = "Operator::abs"; }
                              ;


rangeExpression
returns [Object range_expression, Object basic_type]
                              : ^( RANGE_DOTS
                                   from=expression
                                   to=expression
                                )                          {
                                                              try {
                                                                $range_expression = loader.create( "RangeExpression" );
                                                                Object min_max_range = loader.create( "MinMaxRange" );
                                                                loader.relate( min_max_range, $range_expression, 5540, "" );
                                                                loader.relate( $from.expression, min_max_range, 5529, "" );
                                                                loader.relate( $to.expression, min_max_range, 5528, "" );
                                                                $basic_type = $to.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;




aggregateExpression
returns [Object structure_aggregate, Object basic_type]
                              : ^( AGGREGATE
                                                            {
                                                              Object anonymous_structure = null;
                                                              try {
                                                                $structure_aggregate = loader.create( "StructureAggregate" );
                                                                Object type_definition = loader.create( "TypeDefinition" );
                                                                $basic_type = loader.create( "BasicType" );
                                                                loader.set_attribute( $basic_type, "isanonymous", true );
                                                                anonymous_structure = loader.create( "AnonymousStructure" );
                                                                loader.relate( $basic_type, type_definition, 6236, "" );
                                                                loader.relate( anonymous_structure, $basic_type, 6205, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( expression             
                                                            {
                                                              try {
                                                                loader.relate( $expression.expression, $structure_aggregate, 5551, "" );
                                                                loader.relate( $expression.basic_type, anonymous_structure, 6200, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )+ 
                                 )
                              ;


linkExpression
returns [Object link_unlink_expression, Object basic_type]
                              : ^( linkExpressionType
                                   lhs=expression      
                                                            {
                                                              Object object_declaration = null;
                                                              try {
                                                                object_declaration = loader.call_function( "select_ObjectDeclaration_related_by_Expression", $lhs.expression );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "linkStatement:expression" ); }
                                                            }
                                   relationshipSpec[object_declaration, false, false]
                                                            {
                                                              try {
                                                                $link_unlink_expression = loader.create( "LinkUnlinkExpression" );
                                                                loader.relate( $lhs.expression, $link_unlink_expression, 5526, "" );
                                                                loader.relate( $relationshipSpec.relationship_specification, $link_unlink_expression, 5551, "" );
                                                                $basic_type = $lhs.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   (rhs=expression          { try {
                                                                loader.relate( $rhs.expression, $link_unlink_expression, 5525, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )?
                                 )
                              ;
linkExpressionType
returns [boolean islink]
                              : LINK                        { $islink = true; }
                              | UNLINK                      { $islink = false; }
                              ;


navigateExpression
returns [Object navigation_expression, Object basic_type]
//scope WhereClauseScope;
                              : ^( NAVIGATE
                                   expression
                                                            {
                                                              Object object_declaration = null;
                                                              try {
                                                                object_declaration = loader.call_function( "select_ObjectDeclaration_related_by_Expression", $expression.expression );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "linkStatement:expression" ); }
                                                            }
                                   relationshipSpec[object_declaration, true, false]
                                                            {
                                                              try {
                                                                $navigation_expression = loader.create( "NavigationExpression" );
                                                                loader.relate( $expression.expression, $navigation_expression, 5532, "" );
                                                                loader.relate( $relationshipSpec.relationship_specification, $navigation_expression, 5531, "" );
                                                                $basic_type = $relationshipSpec.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( whereClause           
                                                            {
                                                              if ( null != $whereClause.expression ) {
                                                                try {
                                                                  loader.relate( $whereClause.expression, $navigation_expression, 5530, "" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                                            }
                                   )?
                                 )                          
                                                                                          
                              ;

correlateExpression
returns [Object correlated_nav_expression, Object basic_type]
                              : ^( CORRELATE
                                   lhs=expression
                                                            {
                                                              Object object_declaration = null;
                                                              try {
                                                                object_declaration = loader.call_function( "select_ObjectDeclaration_related_by_Expression", $lhs.expression );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "linkStatement:expression" ); }
                                                            }
                                   rhs=expression
                                   relationshipSpec[object_declaration, true, true]
                                 )                          {
                                                              try {
                                                                $correlated_nav_expression = loader.create( "CorrelatedNavExpression" );
                                                                loader.relate( $lhs.expression, $correlated_nav_expression, 5506, "" );
                                                                loader.relate( $lhs.expression, $correlated_nav_expression, 5508, "" );
                                                                loader.relate( $relationshipSpec.relationship_specification, $correlated_nav_expression, 5507, "" );
                                                                $basic_type = $relationshipSpec.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;



orderByExpression
returns [Object ordering_expression, Object basic_type]
@init{
  boolean instances = false;
  boolean isreverse = false;
  Object instance_ordering_expression = null;
  Object structure_ordering_expression = null;
}
                              : ^( ( ORDERED_BY
                                   | REVERSE_ORDERED_BY     { isreverse = true; }
                                   ) 
                                   expression
                                                            {
                                                              try {
                                                                $ordering_expression = loader.create( "OrderingExpression" );
                                                                $basic_type = loader.call_function( "OrderingExpression_initialize", $ordering_expression, $expression.expression, isreverse );
                                                                // TODO is reverse on each component or only at the top expression?
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( sortOrder              
                                                            {
                                                              try {
                                                                loader.call_function( "OrderingExpression_sort", $ordering_expression, $sortOrder.component, $sortOrder.isreverse );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )* 
                                 )                          
                              ;

sortOrder
returns [String component, boolean isreverse]
                              : ^( SORT_ORDER_COMPONENT
                                   REVERSE?
                                   identifier               { $component = $identifier.name; $isreverse = ( null != $REVERSE ); }
                                 )
                              ;

createExpression
returns [Object create_expression, Object basic_type]
                              : ^( CREATE
                                   objectReference 
                                   ( createArgument[$objectReference.object_declaration]
                                                            {
                                                              try {
                                                                loader.relate( $createArgument.attribute_initialization, $create_expression, 5566, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*
                                 )                          
                              ;

createArgument[Object object_declaration]
returns [Object attribute_initialization]
                              : ^( CREATE_ARGUMENT
                                   attributeName
                                   expression )              
                              | ^( CURRENT_STATE
                                   stateName
                                 )
                              ;

findExpression
returns [Object find_expression, Object basic_type]
                              : ^( findType
                                   expression
                                   whereClause
                                 )                          {
                                                              try {
                                                                $find_expression = loader.create( "FindExpression" );
                                                                loader.set_attribute( $find_expression, "flavor", $findType.find_type );
                                                                loader.relate( $expression.expression, $find_expression, 5519, "" );
                                                                // TODO - probably need to coerce set to instance based on findType
                                                                $basic_type = $expression.basic_type;
                                                                if ( null != $whereClause.expression ) {
                                                                  loader.relate( $whereClause.expression, $find_expression, 5520, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

whereClause
returns [Object expression]
                              : ^( WHERE
                                   ( expression             { $whereClause.expression = $expression.expression; }
                                   )?
                                 )
                              ;

findType
returns [String find_type]
                              : FIND                        { $find_type = "FindType::find"; }
                              | FIND_ONE                    { $find_type = "FindType::find_one"; }
                              | FIND_ONLY                   { $find_type = "FindType::find_only"; }
                              ;


dotExpression[Object expression]
returns [Object basic_type]
                              : ^( DOT
                                   lhs=expression
                                   identifier
                                 )                          
                              ;

terminatorServiceExpression
returns [Object terminator_name_expression, Object basic_type]
                              : ^( TERMINATOR_SCOPE
                                   expression
                                   identifier
                                 )                          {
                                                              try {
                                                                $basic_type = loader.call_function( "resolve_name", current_code_block, $expression.expression, "", $identifier.name, "3" );
                                                                // TODO here ... this should return a ServiceExpression, cuz I think TerminatorNameExpression will be created in nameExpression rule.
                                                                // TODO here ... Should I pass in the expression above so that
                                                                // it can get linked inside the resolve_name routine?
                                                                // I think maybe I can select related where name is identifer
                                                                // from the terminator.
                                                                // TODO here ... the name expression will return and expression
                                                                // we need to recognize the type
                                                                $terminator_name_expression = loader.create( "TerminatorNameExpression" );
                                                                Object domain_terminator_service = loader.call_function( "select_DomainTerminatorService_where_name", "domainname", "terminatorname", $identifier.name );
                                                                //loader.relate( domain_terminator_service, $terminator_name_expression, 5569, "" );
                                                                Object domain_terminator = null; // TODO loader.call_function
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "terminatorServiceExpression" ); }
                                                            }
                              ;

callExpression
returns [Object call_expression, Object basic_type]
@init{ Object function_invocation = null; }
                              : ^( CALL
                                   expression               
                                                            {
                                                              try {
                                                                $call_expression = loader.create( "CallExpression" );
                                                                function_invocation = loader.create( "FunctionInvocation" );
                                                                loader.relate( function_invocation, $call_expression, 5500, "" );
                                                                // TODO Use expression to resolve the subtype.
                                                                // This logic can likely be completely in action language.
                                                                $basic_type = $expression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( argument               
                                                            {
                                                              try {
                                                                loader.relate( function_invocation, $argument.expression, 5603, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*                       
                                 )                          

                              ;

nameExpression[Object expression]
returns[Object basic_type]
                              : ^( NAME
                                   identifier
                                 )                          { 
                                                              try {
                                                                $basic_type = loader.call_function( "resolve_name", current_code_block, expression, "", $identifier.name, "1" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            } 
                              | ^( NAME
                                   domainReference
                                   identifier
                                 )                          {
                                                              try {
                                                                $basic_type = loader.call_function( "resolve_name", current_code_block, expression, $domainReference.domainname, $identifier.name, "2" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | ^( FIND_ATTRIBUTE
                                   identifier
                                )                           {
                                                              try {
                                                                Object find_attribute_name_expression = loader.create( "FindAttributeNameExpression" );
                                                                loader.relate( $expression, find_attribute_name_expression, 5517, "" );
                                                                // TODO current object and current where clause need to be bread crumbed
                                                                $basic_type = loader.call_function( "resolve_name", current_code_block, $expression, "", $identifier.name, "5" );
                                                                // TODO - need to link to a where clause using the attribute name
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | compoundTypeName
                                                            {
                                                              try {
                                                                Object type_name_expression = loader.create( "TypeNameExpression" );
                                                                loader.relate( $expression, type_name_expression, 5517, "" );
                                                                $basic_type = $compoundTypeName.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;


compoundTypeName
returns [Object basic_type]
                              : instanceTypeRef             { $basic_type = $instanceTypeRef.basic_type; }
                              | sequenceTypeRef             { $basic_type = $sequenceTypeRef.basic_type; }
                              | arrayTypeRef                { $basic_type = $arrayTypeRef.basic_type; }
                              | setTypeRef                  { $basic_type = $setTypeRef.basic_type; }
                              | bagTypeRef                  { $basic_type = $bagTypeRef.basic_type; }
                              ;


argument
returns [Object expression]
                              : ^( ARGUMENT
                                   expression
                                 )                          { $expression = $expression.expression; }
                              ;

sliceExpression
returns [Object slice_expression, Object basic_type]
                              : ^( SLICE
                                   prefix=expression
                                   slice=expression
                                 )                          {
                                                              try {
                                                                $slice_expression = loader.create( "SliceExpression" );
                                                                loader.relate( $prefix.expression, $slice_expression, 5547, "" );
                                                                loader.relate( $slice.expression, $slice_expression, 5546, "" );
                                                                // TODO - this will need to be coerced to a sequence
                                                                $basic_type = $prefix.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

primeExpression
returns [Object characteristic_expression, Object basic_type]
                              : ^( PRIME
	                           expression
                                   identifier
                                                            {
                                                              try {
                                                                $characteristic_expression = loader.create( "CharacteristicExpression" );
                                                                loader.relate( $expression.expression, $characteristic_expression, 5504, "" );
                                                                loader.set_attribute( $characteristic_expression, "characteristic", $identifier.name );
                                                                // TODO - sometimes the type will be a Type
                                                                $basic_type = loader.call_function( "resolve_name", current_code_block, $expression.expression, "", $identifier.name, "6" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( argument               
                                                            {
                                                              try {
                                                                loader.relate( $argument.expression, $characteristic_expression, 5503, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*                       
                                 )                          
                              ;

literalExpression
returns [Object literal_expression, Object basic_type]
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
