tree grammar MaslFormat;

options
{
  tokenVocab=MaslParser;
  ASTLabelType=CommonTree;
}

@header
{
import java.io.*;
import java.util.Collections;
}

@annotations
{
@SuppressWarnings("all")
}

@members
{
// private fields
private PrintStream out;
private int indent;
private boolean sort;
private boolean reorder;
private boolean comments;

private final int parameterWrap = 1;

private static final String _ASSIGN         = ":=";
private static final String _CANNOT_HAPPEN  = "Cannot_Happen";
private static final String _COLON          = ":";
private static final String _COMMA          = ",";
private static final String _DEFERRED       = "deferred";
private static final String _DOMAIN         = "domain";
private static final String _DOT            = ".";
private static final String _END            = "end";
private static final String _ENUM           = "enum";
private static final String _EVENT          = "event";
private static final String _EXCEPTION      = "exception";
private static final String _GOES_TO        = "=>";
private static final String _IDENTIFIER     = "identifier";
private static final String _IGNORE         = "Ignore";
private static final String _IS             = "is";
private static final String _IS_A           = "is_a";
private static final String _LPAREN         = "(";
private static final String _NEWLINE        = "\n";
private static final String _NON_EXISTENT   = "Non_Existent";
private static final String _OBJECT         = "object";
private static final String _PRAGMA         = "pragma";
private static final String _PROJECT        = "project";
private static final String _REFERENTIAL    = "referential";
private static final String _RELATIONSHIP   = "relationship";
private static final String _RETURN         = "return";
private static final String _RPAREN         = ")";
private static final String _SCOPE          = "::";
private static final String _SEMI           = ";";
private static final String _SERVICE        = "service";
private static final String _SPACE          = " ";
private static final String _STATE          = "state";
private static final String _STRUCTURE      = "structure";
private static final String _TERMINATOR     = "terminator";
private static final String _TERMINATOR_SCOPE   = "~>";
private static final String _TRANSITION     = "transition";
private static final String _TYPE           = "type";
private static final String _USING          = "using";

// tab defaults to 2 spaces, but can be set by the user
private static String _TAB                  = "  ";

// initilization
public void init() {
    out = System.out;
    indent = 0;
    sort = false;
    reorder = false;
    comments = false;
}

// public setters
public void setOut( PrintStream output ) {
    out = output;
}

public void setSort( boolean sort ) {
    this.sort = sort;
}

public void setReorder( boolean reorder ) {
    this.reorder = reorder;
}

public void setComments( boolean comments ) {
    this.comments = comments;
}

public void setTabWidth( int t ) {
    String tab = "";
    for ( int i = 0; i < t; i++ ) {
        tab += " ";
    }
    _TAB = tab;
}

// private methods
private void print( String s ) {
    out.print( s );
    out.flush();
}

private String getTab() {
    StringBuilder tabstr = new StringBuilder();
    for (int i = 0; i < indent; i++) {
        tabstr.append( _TAB );
    }
    return tabstr.toString();
}

private String getSpace( int num ) {
    StringBuilder spcstr = new StringBuilder();
    for (int i = 0; i < num; i++) {
        spcstr.append( _SPACE );
    }
    return spcstr.toString();
}

private String line( String s ) {
    return getTab() + s + _NEWLINE;
}

private String line() {
    return getTab() + _NEWLINE;
}

private String getText( StringBuilder sb ) {
    if ( sb == null ) return "";
    return sb.toString();
}

private void sort( List<String> l ) {
    if ( l == null ) return;
    Collections.sort( l );
}

private String cat( List<String> l, boolean pad ) {
    StringBuilder sb = new StringBuilder();
    if ( pad ) sb.append( line() );
    for ( String s : l ) {
        sb.append( s );
        if ( pad ) sb.append( line() );
    }
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
                              | activityDefinition
                              {
                                  print( getText( $activityDefinition.text ) );
                              }
                              ;

activityDefinition            
returns [StringBuilder text]
                              : domainServiceDefinition
                              {
                                  $text = $domainServiceDefinition.text;
                              }
                              | terminatorServiceDefinition
                              {
                                  $text = $terminatorServiceDefinition.text;
                              }
                              | objectServiceDefinition
                              {
                                  $text = $objectServiceDefinition.text;
                              }
                              | stateDefinition
                              {
                                  $text = $stateDefinition.text;
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
    List<String> projectItems = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( PROJECT
                                   projectName
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( _PROJECT + _SPACE + getText( $projectName.text ) + _SPACE + _IS ) );
                                        indent++;
                                   }
                                   ( projectDomainDefinition 
                                   {
                                       projectItems.add( getText( $projectDomainDefinition.text ) );
                                   }
                                   )*
                                   {
                                       if ( sort ) sort( projectItems );
                                       t.append( cat( projectItems, true ) );
                                       indent--;
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       t.append( line( _END + _SPACE + _PROJECT + _SEMI ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                   )              
                              ;

projectDomainDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> projectDomainItems = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( DOMAIN
                                   projectDomainReference   
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( _DOMAIN + _SPACE + getText( $projectDomainReference.text ) + _SPACE + _IS ) );
                                        indent++;
                                   }
                                   ( projectTerminatorDefinition    
                                   {
                                       projectDomainItems.add( getText( $projectTerminatorDefinition.text ) );
                                   }
                                   )*
                                   {
                                       if ( sort ) sort( projectDomainItems );
                                       t.append( cat( projectDomainItems, false ) );
                                       indent--;
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       t.append( line( _END + _SPACE + _DOMAIN + _SEMI ) );
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
    List<String> domainItems = new ArrayList<String>();
    List<String> objDecl = new ArrayList<String>();
    List<String> servDecl = new ArrayList<String>();
    List<String> termDef = new ArrayList<String>();
    List<String> relDef = new ArrayList<String>();
    List<String> objDef = new ArrayList<String>();
    List<String> typeDef = new ArrayList<String>();
    List<String> typeDecl = new ArrayList<String>();
    List<String> expDecl = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( DOMAIN
                                   domainName                    
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( _DOMAIN + _SPACE + getText( $domainName.text ) + _SPACE + _IS ) );
                                        indent++;
                                   }
                                   ( objectDeclaration
                                   {
                                       domainItems.add( getText( $objectDeclaration.text ) );
                                       objDecl.add( getText( $objectDeclaration.text ) );
                                   }
                                   | domainServiceDeclaration
                                   {
                                       domainItems.add( getText( $domainServiceDeclaration.text ) );
                                       servDecl.add( getText( $domainServiceDeclaration.text ) );
                                   }
                                   | domainTerminatorDefinition
                                   {
                                       domainItems.add( getText( $domainTerminatorDefinition.text ) );
                                       termDef.add( getText( $domainTerminatorDefinition.text ) );
                                   }
                                   | relationshipDefinition
                                   {
                                       domainItems.add( getText( $relationshipDefinition.text ) );
                                       relDef.add( getText( $relationshipDefinition.text ) );
                                   }
                                   | objectDefinition
                                   {
                                       domainItems.add( getText( $objectDefinition.text ) );
                                       objDef.add( getText( $objectDefinition.text ) );
                                   }
                                   | typeDeclaration
                                   {
                                       domainItems.add( getText( $typeDeclaration.text ) );
                                       typeDef.add( getText( $typeDeclaration.text ) );
                                   }
                                   | typeForwardDeclaration
                                   {
                                       domainItems.add( getText( $typeForwardDeclaration.text ) );
                                       typeDecl.add( getText( $typeForwardDeclaration.text ) );
                                   }
                                   | exceptionDeclaration
                                   {
                                       domainItems.add( getText( $exceptionDeclaration.text ) );
                                       expDecl.add( getText( $exceptionDeclaration.text ) );
                                   }
                                   )*
                                   {
                                       if ( !reorder ) {
                                           t.append( cat( domainItems, false ) );
                                       }
                                       else {
                                           if ( sort ) {
                                               sort( objDecl );
                                               sort( servDecl );
                                               sort( termDef );
                                               sort( relDef );
                                               sort( objDef );
                                               sort( typeDef );
                                               sort( typeDecl );
                                               sort( expDecl );
                                           }
                                           t.append( line() );
                                           if ( !objDecl.isEmpty() ) {
                                               if ( comments ) t.append( line( "// OBJECT DECLARATIONS" ) );
                                               t.append( cat( objDecl, false ) );
                                               t.append( line() );
                                           }
                                           if ( !typeDef.isEmpty() || !typeDecl.isEmpty() ) {
                                               if ( comments ) t.append( line( "// TYPE DEFINITIONS" ) );
                                               t.append( cat( typeDecl, false ) );
                                               t.append( cat( typeDef, false ) );
                                               t.append( line() );
                                           }
                                           if ( !expDecl.isEmpty() ) {
                                               if ( comments ) t.append( line( "// EXCEPTION DEFINITIONS" ) );
                                               t.append( cat( expDecl, false ) );
                                               t.append( line() );
                                           }
                                           if ( !servDecl.isEmpty() ) {
                                               if ( comments ) t.append( line( "// DOMAIN SERVICE DECLARATIONS" ) );
                                               t.append( cat( servDecl, false ) );
                                               t.append( line() );
                                           }
                                           if ( !termDef.isEmpty() ) {
                                               if ( comments ) t.append( line( "// TERMINATOR DEFINITIONS" ) );
                                               t.append( cat( termDef, true ) );
                                               t.append( line() );
                                           }
                                           if ( !relDef.isEmpty() ) {
                                               if ( comments ) t.append( line( "// RELATIONSHIP DEFINITIONS" ) );
                                               t.append( cat( relDef, true ) );
                                               t.append( line() );
                                           }
                                           if ( !objDef.isEmpty() ) {
                                               if ( comments ) t.append( line( "// OBJECT DEFINITIONS" ) );
                                               t.append( cat( objDef, true ) );
                                               t.append( line() );
                                           }
                                       }
                                       indent--;
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       t.append( line( _END + _SPACE + _DOMAIN + _SEMI ) );
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
                                   pragmaList[_SPACE]
                                 )                          
                              {
                                  t.append( getTab() );
                                  t.append( getText( $exceptionVisibility.text ) );
                                  t.append( _SPACE + _EXCEPTION + _SPACE );
                                  t.append( getText( $exceptionName.text ) );
                                  t.append( _SEMI + _SPACE );
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
                                   pragmaList[_SPACE]
                                 )                          
                              {
                                  t.append( getTab() );
                                  t.append( getText( $typeVisibility.text ) );
                                  t.append( _SPACE + _TYPE + _SPACE );
                                  t.append( getText( $typeName.text ) );
                                  t.append( _SEMI + _SPACE );
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
                                   pragmaList[_SPACE]
                                   typeDefinition			
                                 )                          
                              {
                                  t.append( getText( $description.text ) );
                                  t.append( getTab() );
                                  t.append( getText( $typeVisibility.text ) );
                                  t.append( _SPACE + _TYPE + _SPACE );
                                  t.append( getText( $typeName.text ) );
                                  t.append( _SPACE + _IS + _SPACE );
                                  t.append( getText( $typeDefinition.text ) );
                                  t.append( _SEMI + _SPACE );
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
    List<String> comps = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( STRUCTURE
                              {
                                  t.append( _STRUCTURE + _NEWLINE );
                                  indent++;
                              }
                                   ( structureComponentDefinition 
                                   {
                                       comps.add( getText( $structureComponentDefinition.text ) );
                                   }
                                   )+
                                 )                          
                              {
                                  if ( sort ) sort( comps );
                                  t.append( cat( comps, false ) );
                                  indent--;
                                  t.append( getTab() + _END + _SPACE + _STRUCTURE );
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
                                       t.append( _COLON + _SPACE );
                                       t.append( getText( $typeReference.text ) );
                                   }
                                   (expression //TODO finish all expressions
                                   {
                                       t.append( _SPACE + _ASSIGN + _SPACE );
                                       t.append( getText( $expression.text ) );
                                   }
                                   )?
                                   pragmaList[_SPACE]
                                   {
                                       t.append( _SEMI + _SPACE );
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
    String sep = _SPACE;
    t.append( _ENUM + _SPACE + _LPAREN );
    List<String> enums = new ArrayList<String>();
}
@after {
    if ( sort ) sort( enums );
    for ( String s : enums ) {
        t.append( sep + s );
        sep = _COMMA + _SPACE;
    }
    t.append( _SPACE + _RPAREN );
    $text = t;
}
                              : ^( ENUM
                                   ( enumerator             
                                   {
                                       enums.add( getText( $enumerator.text ) );
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
                                       t.append( _SPACE + _ASSIGN + _SPACE );
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
    List<String> domainTerminatorServices = new ArrayList<String>();
}
@after {
    $text = t;
}

                              : ^( TERMINATOR_DEFINITION
                                   terminatorName             
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( _TERMINATOR + _SPACE + getText( $terminatorName.text ) + _SPACE + _IS ) );
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       indent++;
                                   }
                                   ( terminatorServiceDeclaration
                                   {
                                       domainTerminatorServices.add( getText( $terminatorServiceDeclaration.text ) );
                                   }
                                   )*
                                   {
                                       if ( sort ) sort( domainTerminatorServices );
                                       t.append( cat( domainTerminatorServices, false ) );
                                       indent--;
                                       t.append( line( _END + _SPACE + _TERMINATOR + _SEMI ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )
                              ;

projectTerminatorDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> projectTerminatorServices = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( TERMINATOR_DEFINITION
                                   terminatorName
                                   description
                                   {
                                        t.append( getText( $description.text ) );
                                        t.append( line( _TERMINATOR + _SPACE + getText( $terminatorName.text ) + _SPACE + _IS ) );
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       indent++;
                                   }
                                   ( projectTerminatorServiceDeclaration
                                   {
                                       projectTerminatorServices.add( getText( $projectTerminatorServiceDeclaration.text ) );
                                   }
                                   )*
                                   {
                                       if ( sort ) sort( projectTerminatorServices );
                                       t.append( cat( projectTerminatorServices, false ) );
                                       indent--;
                                       t.append( line( _END + _SPACE + _TERMINATOR + _SEMI ) );
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
                                   {
                                       t.append( getText( $description.text ) );
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( _SPACE );
                                       t.append( _SERVICE );
                                       t.append( _SPACE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   {
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( _SPACE + _RETURN + _SPACE );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   {
                                       t.append( _SEMI );
                                   }
                                   pragmaList[_SPACE]
                                   {
                                       t.append( _SPACE );
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
                                   {
                                       t.append( getText( $description.text ) );
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( _SPACE );
                                       t.append( _SERVICE );
                                       t.append( _SPACE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   {
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( _SPACE + _RETURN + _SPACE );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   {
                                       t.append( _SEMI );
                                   }
                                   pragmaList[_SPACE]
                                   {
                                       t.append( _SPACE );
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
                                    if ( !dom.isEmpty() ) {
                                        t.append( dom + _SCOPE );
                                    }
                                    t.append( getText( $objectName.text ) );
                                }
                              ;

fullObjectReference
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : domainReference
                                objectName                  
                                {
                                    t.append( getText( $domainReference.text ) );
                                    t.append( _SCOPE );
                                    t.append( getText( $objectName.text ) );
                                }
                              ;


optionalObjectReference
returns [StringBuilder text]
                              : objectReference         
                              {
                                  $text = $objectReference.text;
                              }
                              | /* blank */
                              {
                                  $text = new StringBuilder();
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
                                   pragmaList[_NEWLINE]
                                 )                          
                              {
                                  t.append( line( _OBJECT + _SPACE + getText( $objectName.text ) + _SEMI ) );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;


objectDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> objectItems = new ArrayList<String>();
    List<String> attDef = new ArrayList<String>();
    List<String> idDef = new ArrayList<String>();
    List<String> servDecl = new ArrayList<String>();
    List<String> evtDef = new ArrayList<String>();
    List<String> stDecl = new ArrayList<String>();
    List<String> transTab = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( OBJECT_DEFINITION
                                   objectName               
                                   {
                                       t.append( line( _OBJECT + _SPACE + getText( $objectName.text ) + _SPACE + _IS ) );
                                       indent++;
                                   }
                                   ( attributeDefinition
                                   {
                                       objectItems.add( getText( $attributeDefinition.text ) );
                                       attDef.add( getText( $attributeDefinition.text ) );
                                   }
                                   | identifierDefinition
                                   {
                                       objectItems.add( getText( $identifierDefinition.text ) );
                                       idDef.add( getText( $identifierDefinition.text ) );
                                   }
                                   | objectServiceDeclaration
                                   {
                                       objectItems.add( getText( $objectServiceDeclaration.text ) );
                                       servDecl.add( getText( $objectServiceDeclaration.text ) );
                                   }
                                   | eventDefinition
                                   {
                                       objectItems.add( getText( $eventDefinition.text ) );
                                       evtDef.add( getText( $eventDefinition.text ) );
                                   }
                                   | stateDeclaration
                                   {
                                       objectItems.add( getText( $stateDeclaration.text ) );
                                       stDecl.add( getText( $stateDeclaration.text ) );
                                   }
                                   | transitionTable
                                   {
                                       objectItems.add( getText( $transitionTable.text ) );
                                       transTab.add( getText( $transitionTable.text ) );
                                   }
                                   )*
                                   {
                                       if ( !reorder ) {
                                           t.append( cat( objectItems, false ) );
                                       }
                                       else {
                                           if ( sort ) {
                                               sort( attDef );
                                               sort( idDef );
                                               sort( servDecl );
                                               sort( evtDef );
                                               sort( stDecl );
                                               sort( transTab );
                                           }
                                           t.append( line() );
                                           if ( !attDef.isEmpty() ) {
                                               if ( comments ) t.append( line( "// ATTRIBUTE DEFINITIONS" ) );
                                               t.append( cat( attDef, false ) );
                                               t.append( line() );
                                           }
                                           if ( !idDef.isEmpty() ) {
                                               if ( comments ) t.append( line( "// IDENTIFIER DEFINITIONS" ) );
                                               t.append( cat( idDef, false ) );
                                               t.append( line() );
                                           }
                                           if ( !servDecl.isEmpty() ) {
                                               if ( comments ) t.append( line( "// OBJECT SERVICE DECLARATIONS" ) );
                                               t.append( cat( servDecl, false ) );
                                               t.append( line() );
                                           }
                                           if ( !stDecl.isEmpty() ) {
                                               if ( comments ) t.append( line( "// STATE DECLARATIONS" ) );
                                               t.append( cat( stDecl, false ) );
                                               t.append( line() );
                                           }
                                           if ( !evtDef.isEmpty() ) {
                                               if ( comments ) t.append( line( "// EVENT DEFINITIONS" ) );
                                               t.append( cat( evtDef, false ) );
                                               t.append( line() );
                                           }
                                           if ( !transTab.isEmpty() ) {
                                               if ( comments ) t.append( line( "// TRANSITION TABLES" ) );
                                               t.append( cat( transTab, false ) );
                                               t.append( line() );
                                           }
                                       }
                                       indent--;
                                   }
                                   description
                                   pragmaList[_NEWLINE]
                                   {
                                       t.insert( 0, getText( $description.text ) );
                                       t.append( line( _END + _SPACE + _OBJECT + _SEMI ) );
                                       t.append( getText( $pragmaList.text ) );
                                   }

                                 )
                              ;

attributeDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> refs = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( ATTRIBUTE_DEFINITION
                                   attributeName            
                                   {
                                       t.append( getTab() + getText( $attributeName.text ) + _COLON + _SPACE );
                                   }
                                   (PREFERRED
                                   {
                                       t.append( $PREFERRED.text + _SPACE );
                                   }
                                   )?
                                   (UNIQUE
                                   {
                                       t.append( $UNIQUE.text + _SPACE );
                                   }
                                   )?
                                   {
                                       boolean first_ref = true;
                                       String sep = "";
                                   }
                                   ( attReferential         
                                   {
                                       if ( first_ref ) {
                                           t.append( _REFERENTIAL + _SPACE + _LPAREN + _SPACE );
                                           first_ref = false;
                                       }
                                       refs.add( getText( $attReferential.text ) );
                                   }
                                   )*
                                   description
                                   typeReference
                                   {
                                       if ( sort ) sort( refs );
                                       for ( String s : refs ) {
                                           t.append( sep + s );
                                           sep = _COMMA + _SPACE;
                                       }
                                       if ( t.indexOf( _REFERENTIAL ) != -1 ) {
                                           t.append( _SPACE + _RPAREN + _SPACE );
                                       }
                                       t.insert( 0, getText( $description.text ) );
                                       t.append( getText( $typeReference.text ) );
                                   }
                                   (expression
                                   {
                                       t.append( _SPACE + _ASSIGN + _SPACE );
                                       t.append( getText( $expression.text ) );
                                   }
                                   )?
                                   pragmaList[_SPACE]
                                   {
                                       t.append( _SEMI + _SPACE );
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
                                  t.append( _DOT );
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
                                       t.append( _DOT + getText( $objOrRole.text ) );
                                   }
                                   ( objectReference
                                   {
                                       t.append( _DOT + getText( $objectReference.text ) );
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
                                       t.append( _SPACE );
                                   }
                                   (INSTANCE
                                   {
                                       t.append( $INSTANCE.text + _SPACE );
                                   }
                                   (relationshipReference
                                   {
                                       t.append( _DEFERRED + _SPACE + _LPAREN + _SPACE + getText( $relationshipReference.text ) + _SPACE + _RPAREN + _SPACE );
                                   }
                                   )?
                                   )?
                                   serviceName
                                   description
                                   {
                                       t.insert( 0, getText( $description.text ) );
                                       t.append( _SERVICE );
                                       t.append( _SPACE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   {
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( _SPACE + _RETURN + _SPACE );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   {
                                       t.append( _SEMI );
                                   }
                                   pragmaList[_SPACE]
                                   {
                                       t.append( _SPACE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                          
                              ;

identifierDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> attrs = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( IDENTIFIER
                                   {
                                       t.append( getTab() + _IDENTIFIER + _SPACE + _IS + _SPACE + _LPAREN + _SPACE );
                                       String sep = "";
                                   }
                                   ( attributeName          
                                   {
                                       attrs.add( getText( $attributeName.text ) );
                                   }
                                   )+
                                   pragmaList[_SPACE]
                                   {
                                       if ( sort ) sort( attrs );
                                       for ( String s : attrs ) {
                                           t.append( sep + s );
                                           sep = _COMMA + _SPACE;
                                       }
                                       t.append( _SPACE + _RPAREN + _SEMI + _SPACE );
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
                                   {
                                       t.append( getText( $description.text ) );
                                       t.append( getTab() );
                                       String evt_type = getText( $eventType.text );
                                       if ( !evt_type.isEmpty() ) {
                                           t.append( evt_type + _SPACE );
                                       }
                                       t.append( _EVENT + _SPACE );
                                       t.append( getText( $eventName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   pragmaList[_SPACE]
                                 )
                              {
                                  
                                  t.append( getText( $parameterList.text ) );
                                  t.append( _SEMI + _SPACE );
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
                                  $text = new StringBuilder();
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
                                   {
                                       t.append( getText( $description.text ) );
                                       t.append( getTab() );
                                       String st_type = getText( $stateType.text );
                                       if ( !st_type.isEmpty() ) {
                                           t.append( st_type + _SPACE );
                                       }
                                       t.append( _STATE + _SPACE );
                                       t.append( getText( $stateName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   pragmaList[_SPACE]
                                )                           
                              {
                                  t.append( getText( $parameterList.text ) );
                                  t.append( _SEMI + _SPACE );
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
                                  $text = new StringBuilder();
                              }
                              ;


transitionTable
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> rows = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( TRANSITION_TABLE
                                   transTableType
                                   {
                                       t.append( getTab() );
                                       String tabType = getText( $transTableType.text );
                                       if ( !tabType.isEmpty() ) {
                                           t.append( tabType + _SPACE );
                                       }
                                       t.append( _TRANSITION + _SPACE + _IS + _NEWLINE );
                                       indent++;
                                   }
                                   ( transitionRow          
                                   {
                                       rows.add( getText( $transitionRow.text ) );
                                   }
                                   )+
                                   {
                                       indent--;
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       if ( sort ) sort( rows );
                                       for ( String s : rows ) {
                                           t.append( s );
                                       }
                                       t.append( line( _END + _SPACE + _TRANSITION + _SEMI ) );
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
                                  $text = new StringBuilder();
                              }
                              ;

transitionRow
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> ops = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( TRANSITION_ROW
                                   startState
                                   {
                                       t.append( getTab() + getText( $startState.text ) + _SPACE + _LPAREN + _SPACE );
                                       int len = t.length();
                                       String sep = "";
                                   }
                                   ( transitionOption
                                   {
                                       ops.add( getText( $transitionOption.text ) );
                                   }
                                   )+
                                   pragmaList[_SPACE]
                                   {
                                       if ( sort ) sort( ops );
                                       for ( String s : ops ) {
                                           t.append( sep + s );
                                           sep = _COMMA + _NEWLINE + getSpace(len);
                                       }
                                       t.append( _SPACE + _RPAREN + _SEMI + _SPACE );
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
                                  t.append( _SPACE + _GOES_TO + _SPACE );
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
                                  $text = new StringBuilder( _NON_EXISTENT );
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
                                  $text = new StringBuilder( _IGNORE );
                              }
                              | CANNOT_HAPPEN               
                              {
                                  $text = new StringBuilder( _CANNOT_HAPPEN );
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
                                    if ( !obj.isEmpty() ) {
                                        t.append( obj + _DOT );
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
                                   {
                                       t.append( getText( $description.text ) );
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( _SPACE );
                                       t.append( _SERVICE );
                                       t.append( _SPACE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   {
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( _SPACE + _RETURN + _SPACE );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   {
                                       t.append( _SEMI );
                                   }
                                   pragmaList[_SPACE]
                                   {
                                       t.append( _SPACE );
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
                                  t.append( _COLON + _SPACE );
                                  t.append( getText( $parameterMode.text ) );
                                  t.append( _SPACE );
                                  t.append( getText( $parameterType.text ) );
                              }
                              ;
                              
parameterList[StringBuilder parent]
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> params = new ArrayList<String>();
    String sep = _SPACE;
    String end = _RPAREN;
    t.append( _LPAREN );
    int len = t.length() + _SPACE.length();
    if ( parent != null ) {
        int last_nl = parent.lastIndexOf( _NEWLINE );
        if ( last_nl == -1 ) {
            len += parent.length();
        }
        else {
            len += parent.substring( last_nl+1 ).length();
        }
    }
}
@after {
    for ( String s : params ) {
        t.append( sep + s );
        if ( params.size() > parameterWrap ) sep = _COMMA + _NEWLINE + getSpace(len);
        else sep = _COMMA + _SPACE;
        end = _SPACE + _RPAREN;
    }
    t.append( end );
    $text = t;
}

                              : ( parameterDefinition       
                              {
                                  params.add( getText( $parameterDefinition.text ) );
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
    List<String> halfRels = new ArrayList<String>();
}
@after {
    $text = t;
}
                              : ^( REGULAR_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   leftToRight=halfRelationshipDefinition
                                   rightToLeft=halfRelationshipDefinition
                                   pragmaList[_SPACE]
                                 )                          
                              {
                                  halfRels.add( getText( $leftToRight.text ) );
                                  halfRels.add( getText( $rightToLeft.text ) );
                                  if ( sort ) sort( halfRels );

                                  t.append( getText( $description.text ) );
                                  t.append( getTab() + _RELATIONSHIP + _SPACE );
                                  t.append( getText( $relationshipName.text ) );
                                  t.append( _SPACE + _IS + _SPACE );
                                  int len = t.length();
                                  t.append( halfRels.get(0) );
                                  t.append( _COMMA + _NEWLINE );
                                  t.append( getSpace(len) );
                                  t.append( halfRels.get(1) );
                                  t.append( _SEMI + _SPACE );
                                  t.append( getText( $pragmaList.text ) );
                              }
                              ;


assocRelationshipDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> halfRels = new ArrayList<String>();
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
                                   pragmaList[_SPACE]
                                 )                          
                              {
                                  halfRels.add( getText( $leftToRight.text ) );
                                  halfRels.add( getText( $rightToLeft.text ) );
                                  if ( sort ) sort( halfRels );

                                  t.append( getText( $description.text ) );
                                  t.append( getTab() + _RELATIONSHIP + _SPACE );
                                  t.append( getText( $relationshipName.text ) );
                                  t.append( _SPACE + _IS + _SPACE );
                                  int len = t.length();
                                  t.append( halfRels.get(0) );
                                  t.append( _COMMA + _NEWLINE );
                                  t.append( getSpace(len) );
                                  t.append( halfRels.get(1) );
                                  t.append( _NEWLINE );
                                  t.append( getSpace(len) );
                                  t.append( _USING + _SPACE );
                                  t.append( getText( $assocObj.text ) );
                                  t.append( _SEMI + _SPACE );
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
                                  t.append( _SPACE );
                                  t.append( getText( $conditionality.text ) );
                                  t.append( _SPACE );
                                  t.append( getText( $rolePhrase.text ) );
                                  t.append( _SPACE );
                                  t.append( getText( $multiplicity.text ) );
                                  t.append( _SPACE );
                                  t.append( getText( $to.text ) );
                              }
                              ;


subtypeRelationshipDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> subtypes = new ArrayList<String>();
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
                                        t.append( getTab() + _RELATIONSHIP + _SPACE );
                                        t.append( getText( $relationshipName.text ) );
                                        t.append( _SPACE + _IS + _SPACE );
                                        t.append( getText( $supertype.text ) );
                                        t.append( _SPACE + _IS_A + _SPACE + _LPAREN + _SPACE );
                                        String sep = "";
                                   }
                                   (subtype=objectReference   
                                   {
                                       subtypes.add( getText( $subtype.text ) );
                                   }
                                   )+
                                   {
                                       if ( sort ) sort( subtypes );
                                       for ( String s : subtypes ) {
                                           t.append( sep + s );
                                           sep = _COMMA + _SPACE;
                                       }
                                       t.append( _SPACE + _RPAREN + _SEMI + _SPACE );
                                   }
                                   pragmaList[_SPACE]
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
                                    if ( !dom.isEmpty() ) {
                                        t.append( dom + _SCOPE );
                                    }
                                    t.append( getText( $relationshipName.text ) );
                                }
                              ;


//---------------------------------------------------------
// Pragma Definition
//---------------------------------------------------------


pragmaList[String delim]
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
    List<String> pragmas = new ArrayList<String>();
}
@after {
    if ( sort ) sort( pragmas );
    t.append( cat( pragmas, false ) );
    if ( !delim.equals( _NEWLINE ) ) {
        t.append( line() );
    }
    $text = t;
}
                              : ( pragma
                                {
                                    if ( delim.equals( _NEWLINE ) ) {
                                        pragmas.add( line( getText( $pragma.text ) ) );
                                    }
                                    else {
                                        pragmas.add( getText( $pragma.text ) + delim );
                                    }
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
                                       t.append( _PRAGMA + _SPACE + getText( $pragmaName.text ) + _LPAREN );
                                       String sep = _SPACE;
                                       String end = _RPAREN + _SEMI;
                                   }
                                   ( pragmaValue            
                                   {
                                       t.append( sep + getText( $pragmaValue.text ) );
                                       sep = _COMMA + _SPACE;
                                       end = _SPACE + _RPAREN + _SEMI;
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

domainServiceDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( DOMAIN_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   serviceName
                                   {
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( _SPACE );
                                       t.append( _SERVICE );
                                       t.append( _SPACE );
                                       t.append( getText( $domainReference.text ) );
                                       t.append( _SCOPE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   {
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( _SPACE + _RETURN + _SPACE );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   codeBlock
                                   {
                                       t.append( _SPACE + _IS + _NEWLINE );
                                       t.append( $DOMAIN_SERVICE_DEFINITION.text );
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       t.append( _SPACE + _SERVICE + _SEMI + _NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                                                   
                              ;

terminatorServiceDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                   {
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( _SPACE );
                                       t.append( _SERVICE );
                                       t.append( _SPACE );
                                       t.append( getText( $domainReference.text ) );
                                       t.append( _SCOPE );
                                       t.append( getText( $terminatorName.text ) );
                                       t.append( _TERMINATOR_SCOPE );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   {
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( _SPACE + _RETURN + _SPACE );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   codeBlock
                                   {
                                       t.append( _SPACE + _IS + _NEWLINE );
                                       t.append( $TERMINATOR_SERVICE_DEFINITION.text );
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       t.append( _SPACE + _SERVICE + _SEMI + _NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                                                   
                              ;

objectServiceDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( OBJECT_SERVICE_DEFINITION
                                   serviceVisibility
                                   {
                                       t.append( getTab() );
                                       t.append( getText( $serviceVisibility.text ) );
                                       t.append( _SPACE );
                                   }
                                   (INSTANCE
                                   {
                                       t.append( $INSTANCE.text );
                                       t.append( _SPACE );
                                   }
                                   )?
                                   fullObjectReference
                                   serviceName
                                   {
                                       t.append( _SERVICE );
                                       t.append( _SPACE );
                                       t.append( getText( $fullObjectReference.text ) );
                                       t.append( _DOT );
                                       t.append( getText( $serviceName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   {
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   (returnType
                                   {
                                       t.append( _SPACE + _RETURN + _SPACE );
                                       t.append( getText( $returnType.text ) );
                                   }
                                   )?
                                   codeBlock
                                   {
                                       t.append( _SPACE + _IS + _NEWLINE );
                                       t.append( $OBJECT_SERVICE_DEFINITION.text );
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       t.append( _SPACE + _SERVICE + _SEMI + _NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
                                 )                          
                              ;

stateDefinition
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( STATE_DEFINITION
                                   stateType
                                   fullObjectReference
                                   stateName
                                   {
                                       t.append( getTab() );
                                       String st_type = getText( $stateType.text );
                                       if ( !st_type.isEmpty() ) {
                                           t.append( st_type + _SPACE );
                                       }
                                       t.append( _STATE + _SPACE );
                                       t.append( getText( $fullObjectReference.text ) );
                                       t.append( _DOT );
                                       t.append( getText( $stateName.text ) );
                                       t.append( _SPACE );
                                   }
                                   parameterList[t]
                                   {
                                       t.append( getText( $parameterList.text ) );
                                   }
                                   codeBlock
                                   {
                                       t.append( _SPACE + _IS + _NEWLINE );
                                       t.append( $STATE_DEFINITION.text );
                                   }
                                   pragmaList[_NEWLINE]
                                   {
                                       t.append( _SPACE + _STATE + _SEMI + _NEWLINE );
                                       t.append( getText( $pragmaList.text ) );
                                   }
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
                                   pragmaList[_SPACE]
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
                                   pragmaList[_SPACE])
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
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
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
                              {
                                  t.append( getText( $nameExpression.text ) );
                              }
                              | literalExpression           
                              {
                                  t.append( getText( $literalExpression.text ) );
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
returns [StringBuilder text]
@init {
    StringBuilder t = new StringBuilder();
}
@after {
    $text = t;
}
                              : ^( NAME
                                   identifier
                                 )                                
                              {
                                  t.append( getText( $identifier.text ) );
                              }
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
