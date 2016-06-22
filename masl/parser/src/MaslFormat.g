tree grammar MaslFormat;

options
{
  tokenVocab=MaslParser;
  ASTLabelType=CommonTree;
}

@header
{
import java.io.*;
}

@annotations
{
@SuppressWarnings("all")
}

@members
{
// private fields
private PrintStream out;
private static final String SPACE = " ";
private static final String NEWLINE = "\n";
private static final String TAB = "  ";     // tab is 2 spaces
private int indent = 0;

// initilization
public void init() {
    out = System.out;
    indent = 0;
}

// output setter
public void setOut( PrintStream output ) {
    out = output;
}

// private methods
private void print( String s ) {
    out.print( s );
    out.flush();
}

private String getTab() {
    StringBuilder tabstr = new StringBuilder();
    for (int i = 0; i < indent; i++) {
        tabstr.append( TAB );
    }
    return tabstr.toString();
}

private String getSpace( int num ) {
    StringBuilder spcstr = new StringBuilder();
    for (int i = 0; i < num; i++) {
        spcstr.append( SPACE );
    }
    return spcstr.toString();
}

private String line( String s ) {
    return getTab() + s + NEWLINE;
}

private String getText( StringBuilder sb ) {
    if ( sb == null ) return "";
    return sb.toString();
}

}

target                        
                              : definition+;

definition                    
                              : projectDefinition
                              {
                                  print( getText( $projectDefinition.text ) );
                              }
                              | domainDefinition
                              {
                                  print( getText( $domainDefinition.text ) );
                              }
                              ;


//---------------------------------------------------------
// Project Definition
//---------------------------------------------------------

identifier
returns [StringBuilder text]
                              : Identifier
                              {
                                  $text = new StringBuilder( $Identifier.text );
                              }
                              ;


projectDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( PROJECT
                                   projectName
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( "project " + getText( $projectName.text ) + " is") );
                                        indent++;
                                   }
                                   ( projectDomainDefinition 
                                   {
                                       t.append( line("") );
                                       t.append( getText( $projectDomainDefinition.text ) );
                                   }
                                   )*
                                   {
                                       indent--;
                                   }
                                   pragmaList
                                   {
                                       t.append( line("") );
                                       t.append( line( "end project;" ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                   )              
                              ;

projectDomainDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( DOMAIN
                                   projectDomainReference   
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( "domain " + getText( $projectDomainReference.text ) + " is") );
                                        indent++;
                                   }
                                   ( projectTerminatorDefinition    
                                   {
                                       t.append( getText( $projectTerminatorDefinition.text ) );
                                   }
                                   )*
                                   {
                                       indent--;
                                   }
                                   pragmaList               
                                   {
                                       t.append( line( "end domain;" ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                          
                              ;


projectName
returns [StringBuilder text]
                              :^( PROJECT_NAME
                                   identifier
                                   {
                                       $text = $identifier.text;
                                   }
                                )
                              ;


//---------------------------------------------------------
// Domain Definition
//---------------------------------------------------------

domainDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( DOMAIN
                                   domainName                    
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( "domain " + getText( $domainName.text ) + " is") );
                                        t.append( line("") );
                                        indent++;
                                   }
                                   ( objectDeclaration
                                   {
                                       t.append( getText( $objectDeclaration.text ) );
                                   }
                                   | domainServiceDeclaration
                                   {
                                       t.append( line("") );
                                       t.append( getText( $domainServiceDeclaration.text ) );
                                   }
                                   | domainTerminatorDefinition
                                   {
                                       t.append( getText( $domainTerminatorDefinition.text ) );
                                   }
                                   | relationshipDefinition
                                   {
                                       t.append( getText( $relationshipDefinition.text ) );
                                   }
                                   | objectDefinition
                                   {
                                       t.append( getText( $objectDefinition.text ) );
                                   }
                                   | typeDeclaration
                                   {
                                       t.append( getText( $typeDeclaration.text ) );
                                   }
                                   | typeForwardDeclaration
                                   {
                                       t.append( getText( $typeForwardDeclaration.text ) );
                                   }
                                   | exceptionDeclaration
                                   {
                                       t.append( getText( $exceptionDeclaration.text ) );
                                   }
                                   )*
                                   {
                                       indent--;
                                   }
                                   pragmaList                    
                                   {
                                       t.append( line("") );
                                       t.append( line( "end domain;" ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                              
                              ;

domainName
returns [StringBuilder text]
                              : ^( DOMAIN_NAME
                                   identifier               
                                   {
                                       $text = $identifier.text;
                                   }
                                 )
                              ;

domainReference
returns [StringBuilder text]
                              : domainName                  
                              {
                                  $text = $domainName.text;
                              }
                              ;


projectDomainReference
returns [StringBuilder text]
                              : domainName                  
                              {
                                  $text = $domainName.text;
                              }
                              ;



optionalDomainReference
returns [StringBuilder text]
                              : domainReference             
                              {
                                  $text = $domainReference.text;
                              }
                              | /* blank */                 
                              {
                                  $text = new StringBuilder();
                              }
                              ;



//---------------------------------------------------------
// Exception Declaration
//---------------------------------------------------------
exceptionDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( EXCEPTION
                                   exceptionName            
                                   exceptionVisibility      
                                   pragmaList               
                                 )                          
                              {
                                  t.append( getTab() );
                                  t.append( getText( $exceptionVisibility.text ) );
                                  t.append( " exception " );
                                  t.append( getText( $exceptionName.text ) );
                                  t.append( ";" + NEWLINE );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;

exceptionName
returns [StringBuilder text]
                              : ^( EXCEPTION_NAME
                                   identifier)              
                              {
                                  $text = $identifier.text;
                              }
                              ;

exceptionReference
                              : optionalDomainReference
                                exceptionName               
                              ;
                                

exceptionVisibility
returns [StringBuilder text]
                              : PRIVATE                     
                              {
                                  $text = new StringBuilder( $PRIVATE.text );
                              }
                              | PUBLIC                      
                              {
                                  $text = new StringBuilder( $PUBLIC.text );
                              }
                              ;

//---------------------------------------------------------
// Type Definition
//---------------------------------------------------------

typeForwardDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TYPE_DECLARATION
                                   typeName                 
                                   typeVisibility
                                   pragmaList				
                                 )                          
                              {
                                  t.append( getTab() );
                                  t.append( getText( $typeVisibility.text ) );
                                  t.append( " type " );
                                  t.append( getText( $typeName.text ) );
                                  t.append( ";" + NEWLINE );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;
                              

typeDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TYPE
                                   typeName                 
                                   typeVisibility
                                   description
                                   pragmaList				
                                   typeDefinition			
                                 )                          
                              {
                                  t.append( getText( $description.text ) );
                                  t.append( getTab() );
                                  t.append( getText( $typeVisibility.text ) );
                                  t.append( " type " );
                                  t.append( getText( $typeName.text ) );
                                  t.append( " is " );
                                  t.append( getText( $typeDefinition.text ) );
                                  t.append( ";" + NEWLINE );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;
                              

typeDefinition
returns [StringBuilder text]
                              : structureTypeDefinition     
                              {
                                  $text = $structureTypeDefinition.text;
                              }
                              | enumerationTypeDefinition
                              {
                                  $text = $enumerationTypeDefinition.text;
                              }
                              | constrainedTypeDefinition   //TODO
                              | typeReference
                              {
                                  $text = $typeReference.text;
                              }
                              | unconstrainedArrayDefinition//TODO
                              ;

typeVisibility
returns [StringBuilder text]
                              : PRIVATE                     
                              {
                                  $text = new StringBuilder( $PRIVATE.text );
                              }
                              | PUBLIC                      
                              {
                                  $text = new StringBuilder( $PUBLIC.text );
                              }
                              ;



// Constrained Type
constrainedTypeDefinition
                              : ^( CONSTRAINED_TYPE
                                   typeReference
                                   typeConstraint
                                 )                          
                              ;

typeConstraint
                              : rangeConstraint             
                              | deltaConstraint             
                              | digitsConstraint            
                              ;

rangeConstraint
                              : ^( RANGE
                                   expression
                                 )                          
                              ;

deltaConstraint
                              : ^( DELTA
                                   expression
                                   rangeConstraint
                                 )                          
                              ;

digitsConstraint
                              : ^( DIGITS
                                   expression
                                   rangeConstraint
                                 )                          
                              ;

// Structure Type
structureTypeDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( STRUCTURE
                              {
                                  t.append( "structure" + NEWLINE );
                                  indent++;
                              }
                                   ( structureComponentDefinition 
                                   {
                                       t.append( getText( $structureComponentDefinition.text ) );
                                   }
                                   )+
                                 )                          
                              {
                                  indent--;
                                  t.append( getTab() + "end structure" );
                              }
                              ;


structureComponentDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( COMPONENT_DEFINITION
                                   componentName
                                   typeReference
                                   {
                                       t.append( getTab() );
                                       t.append( getText( $componentName.text ) );
                                       t.append( ": " );
                                       t.append( getText( $typeReference.text ) );
                                   }
                                   (expression //TODO finish all expressions
                                   {
                                       t.append( " := " );
                                       t.append( getText( $expression.text ) );
                                   }
                                   )?
                                   pragmaList
                                   {
                                       t.append( ";" + NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                          
                              ;

componentName
returns [StringBuilder text]
                              : ^( COMPONENT_NAME
                                   identifier
                                 )                          
                              {
                                  $text = $identifier.text;
                              }
                              ;


// Enumeration Type
enumerationTypeDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    String sep = " ";
    String end = " )";
    t.append( "enum (" );
}
@after {
    t.append( end );
    $text = t;
}
                              : ^( ENUM
                                   ( enumerator             
                                   {
                                       t.append( sep + getText( $enumerator.text ) );
                                       sep = ", ";
                                   }
                                   )+
                                 )                          
                              ;

enumerator
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( ENUMERATOR
                                   enumeratorName
                                   {
                                       t.append( getText( $enumeratorName.text ) );
                                   }
                                   (expression
                                   {
                                       t.append( " := " );
                                       t.append( getText( $expression.text ) );
                                   }
                                   )?
                                 )                          
                              ;

enumeratorName
returns [StringBuilder text]
                              : ^( ENUMERATOR_NAME
                                   identifier
                                 )                          
                              {
                                  $text = $identifier.text;
                              }
                              ;


// Unconstrained array
unconstrainedArrayDefinition
                              : ^( UNCONSTRAINED_ARRAY
                                   index=typeReference
                                   contained=typeReference
                                 )                          
                              ;

//---------------------------------------------------------
// Type Reference
//---------------------------------------------------------

/*
typeReference
                              : namedTypeRef                
                              | constrainedArrayTypeRef     
                              | instanceTypeRef             
                              | sequenceTypeRef             
                              | arrayTypeRef                
                              | setTypeRef                  
                              | bagTypeRef                  
                              | dictionaryTypeRef           
                              ;
                              */

typeReference
returns [StringBuilder text]
                              : TYPE_REF
                              {
                                  $text = new StringBuilder( $TYPE_REF.text );
                              }
                              ;



instanceTypeRef
                              : ^( INSTANCE
                                   objectReference
                                   ANONYMOUS?
                                 )                          
                              ;

namedTypeRef
                              : ^( NAMED_TYPE
                                   optionalDomainReference
                                   typeName
                                   ANONYMOUS?
                                 )                          
                              ;

userDefinedTypeRef
                              : ^( NAMED_TYPE
                                   optionalDomainReference
                                   typeName
                                 )                          
                              ;

constrainedArrayTypeRef
                              : ^( CONSTRAINED_ARRAY
                                   userDefinedTypeRef
                                   arrayBounds
                                 )                          
                              ;


sequenceTypeRef
                              : ^( SEQUENCE
                                   typeReference
                                   expression?
                                   ANONYMOUS?
                                 )                          
                              ;

arrayTypeRef
                              : ^( ARRAY
                                   typeReference
                                   arrayBounds
                                   ANONYMOUS?
                                 )                          
                              ;

setTypeRef
                              : ^( SET
                                   typeReference
                                   ANONYMOUS?
                                 )                          
                              ;

bagTypeRef
                              : ^( BAG
                                   typeReference
                                   ANONYMOUS?
                                 )                          
                              ;

dictionaryTypeRef
                              : ^( DICTIONARY
                                   (^(KEY   key=typeReference))?
                                   (^(VALUE value=typeReference))?
                                   ANONYMOUS?
                                 )                          
                              ;
typeName
returns [StringBuilder text]
                              : ^( TYPE_NAME
                                   identifier )             
                              {
                                  $text = $identifier.text;
                              }
                              ;

arrayBounds
                              : ^( ARRAY_BOUNDS
                                   expression )             
                              ;

//---------------------------------------------------------
// Terminator Definition
//---------------------------------------------------------

terminatorName
returns [StringBuilder text]
                              : ^( TERMINATOR_NAME
                                   identifier )         
                              {
                                  $text = $identifier.text;
                              }
                              ;


domainTerminatorDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}

                              : ^( TERMINATOR_DEFINITION
                                   terminatorName             
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( "terminator " + getText( $terminatorName.text ) + " is") );
                                   }
                                   pragmaList                 
                                   {
                                       indent++;
                                   }
                                   ( terminatorServiceDeclaration
                                   {
                                       t.append( line("") );
                                       t.append( getText( $terminatorServiceDeclaration.text ) );
                                   }
                                   )*
                                   {
                                       indent--;
                                       t.append( line("") );
                                       t.append( line( "end terminator;" ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )
                              ;

projectTerminatorDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TERMINATOR_DEFINITION
                                   terminatorName
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( "terminator " + getText( $terminatorName.text ) + " is") );
                                   }
                                   pragmaList                 
                                   {
                                       indent++;
                                   }
                                   ( projectTerminatorServiceDeclaration
                                   {
                                       t.append( line("") );
                                       t.append( getText( $projectTerminatorServiceDeclaration.text ) );
                                   }
                                   )*
                                   {
                                       indent--;
                                       t.append( line("") );
                                       t.append( line( "end terminator;" ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )
                              ;



terminatorServiceDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TERMINATOR_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName
                                   description
                                   parameterList
                                   {
                                       t.append( getText( $description.text ) );
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( SPACE );
                                       t.append( $TERMINATOR_SERVICE_DECLARATION.text );
                                       t.append( SPACE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( SPACE );
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( " return " );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   {
                                       t.append( ";" );
                                   }
                                   pragmaList
                                   {
                                       t.append( NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )
                                                            
                              ;

projectTerminatorServiceDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TERMINATOR_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName              
                                   description
                                   parameterList
                                   {
                                       t.append( getText( $description.text ) );
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( SPACE );
                                       t.append( $TERMINATOR_SERVICE_DECLARATION.text );
                                       t.append( SPACE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( SPACE );
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( " return " );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   {
                                       t.append( ";" );
                                   }
                                   pragmaList
                                   {
                                       t.append( NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )
                                                            
                              ;


//---------------------------------------------------------
// Object Definition
//---------------------------------------------------------

objectName
returns [StringBuilder text]
                              : ^( OBJECT_NAME
                                   identifier )             
                              {
                                  $text = $identifier.text;
                              }
                              ;


objectReference
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : optionalDomainReference
                                objectName                  
                                {
                                    String dom = getText( $optionalDomainReference.text );
                                    if ( !dom.equals("") ) {
                                        t.append( dom + "::" );
                                    }
                                    t.append( getText( $objectName.text ) );
                                }
                              ;

fullObjectReference
                              : domainReference
                                objectName                  
                              ;


optionalObjectReference
returns [StringBuilder text]
                              : objectReference         
                              {
                                  $text = $objectReference.text;
                              }
                              | /* blank */
                              {
                                  $text = new StringBuilder("");
                              }
                              ;
attributeName
returns [StringBuilder text]
                              : ^( ATTRIBUTE_NAME
                                   identifier )             
                              {
                                  $text = $identifier.text;
                              }
                              ;

objectDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( OBJECT_DECLARATION
                                   objectName
                                   pragmaList
                                 )                          
                              {
                                  t.append( line( "object " + getText( $objectName.text ) + ";" ) );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;


objectDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( OBJECT_DEFINITION
                                   objectName               
                                   {
                                       t.append( line( "object " + getText( $objectName.text ) + " is" ) );
                                       indent++;
                                   }
                                   ( attributeDefinition
                                   {
                                       t.append( getText( $attributeDefinition.text ) );
                                   }
                                   | identifierDefinition
                                   {
                                       t.append( getText( $identifierDefinition.text ) );
                                   }
                                   | objectServiceDeclaration
                                   {
                                       t.append( getText( $objectServiceDeclaration.text ) );
                                   }
                                   | eventDefinition
                                   {
                                       t.append( getText( $eventDefinition.text ) );
                                   }
                                   | stateDeclaration
                                   {
                                       t.append( getText( $stateDeclaration.text ) );
                                   }
                                   | transitionTable
                                   {
                                       t.append( getText( $transitionTable.text ) );
                                   }
                                   )*
                                   {
                                       indent--;
                                   }
                                   description
                                   pragmaList                 
                                   {
                                       t.insert( 0, getText( $description.text ) );
                                       t.append( line( "end object;" ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }

                                 )
                              ;

attributeDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( ATTRIBUTE_DEFINITION
                                   attributeName            
                                   {
                                       t.append( getTab() + getText( $attributeName.text ) + ": " );
                                   }
                                   (PREFERRED
                                   {
                                       t.append( $PREFERRED.text + SPACE );
                                   }
                                   )?
                                   (UNIQUE
                                   {
                                       t.append( $UNIQUE.text + SPACE );
                                   }
                                   )?
                                   {
                                       boolean first_ref = true;
                                       String sep = "";
                                   }
                                   ( attReferential         
                                   {
                                       if ( first_ref ) {
                                           t.append( "referential ( " );
                                           first_ref = false;
                                       }
                                       t.append( sep + getText( $attReferential.text ) );
                                       sep = ", ";
                                   }
                                   )*
                                   description
                                   typeReference
                                   {
                                       if ( t.indexOf("referential") != -1 ) {
                                           t.append( " ) " );
                                       }
                                       t.insert( 0, getText( $description.text ) );
                                       t.append( getText( $typeReference.text ) );
                                   }
                                   (expression
                                   {
                                       t.append( " := " );
                                       t.append( getText( $expression.text ) );
                                   }
                                   )?
                                   pragmaList
                                   {
                                       t.append( ";" + NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                          

                              ;

attReferential
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( REFERENTIAL
                                   relationshipSpec
                                   attributeName
                                 )                          
                              {
                                  t.append( getText( $relationshipSpec.text ) );
                                  t.append( "." );
                                  t.append( getText( $attributeName.text ) );
                              }
                              ;


relationshipSpec
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( RELATIONSHIP_SPEC
                                   relationshipReference    
                                   {
                                       t.append( getText( $relationshipReference.text ) );
                                   }
                                   ( objOrRole
                                   {
                                       t.append( "." + getText( $objOrRole.text ) );
                                   }
                                   ( objectReference
                                   {
                                       t.append( "." + getText( $objectReference.text ) );
                                   }
                                   )? 
                                   )?
                                 ) 													
                              ;

objOrRole
returns [StringBuilder text]
                              : identifier                  
                              {
                                  $text = $identifier.text;
                              }
                              ;


objectServiceDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( OBJECT_SERVICE_DECLARATION
                                   serviceVisibility
                                   {
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( SPACE );
                                   }
                                   (INSTANCE
                                   {
                                       t.append( "instance " );
                                   }
                                   (relationshipReference
                                   {
                                       t.append( "deferred ( " + getText( $relationshipReference.text ) + " ) " );
                                   }
                                   )?
                                   )?
                                   serviceName
                                   description
                                   parameterList
                                   {
                                       t.insert( 0, getText( $description.text ) );
                                       t.append( $OBJECT_SERVICE_DECLARATION.text );
                                       t.append( SPACE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( SPACE );
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( " return " );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   {
                                       t.append( ";" );
                                   }
                                   pragmaList
                                   {
                                       t.append( NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                          
                              ;

identifierDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( IDENTIFIER
                                   {
                                       t.append( getTab() + "identifier is ( " );
                                       String sep = "";
                                   }
                                   ( attributeName          
                                   {
                                       t.append( sep + getText( $attributeName.text ) );
                                       sep = ", ";
                                   }
                                   )+
                                   pragmaList
                                   {
                                       t.append( " );" + NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                     
                              ;

eventDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( EVENT         
                                   eventName                
                                   eventType                
                                   description
                                   parameterList
                                   pragmaList               
                                 )
                              {
                                  t.append( getText( $description.text ) );
                                  t.append( getTab() );
                                  String evt_type = getText( $eventType.text );
                                  if ( !evt_type.equals("") ) {
                                      t.append( evt_type + SPACE );
                                  }
                                  t.append( "event " );
                                  t.append( getText( $eventName.text ) );
                                  t.append( SPACE );
                                  t.append( getText( $parameterList.text ) );
                                  t.append( ";" + NEWLINE );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;

eventName
returns [StringBuilder text]
                              : ^( EVENT_NAME
                                   identifier )             
                              {
                                  $text = $identifier.text;
                              }
                              ;

eventType
returns [StringBuilder text]
                              : ASSIGNER                    
                              {
                                  $text = new StringBuilder( $ASSIGNER.text );
                              }
                              | CREATION                    
                              {
                                  $text = new StringBuilder( $CREATION.text );
                              }
                              | NORMAL                      
                              {
                                  $text = new StringBuilder( "" );
                              }
                              ;

stateDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( STATE
                                   stateName                
                                   stateType               
                                   description
                                   parameterList
                                   pragmaList              
                                )                           
                              {
                                  t.append( getText( $description.text ) );
                                  t.append( getTab() );
                                  String st_type = getText( $stateType.text );
                                  if ( !st_type.equals("") ) {
                                      t.append( st_type + SPACE );
                                  }
                                  t.append( "state " );
                                  t.append( getText( $stateName.text ) );
                                  t.append( SPACE );
                                  t.append( getText( $parameterList.text ) );
                                  t.append( ";" + NEWLINE );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;

stateName
returns [StringBuilder text]
                              : ^( STATE_NAME
                                   identifier )             
                              {
                                  $text = $identifier.text;
                              }
                              ;

stateType
returns [StringBuilder text]
                              : ASSIGNER                    
                              {
                                  $text = new StringBuilder( $ASSIGNER.text );
                              }
                              | START                       
                              {
                                  $text = new StringBuilder( $START.text );
                              }
                              | CREATION                    
                              {
                                  $text = new StringBuilder( $CREATION.text );
                              }
                              | TERMINAL                    
                              {
                                  $text = new StringBuilder( $TERMINAL.text );
                              }
                              | NORMAL                      
                              {
                                  $text = new StringBuilder( "" );
                              }
                              ;


transitionTable
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TRANSITION_TABLE
                                   transTableType
                                   {
                                       t.append( getTab() );
                                       String tabType = getText( $transTableType.text );
                                       if ( !tabType.equals("") ) {
                                           t.append( tabType + SPACE );
                                       }
                                       t.append( "transition is" + NEWLINE );
                                       indent++;
                                   }
                                   ( transitionRow          
                                   {
                                       t.append( getText( $transitionRow.text ) );
                                   }
                                   )+
                                   {
                                       indent--;
                                   }
                                   pragmaList
                                   {
                                       t.append( line( "end transition;" ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                          
                              ;

transTableType
returns [StringBuilder text]
                              : ASSIGNER                    
                              {
                                  $text = new StringBuilder( $ASSIGNER.text );
                              }
                              | NORMAL                      
                              {
                                  $text = new StringBuilder( "" );
                              }
                              ;

transitionRow
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TRANSITION_ROW
                                   startState
                                   {
                                       t.append( getTab() + getText( $startState.text ) + " ( " );
                                       int len = t.length();
                                       String sep = "";
                                   }
                                   ( transitionOption
                                   {
                                       t.append( sep + getText( $transitionOption.text ) );
                                       sep = "," + NEWLINE + getSpace(len);
                                   }
                                   )+
                                   pragmaList
                                   {
                                       t.append( " );" + NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                )                           
                              ;

transitionOption
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TRANSITION_OPTION
                                   incomingEvent
                                   endState
                                 )                          
                              {
                                  t.append( getText( $incomingEvent.text ) );
                                  t.append( " => " );
                                  t.append( getText( $endState.text ) );
                              }
                              ;

incomingEvent
returns [StringBuilder text]
                              : ^( EVENT
                                   eventReference           
                                 )
                              {
                                  $text = $eventReference.text;
                              }
                              ;

startState
returns [StringBuilder text]
                              : NON_EXISTENT                
                              {
                                  $text = new StringBuilder("Non_Existent");
                              }
                              | stateName                   
                              {
                                  $text = $stateName.text;
                              }
                              ;

endState
returns [StringBuilder text]
                              : stateName                   
                              {
                                  $text = $stateName.text;
                              }
                              | IGNORE                      
                              {
                                  $text = new StringBuilder("Ignore");
                              }
                              | CANNOT_HAPPEN               
                              {
                                  $text = new StringBuilder("Cannot_Happen");
                              }
                              ;

eventReference
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : optionalObjectReference
                                eventName                   
                                {
                                    String obj = getText( $optionalObjectReference.text );
                                    if ( !obj.equals("") ) {
                                        t.append( obj + "." );
                                    }
                                    t.append( getText( $eventName.text ) );
                                }
                              ;


//---------------------------------------------------------
// Service Declaration
//---------------------------------------------------------

domainServiceDeclaration
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( DOMAIN_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName
                                   description
                                   parameterList
                                   {
                                       t.append( getText( $description.text ) );
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( SPACE );
                                       t.append( $DOMAIN_SERVICE_DECLARATION.text );
                                       t.append( SPACE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( SPACE );
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( " return " );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   {
                                       t.append( ";" );
                                   }
                                   pragmaList
                                   {
                                       t.append( NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )
                              ;

parameterDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( PARAMETER_DEFINITION
                                   parameterName
                                   parameterMode
                                   parameterType)           
                              {
                                  t.append( getText( $parameterName.text ) );
                                  t.append( ": " );
                                  t.append( getText( $parameterMode.text ) );
                                  t.append( SPACE );
                                  t.append( getText( $parameterType.text ) );
                              }
                              ;
                              
parameterList
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    String sep = " ";
    String end = ")";
    t.append( "(" );
}
@after {
    t.append( end );
    $text = t;
}

                              : ( parameterDefinition       
                              {
                                  t.append( sep + getText( $parameterDefinition.text ) );
                                  sep = ", ";
                                  end = " )";
                              }
                               )*
                              ;


serviceVisibility
returns [StringBuilder text]
                              : PRIVATE                     
                              {
                                  $text = new StringBuilder( $PRIVATE.text );
                              }
                              | PUBLIC                      
                              {
                                  $text = new StringBuilder( $PUBLIC.text );
                              }
                              ;

parameterMode
returns [StringBuilder text]
                              : IN                          
                              {
                                  $text = new StringBuilder( $IN.text );
                              }
                              | OUT                         
                              {
                                  $text = new StringBuilder( $OUT.text );
                              }
                              ;


serviceName
returns [StringBuilder text]
                              : ^( SERVICE_NAME
                                   identifier )             
                              {
                                  $text = $identifier.text;
                              }
                              ;

parameterName
returns [StringBuilder text]
                              : ^( PARAMETER_NAME
                                   identifier )             
                              {
                                  $text = $identifier.text;
                              }
                              ;

parameterType
returns [StringBuilder text]
                              : ^( PARAMETER_TYPE
                                   typeReference )
                              {
                                  $text = $typeReference.text;
                              }
                              ;

returnType
returns [StringBuilder text]
                              : ^( RETURN_TYPE
                                   typeReference )
                              {
                                  $text = $typeReference.text;
                              }
                              ;


//---------------------------------------------------------
// Relationship Definition
//---------------------------------------------------------


relationshipDefinition
returns [StringBuilder text]
                              : regularRelationshipDefinition
                              {
                                  $text = $regularRelationshipDefinition.text;
                              }
                              | assocRelationshipDefinition   
                              {
                                  $text = $assocRelationshipDefinition.text;
                              }
                              | subtypeRelationshipDefinition 
                              {
                                  $text = $subtypeRelationshipDefinition.text;
                              }
                              ;



regularRelationshipDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( REGULAR_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   leftToRight=halfRelationshipDefinition
                                   rightToLeft=halfRelationshipDefinition
                                   pragmaList
                                 )                          
                              {
                                  t.append( getText( $description.text ) );
                                  t.append( getTab() + "relationship " );
                                  t.append( getText( $relationshipName.text ) );
                                  t.append( " is " );
                                  int len = t.length();
                                  t.append( getText( $leftToRight.text ) );
                                  t.append( "," + NEWLINE );
                                  t.append( getSpace(len) );
                                  t.append( getText( $rightToLeft.text ) );
                                  t.append( ";" + NEWLINE );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;


assocRelationshipDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( ASSOCIATIVE_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   leftToRight=halfRelationshipDefinition
                                   rightToLeft=halfRelationshipDefinition
                                   assocObj=objectReference
                                   pragmaList
                                 )                          
                              {
                                  t.append( getText( $description.text ) );
                                  t.append( getTab() + "relationship " );
                                  t.append( getText( $relationshipName.text ) );
                                  t.append( " is " );
                                  int len = t.length();
                                  t.append( getText( $leftToRight.text ) );
                                  t.append( "," + NEWLINE );
                                  t.append( getSpace(len) );
                                  t.append( getText( $rightToLeft.text ) );
                                  t.append( NEWLINE );
                                  t.append( getSpace(len) );
                                  t.append( "using " );
                                  t.append( getText( $assocObj.text ) );
                                  t.append( ";" + NEWLINE );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;

halfRelationshipDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( HALF_RELATIONSHIP
                                   from=objectReference
                                   conditionality
                                   rolePhrase
                                   multiplicity
                                   to=objectReference
                                 )                          
                              {
                                  t.append( getText( $from.text ) );
                                  t.append( SPACE );
                                  t.append( getText( $conditionality.text ) );
                                  t.append( SPACE );
                                  t.append( getText( $rolePhrase.text ) );
                                  t.append( SPACE );
                                  t.append( getText( $multiplicity.text ) );
                                  t.append( SPACE );
                                  t.append( getText( $to.text ) );
                              }
                              ;


subtypeRelationshipDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( SUBTYPE_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   supertype=objectReference
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( getTab() + "relationship " );
                                        t.append( getText( $relationshipName.text ) );
                                        t.append( " is " );
                                        t.append( getText( $supertype.text ) );
                                        t.append( " is_a ( " );
                                        int len = t.length();
                                        String sep = "";
                                   }
                                   (subtype=objectReference   
                                   {
                                       t.append( sep + getText( $subtype.text ) );
                                       sep = ", ";
                                   }
                                   )+
                                   {
                                       t.append( " );" + NEWLINE );
                                   }
                                   pragmaList
                                   {
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                          
                              ;

rolePhrase
returns [StringBuilder text]
                              : ^( ROLE_PHRASE
                                   identifier )             
                              {
                                  $text = $identifier.text;
                              }
                              ;

conditionality
returns [StringBuilder text]
                              : UNCONDITIONALLY             
                              {
                                  $text = new StringBuilder( $UNCONDITIONALLY.text );
                              }
                              | CONDITIONALLY               
                              {
                                  $text = new StringBuilder( $CONDITIONALLY.text );
                              }
                              ;

multiplicity
returns [StringBuilder text]
                              : ONE                         
                              {
                                  $text = new StringBuilder( $ONE.text );
                              }
                              | MANY                        
                              {
                                  $text = new StringBuilder( $MANY.text );
                              }
                              ;


relationshipName
returns [StringBuilder text]
                              : ^( RELATIONSHIP_NAME
                                   RelationshipName  
                                 )                          
                              {
                                  $text = new StringBuilder( $RelationshipName.text );
                              }
                              ;
                              

relationshipReference
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : optionalDomainReference
                                relationshipName            
                                {
                                    String dom = getText( $optionalDomainReference.text );
                                    if ( !dom.equals("") ) {
                                        t.append( dom + "::" );
                                    }
                                    t.append( getText( $relationshipName.text ) );
                                }
                              ;


//---------------------------------------------------------
// Pragma Definition
//---------------------------------------------------------


pragmaList
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ( pragma
                                {
                                    t.append( line( getText( $pragma.text ) ) );
                                }
                                )*                          
                              ;

pragma
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( PRAGMA
                                   pragmaName               
                                   {
                                       t.append( "pragma " + getText( $pragmaName.text ) + "(" );
                                       String sep = " ";
                                       String end = ");";
                                   }
                                   ( pragmaValue            
                                   {
                                       t.append( sep + getText( $pragmaValue.text ) );
                                       sep = ", ";
                                       end = " );";
                                   }
                                   )*
                                   {
                                       t.append( end );
                                   }
                                 )                          
                              ;

pragmaValue
returns [StringBuilder text]
                              : identifier                  
                              {
                                  $text = $identifier.text;
                              }
                              | literalExpression           
                              {
                                  $text = $literalExpression.text;
                              }
                              ;

pragmaName
returns [StringBuilder text]
                              : ^( PRAGMA_NAME
                                   identifier               
                                   {
                                       $text = $identifier.text;
                                   }
                                 )
                              ;

//---------------------------------------------------------
// Descriptions
//---------------------------------------------------------

description                   
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( DESCRIPTION          
                                   (Description             
                                   {
                                       t.append( getTab() + $Description.text );
                                   }
                                   )*
                                 )
                              ;

//---------------------------------------------------------
// Dynamic Behaviour
//---------------------------------------------------------

/*  This rule has been added to allow to parse any activity action body file
    without knowledge of what type of activity it contained - LPS */
activityDefinition            
                              : domainServiceDefinition
                              | terminatorServiceDefinition
                              | objectServiceDefinition
                              | stateDefinition
                              ;


domainServiceDefinition
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
                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                   parameterList
                                   returnType?
                                   codeBlock
                                   pragmaList
                                 )                                                   
                              ;


projectTerminator
                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                   parameterList
                                   returnType?
                                   codeBlock         
                                   pragmaList
                                 )                                                   
                              ;



objectServiceDefinition
                              :^( OBJECT_SERVICE_DEFINITION
                                   serviceVisibility
                                   INSTANCE?
                                   fullObjectReference
                                   serviceName
                                   parameterList
                                   returnType?
                                   codeBlock
                                   pragmaList
                                 )                          
                              ;


stateDefinition
                              : ^( STATE_DEFINITION
                                   stateType
                                   fullObjectReference
                                   stateName
                                   parameterList
                                   codeBlock
                                   pragmaList
                                 )                          
                              ;



//---------------------------------------------------------
// Statements
//---------------------------------------------------------

statement
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
                              : ^( STATEMENT_LIST
                                   ( statement                 
                                   )*
                                 )
                              ;


assignmentStatement
                              : ^( ASSIGN
                                   lhs=expression rhs=expression
                                 )                          
                              ;

streamStatement
                              : ^( STREAM_STATEMENT
                                   expression
                                   ( streamOperator         
                                   )+
                                 )                          
                              ;

streamOperator
                              : ^( ( STREAM_IN              
                                   | STREAM_OUT             
                                   | STREAM_LINE_IN         
                                   | STREAM_LINE_OUT        
                                   ) expression
                                 )                          
                              ;

callStatement
                              : ^( CALL
                                   expression               
                                   ( argument               
                                   )*                       
                                 )                          

                              ;


exitStatement
                              : ^( EXIT
                                   condition?
                                 )                          
                              ;

returnStatement
                              : ^( RETURN
                                   expression              
                                 )                          
                              ;

delayStatement
                              : ^( DELAY
                                   expression
                                 )                         
                              ;

raiseStatement
                              : ^( RAISE
                                   exceptionReference
                                   expression?
                                 )                          
                              ;

deleteStatement
                              : ^( DELETE
                                   expression
                                 )                          
                              ;

eraseStatement
                              : ^( ERASE
                                   expression
                                 )                          
                              ;

linkStatement
                              : ^( linkStatementType
                                   lhs=expression      
                                   relationshipSpec
                                   (rhs=expression
                                    assoc=expression? )?
                                 )                          
                              ;

linkStatementType
                              : LINK                        
                              | UNLINK                      
                              ;


cancelTimerStatement
                             : ^( CANCEL
                                  timerId=expression )    
                             ;
                              
scheduleStatement
                              : ^( SCHEDULE
                                   timerId=expression
                                   generateStatement
                                   scheduleType
                                   time=expression
                                   period=expression?
                                 )                         
                              ;
scheduleType
                              : AT											    
                              | DELAY									      
                              ;



generateStatement
                              : ^( GENERATE
                                   eventReference
                                   ( argument               
                                   )*                       
                                   expression? )            
                              ;

ifStatement
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
                              : ^( ELSIF
                                   condition
                                   statementList )          
                              ;

elseBlock
                              : ^( ELSE
                                   statementList )          
                              ;


whileStatement
                              : ^( WHILE
                                   condition
                                   statementList )          
                              ;

condition
                              : ^( CONDITION
                                   expression )             
                              ;


caseStatement
                              :^( CASE
                                  expression
                                  ( caseAlternative         
                                  )*
                                  ( caseOthers              
                                  )?
                                )                           
                              ;

caseAlternative
                              : ^( WHEN                     
                                   ( choice                 
                                   )+
                                   statementList )         
                              ;

choice
                              : ^( CHOICE
                                   expression)              
                              ;

caseOthers
                              : ^( OTHERS
                                   statementList )          
                              ;

forStatement
                              : ^( FOR
                                   loopVariableSpec         
                                   ^( STATEMENT_LIST 
                                      ( statement               
                                      )*
                                    ) 
                                 )
                              ;

loopVariableSpec
                              : ^( LOOP_VARIABLE
                                   identifier
                                   REVERSE?
                                   expression )             
                              ;



//---------------------------------------------------------
// Code Blocks
//---------------------------------------------------------

codeBlock
                              :^( CODE_BLOCK                
                                  ( variableDeclaration     
                                  )*     
                                  ^(STATEMENT_LIST ( statement               
                                  )* )
                                  ( exceptionHandler        
                                  )*
                                  ( otherHandler            
                                  )?
                                )
                              ;



variableDeclaration
                              : ^( VARIABLE_DECLARATION
                                   variableName
                                   READONLY?
                                   typeReference
                                   expression?
                                   pragmaList)
                              ;


exceptionHandler
                              : ^( EXCEPTION_HANDLER
                                   exceptionReference       
                                   ^(STATEMENT_LIST ( statement               
                                   )* )
                                 )
                              ;

otherHandler
                              : ^( OTHER_HANDLER            
                                   ^(STATEMENT_LIST ( statement              
                                   )* )
                                 )
                              ;

variableName
                              : ^( VARIABLE_NAME
                                   identifier )             
                              ;

//---------------------------------------------------------
// Expression Definition
//---------------------------------------------------------


expression
returns [StringBuilder text]
                              : binaryExpression            
                              | unaryExpression             
                              | rangeExpression             
                              | aggregateExpression         
                              | linkExpression              
                              | navigateExpression          
                              | correlateExpression         
                              | orderByExpression           
                              | createExpression            
                              | findExpression              
                              | dotExpression               
                              | terminatorServiceExpression 
                              | callExpression              
                              | sliceExpression             
                              | primeExpression             
                              | nameExpression              
                              | literalExpression           
                              {
                                  $text = new StringBuilder( $literalExpression.text );
                              }
                              ;

binaryExpression
                              : ^( binaryOperator
                                   lhs=expression
                                   rhs=expression
                                 )                          
                              ;


binaryOperator
                              : AND                                        
                              | CONCATENATE                 
                              | DISUNION                    
                              | DIVIDE                      
                              | EQUAL                       
                              | GT                          
                              | GTE                         
                              | INTERSECTION                
                              | LT                          
                              | LTE                         
                              | MINUS                       
                              | MOD                         
                              | NOT_EQUAL                   
                              | NOT_IN                      
                              | OR                          
                              | PLUS                        
                              | POWER                       
                              | REM                         
                              | TIMES                       
                              | UNION                       
                              | XOR                         
                              ;

unaryExpression
                              :^( unaryOperator 
                                  expression
                                )                           
                              ;

unaryOperator
                              : UNARY_PLUS                  
                              | UNARY_MINUS                 
                              | NOT                         
                              | ABS                         
                              ;


rangeExpression
                              : ^( RANGE_DOTS
                                   from=expression
                                   to=expression
                                 )                          
                              ;




aggregateExpression

                              : ^( AGGREGATE
                                   ( expression             
                                   )+ 
                                 )                          
                              ;


linkExpression
                              : ^( linkExpressionType
                                   lhs=expression      
                                   relationshipSpec
                                   rhs=expression?
                                 )                          
                              ;
linkExpressionType
                              : LINK                        
                              | UNLINK                      
                              ;


navigateExpression
                              : ^( NAVIGATE
                                   expression
                                   relationshipSpec
                                                            
                                   ( whereClause           
                                   )?
                                 )                          
                                                                                          
                              ;

correlateExpression
                              : ^( CORRELATE
                                   lhs=expression
                                   rhs=expression
                                   relationshipSpec
                                 )                          
                              ;



orderByExpression
                              : ^( ( ORDERED_BY             
                                   | REVERSE_ORDERED_BY     
                                   ) 
                                   expression               
                                   ( sortOrder              
                                   )* 
                                 )                          
                              ;

sortOrder
                              : ^( SORT_ORDER_COMPONENT
                                   REVERSE?
                                   identifier               
                                 )
                              ;

createExpression
                              : ^( CREATE
                                   objectReference 
                                   ( createArgument
                                   )*
                                 )                          
                              ;

createArgument
                              : ^( CREATE_ARGUMENT
                                   attributeName
                                   expression )              
                              | ^( CURRENT_STATE
                                   stateName )               
                              ;

findExpression
                              : ^( findType
                                   expression               
                                   whereClause
                                 )                          
                              ;

whereClause
                              : ^( WHERE
                                   ( expression             
                                   )?
                                 )
                              ;

findType
                              : FIND                        
                              | FIND_ONE                    
                              | FIND_ONLY                   
                              ;


dotExpression
                              : ^( DOT
                                   expression
                                   identifier
                                 )                          
                              ;

terminatorServiceExpression
                              : ^( TERMINATOR_SCOPE
                                   expression
                                   identifier
                                 )                          
                              ;

callExpression
                              : ^( CALL
                                   expression               
                                   ( argument               
                                   )*                       
                                 )                          

                              ;

nameExpression
                              : ^( NAME
                                   identifier
                                 )                                
                              | ^( NAME
                                   domainReference
                                   identifier
                                 )                          
                              | ^( FIND_ATTRIBUTE
                                   identifier )             
                              | compoundTypeName            
                              ;


compoundTypeName
                              : instanceTypeRef             
                              | sequenceTypeRef             
                              | arrayTypeRef                
                              | setTypeRef                  
                              | bagTypeRef                  
                              ;


argument
                              : ^( ARGUMENT
                                   expression
                                 )                          
                              ;

sliceExpression
                              : ^( SLICE
                                   prefix=expression
                                   slice=expression
                                 )                          
                              ;

primeExpression
                              : ^( PRIME
	                                 expression
                                   identifier
                                   ( argument               
                                   )*                       
                                 )                          
                              ;

literalExpression
returns [StringBuilder text]
                              : IntegerLiteral              
                              {
                                  $text = new StringBuilder( $IntegerLiteral.text );
                              }
                              | RealLiteral                 
                              {
                                  $text = new StringBuilder( $RealLiteral.text );
                              }
                              | CharacterLiteral            
                              {
                                  $text = new StringBuilder( $CharacterLiteral.text );
                              }
                              | StringLiteral               
                              {
                                  $text = new StringBuilder( $StringLiteral.text );
                              }
                              | TimestampLiteral            
                              {
                                  $text = new StringBuilder( $TimestampLiteral.text );
                              }
                              | DurationLiteral             
                              {
                                  $text = new StringBuilder( $DurationLiteral.text );
                              }
                              | TRUE                        
                              {
                                  $text = new StringBuilder( $TRUE.text );
                              }
                              | FALSE                       
                              {
                                  $text = new StringBuilder( $FALSE.text );
                              }
                              | NULL                        
                              {
                                  $text = new StringBuilder( $NULL.text );
                              }
                              | FLUSH                       
                              {
                                  $text = new StringBuilder( $FLUSH.text );
                              }
                              | ENDL                        
                              {
                                  $text = new StringBuilder( $ENDL.text );
                              }
                              | THIS                        
                              {
                                  $text = new StringBuilder( $THIS.text );
                              }
                              | CONSOLE                     
                              {
                                  $text = new StringBuilder( $CONSOLE.text );
                              }
                              ; 
