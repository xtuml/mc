tree grammar MaslWalker;

options
{
  tokenVocab=MaslParser;
  ASTLabelType=CommonTree;
}

/*
scope NameScope
{
  NameLookup lookup;
}

scope WhereClauseScope
{
  ObjectDeclaration parentObject;
}
*/

@header
{
package deploy.parser;

import io.ciera.runtime.instanceloading.generic.util.LOAD;
import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.classes.IModelInstance;
import java.io.*;
}

@annotations
{
@SuppressWarnings("all")
}

@members
{
// external interface
private Serial serial = null;
private LOAD loader = null;
private Object current_supertype = null;
private Object current_attribute = null;
private Object current_domain = null;
private Object current_object = null;
private Object current_project = null;
private Object current_service = null;
private Object current_terminator = null;
private Object current_type = null;

// parent masl parser
private MaslImportParser masl_parser = null;

// argument array to pass to interface
private String[] args = new String[8];

// set the serial interface
public void setInterface ( Serial serial, LOAD loader ) {
    if ( serial != null )
        this.serial = serial;
    else
        this.serial = null;
    if ( loader != null )
        this.loader = loader;
    else
        this.loader = null;
}

// set the parent masl parser
public void setMaslParser( MaslImportParser p ) {
    if ( p != null )
        this.masl_parser = p;
    else
        this.masl_parser = null;
}

// get the current file
private String getFile() {
    if ( null == masl_parser ) return null;
    File f = new File( masl_parser.getFile() );
    return f.getName();
}

}

target                        : definition+; // done

definition                    : projectDefinition // done
                              | domainDefinition
                              ;


//---------------------------------------------------------
// Project Definition
//---------------------------------------------------------

identifier
returns [String name]
                              : Identifier                  { // done
                                                              $name = $Identifier.text;
                                                            }
                              ;


projectDefinition
returns [Object project]
                              : ^( PROJECT // done
                                   projectName              {
                                                              try {
                                                                $project = loader.create( "Project" );
                                                                loader.set_attribute( $project, "name", $projectName.name );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   description
                                   ( projectDomainDefinition
                                                            {
                                                              try {
                                                                loader.relate( $projectDomainDefinition.domain, $project, 5900, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )*
                                   pragmaList)              
                              ;

projectDomainDefinition
returns [Object domain]
                              : ^( DOMAIN // done
                                   projectDomainReference   
                                                            {
                                                                try {
                                                                  $domain = loader.create( "ProjectDomain" );
                                                                  loader.set_attribute( $domain, "name", $projectDomainReference.ref );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   description
                                   ( projectTerminatorDefinition    
                                                            {
                                                              try {
                                                                loader.relate( $projectTerminatorDefinition.terminator, $domain, 5902, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )*
                                   pragmaList
                                 )                          
                              ;


projectName
returns [String name]
                              : ^( PROJECT_NAME // done
                                   identifier               { $name = $identifier.name; }
                                )
                              ;


//---------------------------------------------------------
// Domain Definition
//---------------------------------------------------------

domainDefinition
returns [Object domain]
                              : ^( DOMAIN // done
                                   domainName               {
                                                              try {
                                                                $domain = loader.create( "Domain" );
                                                                loader.set_attribute( $domain, "name", $domainName.name );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   description
                                   ( objectDeclaration           
                                                            {
                                                              try {
                                                                loader.relate( $objectDeclaration.object, $domain, 5805, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | domainServiceDeclaration    
                                                            {
                                                              try {
                                                                loader.relate( $domainServiceDeclaration.domainservice, $domain, 5303, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | domainTerminatorDefinition    
                                                            {
                                                              try {
                                                                loader.relate( $domainTerminatorDefinition.terminator, $domain, 5304, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | relationshipDefinition     
                                                            {
                                                              try {
                                                                loader.relate( $relationshipDefinition.relationship, $domain, 6003, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | objectDefinition            
                                                            {
                                                              try {
                                                                loader.relate( $objectDefinition.object, $domain, 5805, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | typeDeclaration             
                                                            {
                                                              try {
                                                                loader.relate( $typeDeclaration.type, $domain, 6235, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | typeForwardDeclaration             
                                                            {
                                                              try {
                                                                loader.relate( $typeForwardDeclaration.type, $domain, 6235, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | exceptionDeclaration        
                                                            {
                                                              try {
                                                                loader.relate( $exceptionDeclaration.rejection, $domain, 5400, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )*
                                   pragmaList
                                 )                              
                              ;

domainName
returns [String name]
                              : ^( DOMAIN_NAME // done
                                   identifier               { $name = $identifier.name; }
                                 )
                              ;

domainReference
returns [String ref]
                              : domainName                  { $ref = $domainName.name; } // done
                              // CDS - Might need to parse the interface file here.
                              ;


projectDomainReference
returns [String ref]
                              : domainName                  { $ref = $domainName.name; } // done
                              // CDS - Might need to parse the interface file here.
                              ;



optionalDomainReference
returns [String ref, boolean defaulted]
                              : domainReference             { $ref = $domainReference.ref; $defaulted = false; } // done
                              | /* blank */                 { $ref = ""; $defaulted = true;}
                              ;



//---------------------------------------------------------
// Exception Declaration
//---------------------------------------------------------
exceptionDeclaration
returns [Object rejection]
                              : ^( EXCEPTION // done
                                   exceptionName            
                                   exceptionVisibility      
                                   pragmaList
                                 )                          
                                                              {
                                                                  try {
                                                                    $rejection = loader.create( "ExceptionDeclaration" );
                                                                    loader.set_attribute( $rejection, "name", $exceptionName.name );
                                                                    //CDSloader.set_attribute( $rejection, "visibility", "Visibility::" + $exceptionVisibility.visibility );
                                                                  } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                              ;

exceptionName
returns [ String name ]
                              : ^( EXCEPTION_NAME // done
                                   identifier)              { $name = $identifier.name; }
                              ;

exceptionReference
returns [Object ref]
                              : optionalDomainReference // done
                                exceptionName               
                                                              {
                                                                try {
                                                                  $ref = loader.create( "ExceptionReference" );
                                                                  Object builtin = loader.create( "BuiltinException" );
                                                                  loader.relate( $ref, builtin, 5401, "" );
                                                                  Object e = loader.call_function( "select_any_ExceptionDeclaration_where_name", $optionalDomainReference.ref, $exceptionName.name );
                                                                  loader.relate( $ref, e, 5402, "" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                              ;
                                

exceptionVisibility
returns [String visibility]
                              : PRIVATE                     { $visibility = $PRIVATE.text; } // done
                              | PUBLIC                      { $visibility = $PUBLIC.text; }
                              ;

//---------------------------------------------------------
// Type Definition
//---------------------------------------------------------

typeForwardDeclaration
returns [Object type]
                              : ^( TYPE_DECLARATION // done
                                   typeName                 
                                   typeVisibility
                                   pragmaList				
                                                              {
                                                                try {
                                                                  $type = loader.call_function( "select_any_TypeDeclaration_where_name", $typeName.name );
                                                                  if ( ((IModelInstance)$type).isEmpty() ) {
                                                                    $type = loader.create( "TypeDeclaration" );
                                                                  }
                                                                  loader.set_attribute( $type, "name", $typeName.name );
                                                                  //CDSloader.set_attribute( $type, "visibility", "Visibility::" + $typeVisibility.visibility );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                 )                          
                              ;
                              

typeDeclaration
returns [Object type]
                              : ^( TYPE // done
                                   typeName                 
                                   typeVisibility
                                                              {
                                                                try {
                                                                  $type = loader.call_function( "select_any_TypeDeclaration_where_name", $typeName.name );
                                                                  if ( ((IModelInstance)$type).isEmpty() ) {
                                                                    $type = loader.create( "TypeDeclaration" );
                                                                  }
                                                                  loader.set_attribute( $type, "name", $typeName.name );
                                                                  //CDSloader.set_attribute( $type, "visibility", "Visibility::" + $typeVisibility.visibility );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                   description
                                   pragmaList
                                   typeDefinition[$type]
                                                              {
                                                                try {
                                                                  loader.relate( $typeDefinition.type, $type, 6234, "" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                 )
                              ;


typeDefinition[Object typedecl]
returns [Object type]
@init
                                                            {
                                                              try {
                                                                $type = loader.create( "TypeDefinition" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              : structureTypeDefinition // done
                                                            {
                                                              try {
                                                                Object fulltype = loader.create( "FullTypeDefinition" );
                                                                loader.relate( fulltype, $type, 6236, "" );
                                                                loader.relate( $structureTypeDefinition.type, fulltype, 6219, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | enumerationTypeDefinition   
                                                            {
                                                              try {
                                                                Object fulltype = loader.create( "FullTypeDefinition" );
                                                                loader.relate( fulltype, $type, 6236, "" );
                                                                loader.relate( $enumerationTypeDefinition.type, fulltype, 6219, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | constrainedTypeDefinition   
                                                            {
                                                              try {
                                                                Object fulltype = loader.create( "FullTypeDefinition" );
                                                                loader.relate( fulltype, $type, 6236, "" );
                                                                loader.relate( $constrainedTypeDefinition.type, fulltype, 6219, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | typeReference               
                                                            {
                                                              // CDS - not sure if I need UserDefinedType here...
                                                              // Does the BasicType already exist?
                                                              // I think this question gets answered in typeReference
                                                              // distinguished by namedTypeRef.
                                                              // Create the BasicType and UserDefineType here, because
                                                              // the typeReference rule needs to be used by non-defintion
                                                              // code.
                                                              try {
                                                                Object basictype = loader.create( "BasicType" );
                                                                loader.relate( basictype, $type, 6236, "" );
                                                                Object userdefinedtype = loader.create( "UserDefinedType" );
                                                                loader.relate( userdefinedtype, basictype, 6205, "" );
                                                                loader.relate( userdefinedtype, $typedecl, 6241, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | unconstrainedArrayDefinition
                                                            {
                                                              try {
                                                                Object fulltype = loader.create( "FullTypeDefinition" );
                                                                loader.relate( fulltype, $type, 6236, "" );
                                                                loader.relate( $unconstrainedArrayDefinition.type, fulltype, 6219, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

typeVisibility
returns [String visibility]
                              : PRIVATE                     { $visibility = $PRIVATE.text; } // done
                              | PUBLIC                      { $visibility = $PUBLIC.text; }
                              ;



// Constrained Type
constrainedTypeDefinition
returns [Object type]
                              : ^( CONSTRAINED_TYPE // done
                                   typeReference
                                   typeConstraint
                                 )                          {
                                                              try {
                                                                $type = loader.create( "ConstrainedType" );
                                                                loader.relate( $typeReference.type, $type, 6210, "" );
                                                                loader.relate( $typeConstraint.constraint, $type, 6209, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

typeConstraint
returns [Object constraint]
                              : rangeConstraint // done
                                                            {
                                                              try {
                                                                $constraint = loader.create( "TypeConstraint" );
                                                                loader.relate( $rangeConstraint.range, $constraint, 6232, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | deltaConstraint             
                                                            {
                                                              try {
                                                                $constraint = loader.create( "TypeConstraint" );
                                                                loader.relate( $deltaConstraint.delta, $constraint, 6232, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | digitsConstraint            
                                                            {
                                                              try {
                                                                $constraint = loader.create( "TypeConstraint" );
                                                                loader.relate( $digitsConstraint.digits, $constraint, 6232, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

rangeConstraint
returns [Object range]
                              : ^( RANGE // done
                                   expression
                                 )                          {
                                                              try {
                                                                $range = loader.create( "RangeConstraint" );
                                                                loader.relate( $expression.exp, $range, 6224, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

deltaConstraint
returns [Object delta]
                              : ^( DELTA // done
                                   expression
                                   rangeConstraint
                                 )                          {
                                                              try {
                                                                $delta = loader.create( "RangeConstraint" );
                                                                loader.relate( $expression.exp, $delta, 6211, "" );
                                                                loader.relate( $rangeConstraint.range, $delta, 6212, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

digitsConstraint
returns [Object digits]
                              : ^( DIGITS // done
                                   expression
                                   rangeConstraint
                                 )                          {
                                                              try {
                                                                $digits = loader.create( "RangeConstraint" );
                                                                loader.relate( $expression.exp, $digits, 6215, "" );
                                                                loader.relate( $rangeConstraint.range, $digits, 6216, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

// Structure Type
structureTypeDefinition
returns [Object type]
@init{ Object previouscomponent = null; }
                              : ^( STRUCTURE // done
                                                            {
                                                              try {
                                                                $type = loader.create( "StructureType" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( structureComponentDefinition 
                                                            {
                                                              try {
                                                                if ( null == previouscomponent ) {
                                                                  loader.relate( $structureComponentDefinition.element, $type, 6244, "" );
                                                                } else {
                                                                  loader.relate( $structureComponentDefinition.element, previouscomponent, 6243, "succeeds" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                              previouscomponent = $structureComponentDefinition.element;
                                                            }
                                   )+
                                 )                          
                              ;


structureComponentDefinition
returns [Object element]
                              : ^( COMPONENT_DEFINITION // done
                                   componentName
                                   typeReference
                                   expression?
                                   pragmaList
                                 )                          
                                                            {
                                                              try {
                                                                $element = loader.create( "StructureElement" );
                                                                loader.set_attribute( $element, "name", $componentName.name );
                                                                loader.relate( $typeReference.type, $element, 6230, "" );
                                                                if ( null != $expression.exp ) {
                                                                  loader.relate( $expression.exp, $element, 6229, "" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

componentName
returns [String name]
                              : ^( COMPONENT_NAME // done
                                   identifier
                                 )                          { $name = $identifier.name; }
                              ;


// Enumeration Type
enumerationTypeDefinition
returns [Object type]
@init{ Object previousenumerator = null; }
                              : ^( ENUM // done
                                                            {
                                                              try {
                                                                $type = loader.create( "EnumerateDefinition" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( enumerator             
                                                            {
                                                              try {
                                                                if ( null == previousenumerator ) {
                                                                  loader.relate( $enumerator.item, $type, 6218, "" );
                                                                } else {
                                                                  loader.relate( $enumerator.item, previousenumerator, 6242, "succeeds" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                              previousenumerator = $enumerator.item;
                                                            }
                                   )+
                                 )                          
                              ;

enumerator
returns [Object item]
                              : ^( ENUMERATOR // done
                                   enumeratorName
                                   expression?
                                 )                          {
                                                              try {
                                                                $item = loader.create( "EnumerateItem" );
                                                                loader.set_attribute( $item, "name", $enumeratorName.name );
                                                                if ( null != $expression.exp ) {
                                                                  loader.relate( $item, $expression.exp, 6217, "" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

enumeratorName
returns [String name]         : ^( ENUMERATOR_NAME // done
                                   identifier
                                 )                          { $name = $identifier.name; }
                              ;


// Unconstrained array
unconstrainedArrayDefinition
returns [Object type]
                              : ^( UNCONSTRAINED_ARRAY // done
                                   index=typeReference
                                   contained=typeReference
                                 )                          {
                                                              try {
                                                                $type = loader.create( "UnconstrainedArrayType" );
                                                                loader.relate( $index.type, $type, 6239, "" );
                                                                loader.relate( $contained.type, $type, 6240, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

//---------------------------------------------------------
// Type Reference
//---------------------------------------------------------

typeReference
returns [Object type]
                              : namedTypeRef                { $type = $namedTypeRef.basictype; }
                              | constrainedArrayTypeRef     { $type = $constrainedArrayTypeRef.basictype; }
                              | instanceTypeRef             { $type = $instanceTypeRef.basictype; }
                              | sequenceTypeRef             { $type = $sequenceTypeRef.basictype; }
                              | arrayTypeRef                { $type = $arrayTypeRef.basictype; }
                              | setTypeRef                  { $type = $setTypeRef.basictype; }
                              | bagTypeRef                  { $type = $bagTypeRef.basictype; }
                              | dictionaryTypeRef           { $type = $dictionaryTypeRef.basictype; }
                              ;

instanceTypeRef
returns [Object basictype]
                              : ^( INSTANCE // done
                                   objectReference
                                   ANONYMOUS?
                                 )                          {
                                                              try {
                                                                $basictype = loader.create( "BasicType" );
                                                                loader.set_attribute( $basictype, "isanonymous", ( $ANONYMOUS != null ) );
                                                                Object instancetype = loader.create( "InstanceType" );
                                                                loader.relate( instancetype, $basictype, 6205, "" );
                                                                Object object = loader.call_function( "select_any_ObjectDeclaration_where_name", $objectReference.domainref, $objectReference.name );
                                                                loader.relate( instancetype, object, 6220, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

namedTypeRef
returns [Object basictype]
                              : ^( NAMED_TYPE // done
                                   optionalDomainReference
                                   typeName
                                   ANONYMOUS?
                                 )                          { 
                                                              // CDS - still not sure if this is right
                                                              // I do not think I am creating the type in all the cases I need.
                                                              try {
                                                                $basictype = loader.call_function( "select_any_BasicType_where_name", $optionalDomainReference.ref, $typeName.name );
                                                                if ( ((IModelInstance)$basictype).isEmpty() ) {
                                                                  $basictype = loader.create( "BasicType" );
                                                                }
                                                                loader.set_attribute( $basictype, "isanonymous", ( $ANONYMOUS != null ) );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

userDefinedTypeRef
returns [Object basictype]
                              : ^( NAMED_TYPE
                                   optionalDomainReference
                                   typeName
                                 )                          
                              ;

constrainedArrayTypeRef
returns [Object basictype]
                              : ^( CONSTRAINED_ARRAY
                                   userDefinedTypeRef
                                   arrayBounds
                                 )                          
                              ;


sequenceTypeRef
returns [Object basictype]
                              : ^( SEQUENCE
                                   typeReference
                                   expression?
                                   ANONYMOUS?
                                 )
                              ;

arrayTypeRef
returns [Object basictype]
                              : ^( ARRAY
                                   typeReference
                                   arrayBounds
                                   ANONYMOUS?
                                 )                          
                              ;

setTypeRef
returns [Object basictype]
                              : ^( SET
                                   typeReference
                                   ANONYMOUS?
                                 )                          
                              ;

bagTypeRef
returns [Object basictype]
                              : ^( BAG
                                   typeReference
                                   ANONYMOUS?
                                 )                          
                              ;

dictionaryTypeRef
returns [Object basictype]
                              : ^( DICTIONARY
                                   (^(KEY   key=typeReference))?
                                   (^(VALUE value=typeReference))?
                                   ANONYMOUS?
                                 )                          
                              ;
typeName
returns [String name]
                              : ^( TYPE_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;

arrayBounds
returns [Object exp]
                              : ^( ARRAY_BOUNDS
                                   expression )             
                              ;

//---------------------------------------------------------
// Terminator Definition
//---------------------------------------------------------

terminatorName
returns [String name]
                              : ^( TERMINATOR_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;


domainTerminatorDefinition
returns [Object terminator]
                              : ^( TERMINATOR_DEFINITION // done
                                   terminatorName             
                                                              {
                                                                try {
                                                                  $terminator = loader.create( "DomainTerminator" );
                                                                  loader.set_attribute( $terminator, "name", $terminatorName.name );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                   description
                                   pragmaList
                                   ( terminatorServiceDeclaration
                                                              {
                                                                try {
                                                                  loader.relate( $terminatorServiceDeclaration.terminatorservice, $terminator, 5306, "" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                   )*
                                 )
                              ;

projectTerminatorDefinition
returns [Object terminator]
                              : ^( TERMINATOR_DEFINITION // done
                                   terminatorName
                                                              {
                                                                try {
                                                                  $terminator = loader.create( "ProjectTerminator" );
                                                                  loader.set_attribute( $terminator, "name", $terminatorName.name );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                   description
                                   pragmaList
                                   ( projectTerminatorServiceDeclaration
                                                              {
                                                                try {
                                                                  loader.relate( $projectTerminatorServiceDeclaration.terminatorservice, $terminator, 5903, "" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                   )*
                                 )
                              ;



terminatorServiceDeclaration
returns [Object terminatorservice]
@init { Object service = null; }
                              : ^( TERMINATOR_SERVICE_DECLARATION // done
                                   serviceVisibility
                                   serviceName
                                                            {
                                                              try {
                                                                service = loader.create( "Service" );
                                                                current_service = service;
                                                                loader.set_attribute( service, "name", $serviceName.name );
                                                                //CDSloader.set_attribute( service, "visibility", "Visibility::" + $serviceVisibility.visibility );
                                                                $terminatorservice = loader.create( "DomainTerminatorService" );
                                                                loader.relate( $terminatorservice, service, 5203, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   description
                                   parameterList
                                                            {
                                                              if ( null != $parameterList.firstparameter ) {
                                                                try {
                                                                  loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                                            }
                                   ( returnType
                                                            {
                                                              try {
                                                                loader.relate( $returnType.type, service, 5205, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                   pragmaList
                                 )
                              ;

projectTerminatorServiceDeclaration
returns [Object terminatorservice]
@init { Object service = null; }
                              : ^( TERMINATOR_SERVICE_DECLARATION // done
                                   serviceVisibility
                                   serviceName              
                                                            {
                                                              try {
                                                                service = loader.create( "Service" );
                                                                current_service = service;
                                                                loader.set_attribute( service, "name", $serviceName.name );
                                                                //CDSloader.set_attribute( service, "visibility", "Visibility::" + $serviceVisibility.visibility );
                                                                $terminatorservice = loader.create( "ProjectTerminatorService" );
                                                                loader.relate( $terminatorservice, service, 5203, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   description
                                   parameterList
                                                            {
                                                              if ( null != $parameterList.firstparameter ) {
                                                                try {
                                                                  loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                                            }
                                   ( returnType
                                                            {
                                                              try {
                                                                loader.relate( $returnType.type, service, 5205, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                   pragmaList
                                 )
                              ;


//---------------------------------------------------------
// Object Definition
//---------------------------------------------------------

objectName
returns [String name]
                              : ^( OBJECT_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;


objectReference
returns [String domainref, String name]
                              : optionalDomainReference
                                objectName                  
                                                            { 
                                                              // CDS - Do I select look-up?
                                                              $domainref = $optionalDomainReference.ref;
                                                              $name = $objectName.name;
                                                            }
                              ;

fullObjectReference
returns [String[\] ref]
//returns [ObjectNameExpression ref]
@init
{
    String[] r = new String[2];
    for ( int i = 0; i < r.length; i++ ) r[i] = "";
}
                              : domainReference
                                objectName                  
                                                            { 
                                                                r[0] = $domainReference.ref;
                                                                r[1] = $objectName.name;
                                                                $ref = r;
                                                            }
                              ;


optionalObjectReference
returns [Object ref, String domainref, String name]
@init{ $ref = null; }
                              : objectReference             { $domainref = $objectReference.domainref; $name = $objectReference.name;
                                                              try {
                                                                $ref = loader.call_function( "select_any_ObjectDeclaration_where_name", $objectReference.domainref, $objectReference.name );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | /* blank */                 { $domainref = ""; $name = ""; }
                              ;
attributeName
returns [String name]
                              : ^( ATTRIBUTE_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;

objectDeclaration
returns [Object object]
                              : ^( OBJECT_DECLARATION // done
                                   objectName
                                                            {
                                                              try {
                                                                $object = loader.create( "ObjectDeclaration" );
                                                                loader.set_attribute( $object, "name", $objectName.name );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   pragmaList
                                 )                          
                              ;


objectDefinition
returns [Object object]
@init{ Object previousattribute = null; }
                              : ^( OBJECT_DEFINITION
                                   objectName               
                                                            {
                                                              try {
                                                                $object = loader.call_function( "select_any_ObjectDeclaration_where_name", "", $objectName.name );
                                                                if ( ((IModelInstance)$object).isEmpty() ) {
                                                                  $object = loader.create( "ObjectDeclaration" );
                                                                }
                                                                loader.set_attribute( $object, "name", $objectName.name );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( attributeDefinition [previousattribute]      
                                                            {
                                                              try {
                                                                loader.relate( $attributeDefinition.attribute, $object, 5802, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                              previousattribute = $attributeDefinition.attribute;
                                                            }
                                   | identifierDefinition     
                                   | objectServiceDeclaration 
                                   | eventDefinition          
                                                            {
                                                              try {
                                                                loader.relate( $eventDefinition.event, $object, 6101, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | stateDeclaration         
                                   | transitionTable          
                                   )*
                                   description
                                   pragmaList
                                 )
                              ;

attributeDefinition[Object previousattribute]
returns [Object attribute]
                              : ^( ATTRIBUTE_DEFINITION
                                   attributeName            
                                   PREFERRED? UNIQUE?
                                                            {
                                                              try {
                                                                $attribute = loader.create( "AttributeDeclaration" );
                                                                loader.set_attribute( $attribute, "name", $attributeName.name );
                                                                if ( $PREFERRED != null ) {
                                                                  loader.set_attribute( $attribute, "isPreferredIdentifier", false );
                                                                } else {
                                                                  loader.set_attribute( $attribute, "isPreferredIdentifier", true );
                                                                }
                                                                if ( $UNIQUE == null ) {
                                                                  loader.set_attribute( $attribute, "isUnique", false );
                                                                } else {
                                                                  loader.set_attribute( $attribute, "isUnique", true );
                                                                }
                                                                if ( null != previousattribute ) {
                                                                  loader.relate( $attributeDefinition.attribute, $previousattribute, 5809, "succeeds" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( attReferential [$attribute]
                                                            {
                                                            }
                                   )*
                                   description
                                   typeReference
                                                            {
                                                              try {
                                                                loader.relate( $attribute, $typeReference.type, 5803, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   (expression
                                                            {
                                                              try {
                                                                loader.relate( $attribute, $expression.exp, 5801, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                   pragmaList
                                 )                          
                              ;

attReferential [Object attribute]
returns [Object referential]
                              : ^( REFERENTIAL
                                   relationshipSpec
                                   attributeName
                                 )                          
                                                            {
                                                              try {
                                                                $referential = loader.create( "ReferentialAttributeDefinition" );
                                                                // Link referential to itself until after all objects and attributes have been created.
                                                                loader.relate_using( $attribute, $attribute, $referential, 5800, "refers_to" );
                                                                loader.relate( $referential, $relationshipSpec.relationship_specification, 5811, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;


relationshipSpec
returns [Object relationship_specification]
                              : ^( RELATIONSHIP_SPEC
                                   relationshipReference    
                                                            {
                                                              try {
                                                                $relationship_specification = loader.create( "RelationshipSpecification" );
                                                                // LPS - will not support
                                                                // Object r = loader.select( "RelationshipDeclaration", $relationshipReference.name );
                                                                Object r = null;
                                                                loader.relate( $relationship_specification, r, 6015, "" );
                                                                //CDSloader.set_attribute( $relationship_specification, "CDS dunno here CDS", $relationshipReference.name );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( objOrRole
                                                            {
                                                                String s = $objOrRole.name;
                                                            }
                                   ( objectReference
                                                            {
                                                                String s3 = $objectReference.domainref;
                                                                String s4 = $objectReference.name;
                                                              //try {
                                                                //CDSloader.set_attribute( $relationship_specification, "CDS dunno here CDS", $relationshipReference.name );
                                                              //} catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )? 
                                   )?
                                 ) 													
                              ;

objOrRole
returns [String name]
                              : identifier                  { $name = $identifier.name; } // done
                              ;


objectServiceDeclaration
returns [Object objectservice]
@init { Object service = null; }
                              : ^( OBJECT_SERVICE_DECLARATION
                                   serviceVisibility
                                   ( INSTANCE
                                     relationshipReference?)?
                                   serviceName
                                                            {
                                                              try {
                                                                service = loader.create( "Service" );
                                                                current_service = service;
                                                                loader.set_attribute( service, "name", $serviceName.name );
                                                                //CDSloader.set_attribute( service, "visibility", "Visibility::" + $serviceVisibility.visibility );
                                                                $objectservice = loader.create( "ObjectService" );
                                                                loader.relate( $objectservice, service, 5203, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   description
                                   parameterList
                                                            {
                                                              if ( null != $parameterList.firstparameter ) {
                                                                try {
                                                                  loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                                            }
                                   ( returnType
                                                            {
                                                              try {
                                                                if ( null != $returnType.type ) {
                                                                  loader.relate( $returnType.type, service, 5205, "" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                   pragmaList
                                 )                          
                              ;


identifierDefinition

                              : ^( IDENTIFIER
                                   ( attributeName
                                   )+
                                   pragmaList
                                 )                     
                              ;

eventDefinition
returns [Object event]
                              : ^( EVENT  // done
                                   eventName
                                   eventType                
                                   description
                                   parameterList
                                   pragmaList
                                 )
                                                            {
                                                              try {
                                                                $event = loader.create( "EventDeclaration" );
                                                                loader.set_attribute( $event, "name", $eventName.name );
                                                                if ( "assigner" == $eventType.type ) {
                                                                  //CDSloader.set_attribute( $event, "flavor", "EventType::assigner" );
                                                                } else if ( "creation" == $eventType.type ) {
                                                                  //CDSloader.set_attribute( $event, "flavor", "EventType::creation" );
                                                                } else {
                                                                  //CDSloader.set_attribute( $event, "flavor", "EventType::normal" );
                                                                }
                                                                if ( null != $parameterList.firstparameter ) {
                                                                  loader.relate( $event, $parameterList.firstparameter, 6100, "" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

eventName
returns [String name]
                              : ^( EVENT_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;

eventType
returns [String type]
                              : ASSIGNER                    { $type = $ASSIGNER.text; } // done
                              | CREATION                    { $type = $CREATION.text; }
                              | NORMAL                      { $type = ""; }
                              ;

stateDeclaration
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
                              : ^( STATE_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;

stateType
returns [String type]
//returns [StateType type]
                              : ASSIGNER                    { $type = $ASSIGNER.text; }
                              | START                       { $type = $START.text; }
                              | CREATION                    { $type = $CREATION.text; }
                              | TERMINAL                    { $type = $TERMINAL.text; }
                              | NORMAL                      { $type = ""; }
                              ;


transitionTable

                              : ^( TRANSITION_TABLE
                                   transTableType
                                   ( transitionRow          
                                   )+
                                   pragmaList
                                 )                          
                              ;


transTableType
returns [String type]
//returns [boolean isAssigner]
                              : ASSIGNER                    { $type = $ASSIGNER.text; }
                              | NORMAL                      { $type = ""; }
                              ;

transitionRow
//returns [TransitionRow row]

                              : ^( TRANSITION_ROW
                                   startState
                                   ( transitionOption[$startState.name]
                                   )+
                                   pragmaList
                                )                           
                              ;

transitionOption[String startState]
//returns [TransitionOption option]
                              : ^( TRANSITION_OPTION
                                   incomingEvent
                                   endState
                                 )                          
                              ;

incomingEvent
returns [Object ref]
                              : ^( EVENT
                                   eventReference           { $ref = $eventReference.ref; }
                                 )
                              ;

startState
returns [String name]
                              : NON_EXISTENT                { $name = $NON_EXISTENT.text; }
                              | stateName                   { $name = $stateName.name; }
                              ;

endState
returns [String name]
//returns [String name, TransitionType type]
                              : stateName                   { $name = $stateName.name; }
                              | IGNORE                      { $name = $IGNORE.text; }
                              | CANNOT_HAPPEN               { $name = $CANNOT_HAPPEN.text; }
                              ;

eventReference
returns [Object ref]
                              : optionalObjectReference
                                eventName                   
                                                            {
                                                              //try {
                                                                // CDS - consider selecting through optionalDomainReference
                                                                // need more here
                                                                // LPS will not support
                                                                // $ref = loader.select( "EventDeclaration", $eventName.name );
                                                                $ref = null;
                                                              //} catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;


//---------------------------------------------------------
// Service Declaration
//---------------------------------------------------------

domainServiceDeclaration
returns [Object domainservice]
@init{ Object service = null; }
                              : ^( DOMAIN_SERVICE_DECLARATION // done
                                   serviceVisibility
                                   serviceName
                                                            {
                                                              try {
                                                                service = loader.create( "Service" );
                                                                current_service = service;
                                                                loader.set_attribute( service, "name", $serviceName.name );
                                                                //CDSloader.set_attribute( service, "visibility", "Visibility::" + $serviceVisibility.visibility );
                                                                $domainservice = loader.create( "DomainService" );
                                                                loader.relate( $domainservice, service, 5203, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   description
                                   parameterList
                                                            {
                                                              if ( null != $parameterList.firstparameter ) {
                                                                try {
                                                                  loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                                            }
                                   ( returnType
                                                            {
                                                              try {
                                                                if ( null != $returnType.type ) {
                                                                  loader.relate( $returnType.type, service, 5205, "" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                   pragmaList
                                 )
                              ;


parameterDefinition
returns [Object parameter]
                              : ^( PARAMETER_DEFINITION // done
                                   parameterName
                                   parameterMode
                                   parameterType
                                                            {
                                                              try {
                                                                $parameter = loader.create( "ParameterDefinition" );
                                                                loader.set_attribute( $parameter, "name", $parameterName.name );
                                                                //CDSloader.set_attribute( $parameter, "mode", "ParameterMode::" + $parameterMode.mode );
                                                                loader.relate( $parameterType.type, $parameter, 5200, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                )           
                              ;
                              
parameterList
returns [Object firstparameter]
@init { Object previousparameter = null; }
                              : ( parameterDefinition       {  // done
                                                              if ( null == previousparameter ) {
                                                                firstparameter = $parameterDefinition.parameter;
                                                              } else {
                                                                try {
                                                                  loader.relate( $parameterDefinition.parameter, previousparameter, 5208, "succeeds" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                                              previousparameter = $parameterDefinition.parameter;
                                                            }
                               )*
                              ;


serviceVisibility
returns [String visibility]
                              : PRIVATE                     { $visibility = $PRIVATE.text; }
                              | PUBLIC                      { $visibility = $PUBLIC.text; }
                              ;

parameterMode
returns [String mode]
                              : IN                          { $mode = $IN.text; } // done
                              | OUT                         { $mode = $OUT.text; }
                              ;


serviceName
returns [String name]
                              : ^( SERVICE_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;

parameterName
returns [String name]
                              : ^( PARAMETER_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;

parameterType
returns [Object type]
                              : ^( PARAMETER_TYPE // done
                                   typeReference )            { $type = $typeReference.type; }
                              ;

returnType
returns [Object type]
                              : ^( RETURN_TYPE // done
                                   typeReference )            { $type = $typeReference.type; }
                              ;


//---------------------------------------------------------
// Relationship Definition
//---------------------------------------------------------


relationshipDefinition
returns [Object relationship]
                              : regularRelationshipDefinition
                              | assocRelationshipDefinition   
                              | subtypeRelationshipDefinition 
                              ;



regularRelationshipDefinition
                              : ^( REGULAR_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   leftToRight=halfRelationshipDefinition
                                   rightToLeft=halfRelationshipDefinition
                                   pragmaList
                                 )                          
                              ;


assocRelationshipDefinition
                              : ^( ASSOCIATIVE_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   leftToRight=halfRelationshipDefinition
                                   rightToLeft=halfRelationshipDefinition
                                   assocObj=objectReference
                                   pragmaList
                                 )                          

                              ;

halfRelationshipDefinition
//returns [HalfRelationship half]
                              : ^( HALF_RELATIONSHIP
                                   from=objectReference
                                   conditionality
                                   rolePhrase
                                   multiplicity
                                   to=objectReference
                                 )                          
                                                            { 
                                                                args[0] = $from.domainref;
                                                                args[1] = $from.name;
                                                                args[2] = $rolePhrase.role;
                                                                args[3] = $conditionality.cond;
                                                                args[4] = $multiplicity.mult;
                                                                args[5] = $to.domainref;
                                                                args[6] = $to.name;
                                                            }
                              ;


subtypeRelationshipDefinition
//returns [SubtypeRelationshipDeclaration relationship]

                              : ^( SUBTYPE_RELATIONSHIP_DEFINITION
                                   relationshipName
                                                            {
                                                                args[0] = $relationshipName.name;
                                                            }
                                   description
                                   supertype=objectReference
                                                            {
                                                                args[0] = $supertype.domainref;
                                                                args[1] = $supertype.name;
                                                            }
                                   (subtype=objectReference   
                                                            {
                                                                args[0] = $subtype.domainref;
                                                                args[1] = $subtype.name;
                                                                args[5] = $supertype.domainref;
                                                                args[6] = $supertype.name;
                                                            }
                                   )+
                                   pragmaList
                                 )                          
                              ;

rolePhrase
returns [String role]
                              : ^( ROLE_PHRASE
                                   identifier )             { $role = $identifier.name; }
                              ;

conditionality
returns [String cond]
//returns [boolean cond]
                              : UNCONDITIONALLY             { $cond = $UNCONDITIONALLY.text; }
                              | CONDITIONALLY               { $cond = $CONDITIONALLY.text; }
                              ;

multiplicity
returns [String mult]
//returns [MultiplicityType mult]
                              : ONE                         { $mult = $ONE.text; }
                              | MANY                        { $mult = $MANY.text; }
                              ;


relationshipName
returns [String name]
                              : ^( RELATIONSHIP_NAME
                                   RelationshipName  
                                 )                          { $name = $RelationshipName.text; }
                              ;
                              

relationshipReference
returns [String domainref, String name]
                              : optionalDomainReference
                                relationshipName            
                                                            { 
                                                              $domainref = $optionalDomainReference.ref;
                                                              $name = $relationshipName.name;
                                                            }
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
                              : identifier                  { $value = $identifier.name; }
                              | literalExpression           { $value = $literalExpression.literal_expression; }
                              ;

pragmaName
returns [ String name ]
                              : ^( PRAGMA_NAME
                                   identifier               { $name = $identifier.name; }
                                 )
                              ;

//---------------------------------------------------------
// Descriptions
//---------------------------------------------------------

description
returns [String text]
                              : ^( DESCRIPTION              {   StringBuilder descrip = new StringBuilder(); }
                                   (Description             {   descrip.append( $Description.text.substring(3) ); }
                                   )*
                                                            {
                                                                args[0] = descrip.toString();
                                                                $text = descrip.toString();
                                                            }
                                 )
                              ;

//---------------------------------------------------------
// Dynamic Behaviour
//---------------------------------------------------------

/*  This rule has been added to allow to parse any activity action body file
    without knowledge of what type of activity it contained - LPS */

activityDefinition            : domainServiceDefinition
                              | terminatorServiceDefinition
                              | objectServiceDefinition
                              | stateDefinition
                              ;


domainServiceDefinition//[DomainService service]
returns [Object domainservice]
@init{ Object service = null; }
//scope NameScope;

                              : ^( DOMAIN_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   serviceName
                                                            {
                                                              try {
                                                                service = loader.create( "Service" );
                                                                current_service = service;
                                                                loader.set_attribute( service, "name", $serviceName.name );
                                                                //CDSloader.set_attribute( service, "visibility", "Visibility::" + $serviceVisibility.visibility );
                                                                $domainservice = loader.create( "DomainService" );
                                                                loader.relate( $domainservice, service, 5203, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   parameterList
                                                            {
                                                              try {
                                                                loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   returnType?
                                   codeBlock
                                                            {
                                                                args[0] = $DOMAIN_SERVICE_DEFINITION.text + " service;";
                                                            }
                                   pragmaList                  
                                 )                                                   
                              ;


terminatorServiceDefinition//[DomainTerminatorService service]
//scope NameScope;


                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                                            {
                                                                  args[0] = $domainReference.ref;
                                                                  args[1] = $terminatorName.name;
                                                                  args[2] = $serviceVisibility.visibility;
                                                                  args[3] = $serviceName.name;
                                                            }
                                   parameterList
                                                            {
                                                                args[0] = $TERMINATOR_SERVICE_DEFINITION.text + " service;";
                                                            }
                                   returnType?
                                   codeBlock
                                   pragmaList
                                 )                                                   
                              ;


projectTerminatorServiceDefinition//[ProjectTerminatorService service]
//scope NameScope;
                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                                            {
                                                                  args[0] = $domainReference.ref;
                                                                  args[1] = $terminatorName.name;
                                                                  args[2] = $serviceVisibility.visibility;
                                                                  args[3] = $serviceName.name;
                                                            }
                                   parameterList
                                   returnType?
                                   codeBlock         
                                                            {
                                                                args[0] = $TERMINATOR_SERVICE_DEFINITION.text + " service;";
                                                            }
                                   pragmaList
                                 )                                                   
                              ;



objectServiceDefinition//[ObjectService service]
//scope NameScope;


                              : ^( OBJECT_SERVICE_DEFINITION
                                   serviceVisibility
                                   INSTANCE?
                                   fullObjectReference
                                   serviceName
                                                            {
                                                                  args[0] = $fullObjectReference.ref[0];
                                                                  args[1] = $fullObjectReference.ref[1];
                                                                  args[2] = $serviceVisibility.visibility;
                                                                  args[3] = $serviceName.name;
                                                                  if ( $INSTANCE != null )
                                                                      args[4] = $INSTANCE.text;
                                                            }
                                   parameterList
                                   returnType?
                                   codeBlock
                                                            {
                                                                args[0] = $OBJECT_SERVICE_DEFINITION.text + " service;";
                                                            }
                                   pragmaList
                                 )                          
                              ;


stateDefinition//[State stateDef]
//scope NameScope;


                              : ^( STATE_DEFINITION
                                   stateType
                                   fullObjectReference
                                   stateName
                                                            {
                                                                args[0] = $fullObjectReference.ref[0];
                                                                args[1] = $fullObjectReference.ref[1];
                                                                args[2] = $stateName.name;
                                                                args[3] = $stateType.type;
                                                            }
                                   parameterList
                                   codeBlock
                                                            {
                                                                args[0] = $STATE_DEFINITION.text + " state;";
                                                            }
                                   pragmaList
                                 )                          
                              ;



//---------------------------------------------------------
// Statements
//---------------------------------------------------------

statement
returns [Object st]
@init                                                       {
                                                              try {
                                                                $st = loader.create( "Statement" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              : ^( STATEMENT // done
                                   ( codeBlock       
                                                            {
                                                              try {
                                                                loader.relate( $codeBlock.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | assignmentStatement    
                                                            {
                                                              try {
                                                                loader.relate( $assignmentStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | streamStatement        
                                                            {
                                                              try {
                                                                loader.relate( $streamStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | callStatement          
                                                            {
                                                              try {
                                                                loader.relate( $callStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | exitStatement          
                                                            {
                                                              try {
                                                                loader.relate( $exitStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | returnStatement        
                                                            {
                                                              try {
                                                                loader.relate( $returnStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | delayStatement         
                                                            {
                                                              try {
                                                                loader.relate( $delayStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | raiseStatement         
                                                            {
                                                              try {
                                                                loader.relate( $raiseStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | deleteStatement        
                                                            {
                                                              try {
                                                                loader.relate( $deleteStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | eraseStatement         
                                                            {
                                                              try {
                                                                loader.relate( $eraseStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | linkStatement          
                                                            {
                                                              try {
                                                                loader.relate( $linkStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | scheduleStatement      
                                                            {
                                                              try {
                                                                loader.relate( $scheduleStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | cancelTimerStatement   
                                                            {
                                                              try {
                                                                loader.relate( $cancelTimerStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | generateStatement      
                                                            {
                                                              try {
                                                                loader.relate( $generateStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | ifStatement            
                                                            {
                                                              try {
                                                                loader.relate( $ifStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | caseStatement          
                                                            {
                                                              try {
                                                                loader.relate( $caseStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | forStatement           
                                                            {
                                                              try {
                                                                loader.relate( $forStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   | whileStatement         
                                                            {
                                                              try {
                                                                loader.relate( $whileStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   |                        
                                   )
                                   pragmaList
                                 )
                              ;

statementList
returns [Object st]
@init { Object previousstatement = null; }
                              : ^( STATEMENT_LIST // done
                                   ( statement              {
                                                              if ( null == previousstatement ) {
                                                                st = $statement.st;
                                                              } else {
                                                                try {
                                                                  loader.relate( $statement.st, previousstatement, 5155, "succeeds" );
                                                                } catch ( XtumlException e ) { System.err.println( e ); }
                                                              }
                                                              previousstatement = $statement.st;
                                                            }
                                   )*
                                 )
                              ;


assignmentStatement
returns [Object st]
                              : ^( ASSIGN // done
                                   lhs=expression rhs=expression
                                 )                          {
                                                              try {
                                                                $st = loader.create( "AssignmentStatement" );
                                                                loader.relate( $lhs.exp, $st, 5101, "" );
                                                                loader.relate( $rhs.exp, $st, 5100, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

streamStatement
returns [Object st]
@init                                                       {
                                                              try {
                                                                $st = loader.create( "IOStreamStatement" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }

                              : ^( STREAM_STATEMENT // done
                                   expression
                                                            {
                                                              try {
                                                                loader.relate( $expression.exp, $st, 5156, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( streamOperator         
                                                            {
                                                              try {
                                                                loader.relate( $streamOperator.exp, $st, 5115, "" );
                                                                // CDS - I am not sure what to do with multiple different operators.
                                                                loader.set_attribute( $st, "operator", $streamOperator.op );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )+
                                 )                          
                              ;

streamOperator
returns [String op, Object exp]
                              : ^( ( STREAM_IN              { $op = "in"; } // done
                                   | STREAM_OUT             { $op = "out"; }
                                   | STREAM_LINE_IN         { $op = "linein"; }
                                   | STREAM_LINE_OUT        { $op = "lineout"; }
                                   ) expression             { $exp = $expression.exp; }
                                 )                          
                              ;

callStatement
returns [Object st]
@init                                                       {
                                                              try {
                                                                $st = loader.create( "ServiceInvocation" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }

                              : ^( CALL // done
                                   expression               
                                                            {
                                                              try {
                                                                // CDS - name lookup occurs here to resolved subtype
                                                                // CDS - There are missing associations from the subtypes
                                                                // to the declarations of the services.  This can be resolved
                                                                // in the refactored diagram.
                                                                  Object subservice = loader.create( "DomainServiceInvocation" );
                                                                  subservice = loader.create( "ObjectServiceInvocation" );
                                                                  subservice = loader.create( "InstranceSeviceInvocation" );
                                                                  subservice = loader.create( "TerminatorServiceInvocation" );
                                                                loader.relate( $expression.exp, $st, 5157, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( argument               
                                                            {
                                                              try {
                                                                loader.relate( $argument.arg, $st, 5134, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )*                       
                                 )                          

                              ;


exitStatement
returns [Object st]
@init                                                       {
                                                              try {
                                                                $st = loader.create( "ExitStatement" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              : ^( EXIT // done
                                   ( condition
                                                            {
                                                              try {
                                                                loader.relate( $condition.exp, $st, 5109, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                 )                          
                              ;

returnStatement
returns [Object st]
                              : ^( RETURN // done
                                   expression              
                                 )                          {
                                                              try {
                                                                $st = loader.create( "ReturnStatement" );
                                                                loader.relate( current_service, $st, 5127, "" );
                                                                loader.relate( $expression.exp, $st, 5128, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

delayStatement
returns [Object st]
                              : ^( DELAY // done
                                   expression
                                 )                         {
                                                              try {
                                                                $st = loader.create( "DelayStatement" );
                                                                loader.relate( $expression.exp, $st, 5104, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

raiseStatement
returns [Object st]
                              : ^( RAISE // done
                                   exceptionReference
                                                            {
                                                              try {
                                                                $st = loader.create( "RaiseStatement" );
                                                                loader.relate( $exceptionReference.ref, $st, 5126, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   (
                                   expression
                                                           {
                                                              try {
                                                                loader.relate( $expression.exp, $st, 5125, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                 )                          
                              ;

deleteStatement
returns [Object st]
                              : ^( DELETE // done
                                   expression
                                 )                         {
                                                              try {
                                                                $st = loader.create( "DeleteStatement" );
                                                                loader.relate( $expression.exp, $st, 5105, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

eraseStatement
returns [Object st]
                              : ^( ERASE // done
                                   expression
                                 )                          {
                                                              try {
                                                                $st = loader.create( "EraseStatement" );
                                                                loader.relate( $expression.exp, $st, 5107, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

linkStatement
returns [Object st]
                              : ^( linkStatementType // done
                                   lhs=expression      
                                   relationshipSpec
                                                            {
                                                              try {
                                                                $st = loader.create( "LinkUnlinkStatement" );
                                                                loader.set_attribute( $st, "isLink", $linkStatementType.isLink );
                                                                loader.relate( $lhs.exp, $st, 5122, "" );
                                                                loader.relate( $relationshipSpec.relationship_specification, $st, 5120, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   (rhs=expression
                                                            {
                                                              try {
                                                                loader.relate( $rhs.exp, $st, 5119, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                     (assoc=expression
                                                            {
                                                              try {
                                                                loader.relate( $assoc.exp, $st, 5121, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                     )?
                                   )?
                                 )                          
                              ;

linkStatementType
returns [Boolean isLink]
                              : LINK                        { $isLink = true; } // done
                              | UNLINK                      { $isLink = false; }
                              ;


cancelTimerStatement
returns [Object st]
                             : ^( CANCEL // done
                                  timerId=expression )      {
                                                              try {
                                                                $st = loader.create( "CancelTimerStatement" );
                                                                loader.relate( $timerId.exp, $st, 5102, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                             ;
                              
scheduleStatement
returns [Object st]
                              : ^( SCHEDULE // done
                                   timerId=expression
                                   generateStatement
                                   scheduleType
                                   time=expression
                                                            {
                                                              try {
                                                                $st = loader.create( "ScheduleStatement" );
                                                                loader.relate( $timerId.exp, $st, 5132, "" );
                                                                loader.relate( $generateStatement.st, $st, 5129, "" );
                                                                loader.set_attribute( $st, "isAbsolute", $scheduleType.isAbsolute );
                                                                loader.relate( $time.exp, $st, 5130, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( period=expression
                                                            {
                                                              try {
                                                                loader.relate( $period.exp, $st, 5131, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                 )                         
                              ;
scheduleType
returns [Boolean isAbsolute]
                              : AT                          { $isAbsolute = true; } // done
                              | DELAY                       { $isAbsolute = false; }
                              ;



generateStatement
returns [Object st]

                              : ^( GENERATE // done
                                   eventReference
                                                            {
                                                              try {
                                                                $st = loader.create( "GenerateStatement" );
                                                                loader.relate( $eventReference.ref, $st, 5112, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( argument               
                                                            {
                                                              try {
                                                                loader.relate( $argument.arg, $st, 5114, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )*                       
                                   ( expression
                                                            {
                                                              try {
                                                                loader.relate( $expression.exp, $st, 5113, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                 )            
                              ;

ifStatement
returns [Object st]
@init{ Object previousalternative = null; }
                              : ^( IF // done
                                   condition
                                   statementList            
                                                            {
                                                              try {
                                                                $st = loader.create( "IfStatement" );
                                                                loader.relate( $condition.exp, $st, 5143, "" );
                                                                loader.relate( $statementList.st, $st, 5144, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( elsifBlock             
                                                            {
                                                              try {
                                                                loader.relate( $elsifBlock.alternative, $st, 5145, "" );
                                                                if ( null != previousalternative ) {
                                                                  loader.relate( $elsifBlock.alternative, previousalternative, 5158, "succeeds" );
                                                                }
                                                                previousalternative = $elsifBlock.alternative;
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )*              
                                   ( elseBlock              
                                                            {
                                                              try {
                                                                loader.relate( $elseBlock.alternative, $st, 5145, "" );
                                                                if ( null != previousalternative ) {
                                                                  loader.relate( $elsifBlock.alternative, previousalternative, 5158, "succeeds" );
                                                                }
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                 )                          
                              ;


elsifBlock
returns [Object alternative]
                              : ^( ELSIF // done
                                   condition
                                   statementList )          
                                                            {
                                                              try {
                                                                $alternative = loader.create( "Alternative" );
                                                                loader.set_attribute( $alternative, "else_otherwise", false );
                                                                loader.relate( $condition.exp, $alternative, 5147, "" );
                                                                loader.relate( $statementList.st, $alternative, 5148, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

elseBlock
returns [Object alternative]
                              : ^( ELSE // done
                                   statementList )          
                                                            {
                                                              try {
                                                                $alternative = loader.create( "Alternative" );
                                                                loader.set_attribute( $alternative, "else_otherwise", true );
                                                                loader.relate( $statementList.st, $alternative, 5148, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;


whileStatement
returns [Object st]
                              : ^( WHILE // done
                                   condition
                                   statementList )          
                                                            {
                                                              try {
                                                                $st = loader.create( "WhileStatement" );
                                                                loader.relate( $condition.exp, $st, 5142, "" );
                                                                loader.relate( $statementList.st, $st, 5141, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

condition
returns [Object exp]      
                              : ^( CONDITION // done
                                   expression )             { $exp = $expression.exp; }
                              ;


caseStatement
returns [Object st]      
@init{ Object previousalternative = null; }
                              : ^( CASE // done
                                  expression
                                                            {
                                                              try {
                                                                $st = loader.create( "CaseStatement" );
                                                                loader.relate( $expression.exp, $st, 5103, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                  ( caseAlternative         
                                                            {
                                                              try {
                                                                loader.relate( $caseAlternative.alternative, $st, 5146, "" );
                                                                if ( null != previousalternative ) {
                                                                  loader.relate( $caseAlternative.alternative, previousalternative, 5158, "succeeds" );
                                                                }
                                                                previousalternative = $caseAlternative.alternative;
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
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
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                  )?
                                )                           
                              ;

caseAlternative
returns [Object alternative]
                              : ^( WHEN // done
                                   ( choice                 
                                   )+
                                   statementList )         
                                                            {
                                                              try {
                                                                $alternative = loader.create( "Alternative" );
                                                                loader.set_attribute( $alternative, "else_otherwise", false );
                                                                loader.relate( $choice.exp, $alternative, 5147, "" );
                                                                loader.relate( $statementList.st, $alternative, 5148, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

choice
returns [Object exp]      
                              : ^( CHOICE // done
                                   expression )             { $exp = $expression.exp; }
                              ;

caseOthers
returns [Object alternative]
                              : ^( OTHERS // done
                                   statementList )          
                                                            {
                                                              try {
                                                                $alternative = loader.create( "Alternative" );
                                                                loader.set_attribute( $alternative, "else_otherwise", true );
                                                                loader.relate( $statementList.st, $alternative, 5148, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

forStatement
returns [Object st]
@init{ Object previousstatement = null; }
                              : ^( FOR // done
                                   loopVariableSpec
                                   statementList
                                 )
                                                            {
                                                              try {
                                                                $st = loader.create( "ForStatement" );
                                                                loader.relate( $loopVariableSpec.spec, $st, 5110, "" );
                                                                loader.relate( $statementList.st, $st, 5153, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

loopVariableSpec
returns [Object spec]
                              : ^( LOOP_VARIABLE
                                   identifier
                                   REVERSE?
                                   expression )
                                                            {
                                                              try {
                                                                $spec = loader.create( "LoopSpec" );
                                                                loader.set_attribute( $spec, "isreverse", ( null != $REVERSE ) );
                                                                loader.set_attribute( $spec, "loopVariable", $identifier.name );
                                                                // CDS - Look up the VariableDeclaration by name (within scope)
                                                                // and link to it.
                                                                loader.relate( $expression.exp, $spec, 5148, "" );
                                                                // CDS here figuring out loop spec subtypes.
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;



//---------------------------------------------------------
// Code Blocks
//---------------------------------------------------------

codeBlock
returns [ Object st ]
@init                                                       {
                                                              try {
                                                                $st = loader.create( "CodeBlock" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              : ^( CODE_BLOCK // done
                                  ( variableDeclaration     
                                                            {
                                                              try {
                                                                loader.relate( $variableDeclaration.var, $st, 5151, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                  )*     
                                   statementList
                                                            {
                                                              try {
                                                                loader.relate( $statementList.st, $st, 5150, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                  ( exceptionHandler
                                                            {
                                                              try {
                                                                loader.relate( $exceptionHandler.handler, $st, 5149, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                  )*
                                  ( otherHandler            
                                                            {
                                                              try {
                                                                loader.relate( $exceptionHandler.handler, $st, 5149, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                  )?
                                )
                              ;



variableDeclaration
returns [Object var]
                              : ^( VARIABLE_DECLARATION // done
                                   variableName
                                   READONLY?
                                   typeReference
                                                            {
                                                              try {
                                                                $var = loader.create( "VariableDeclaration" );
                                                                loader.set_attribute( $var, "name", $variableName.name );
                                                                loader.set_attribute( $var, "isreadonly", ( null != $READONLY ) );
                                                                loader.relate( $typeReference.type, $var, 5137, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   (expression
                                                            {
                                                              try {
                                                                loader.relate( $expression.exp, $var, 5138, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                   pragmaList )
                              ;


exceptionHandler
returns [Object handler]
                              : ^( EXCEPTION_HANDLER // done
                                   exceptionReference
                                   statementList
                                 )
                                                            {
                                                              try {
                                                                $handler = loader.create( "ExceptionHandler" );
                                                                loader.set_attribute( $handler, "isother", false );
                                                                loader.relate( $exceptionReference.ref, $handler, 5108, "" );
                                                                loader.relate( $statementList.st, $handler, 5152, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

otherHandler
returns [Object handler]
                              : ^( OTHER_HANDLER // done
                                   statementList
                                 )
                                                            {
                                                              try {
                                                                $handler = loader.create( "ExceptionHandler" );
                                                                loader.set_attribute( $handler, "isother", true );
                                                                loader.relate( $statementList.st, $handler, 5152, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

variableName
returns [String name]
                              : ^( VARIABLE_NAME // done
                                   identifier )             { $name = $identifier.name; }
                              ;

//---------------------------------------------------------
// Expression Definition
//---------------------------------------------------------


expression
returns [Object exp]
@init                                                       {
                                                              try {
                                                                $exp = loader.create( "Expression" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              : binaryExpression // done
                                                            {
                                                              try {
                                                                loader.relate( $binaryExpression.binary_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | unaryExpression             
                                                            {
                                                              try {
                                                                loader.relate( $unaryExpression.unary_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | rangeExpression             
                                                            {
                                                              try {
                                                                loader.relate( $rangeExpression.range_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | aggregateExpression         
                                                            {
                                                              try {
                                                                loader.relate( $aggregateExpression.structure_aggregate, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | linkExpression              
                                                            {
                                                              try {
                                                                loader.relate( $linkExpression.link_unlink_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | navigateExpression          
                                                            {
                                                              try {
                                                                loader.relate( $navigateExpression.navigation_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | correlateExpression         
                                                            {
                                                              try {
                                                                loader.relate( $correlateExpression.correlated_nav_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | orderByExpression           
                                                            {
                                                              try {
                                                                loader.relate( $orderByExpression.ordering_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | createExpression            
                                                            {
                                                              try {
                                                                loader.relate( $createExpression.create_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | findExpression              
                                                            {
                                                              try {
                                                                loader.relate( $findExpression.find_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | dotExpression               
                                                            {
                                                              try {
                                                                loader.relate( $dotExpression.dot_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | terminatorServiceExpression 
                                                            {
                                                              try {
                                                                loader.relate( $terminatorServiceExpression.terminator_name_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | callExpression              
                                                            {
                                                              try {
                                                                loader.relate( $callExpression.call_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | sliceExpression             
                                                            {
                                                              try {
                                                                loader.relate( $sliceExpression.slice_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | primeExpression             
                                                            {
                                                              try {
                                                                loader.relate( $primeExpression.characteristic_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | nameExpression              
                                                            {
                                                              try {
                                                                loader.relate( $nameExpression.name_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | literalExpression           
                                                            {
                                                              try {
                                                                loader.relate( $literalExpression.literal_expression, $exp, 5517, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

binaryExpression
returns [Object binary_expression]
                              : ^( binaryOperator // done
                                   lhs=expression
                                   rhs=expression
                                )                           {
                                                              try {
                                                                $binary_expression = loader.create( "BinaryExpression" );
                                                                //CDS loader.set_attribute( $binary_expression, "operator", $binaryOperator.text );
                                                                loader.relate( $lhs.exp, $binary_expression, 5001, "" );
                                                                loader.relate( $rhs.exp, $binary_expression, 5002, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;


binaryOperator
returns [String binary_operator]
                              : AND                         { $binary_operator = "Operator::and"; } // done
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
                              | MOD                         { $binary_operator = "Operator::modulus"; }
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
returns [Object unary_expression]
                              : ^( unaryOperator // done
                                  expression
                                )                          {
                                                              try {
                                                                // CDS I think I might need to relate this class to a result type.
                                                                $unary_expression = loader.create( "UnaryExpression" );
                                                                //CDS loader.set_attribute( $unary_expression, "operator", $unaryOperator.text );
                                                                loader.relate( $expression.exp, $unary_expression, 5561, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

unaryOperator
returns [String unary_operator]
                              : UNARY_PLUS                  { $unary_operator = "Operator::unaryplus"; } // done
                              | UNARY_MINUS                 { $unary_operator = "Operator::unaryminus"; }
                              | NOT                         { $unary_operator = "Operator::not"; }
                              | ABS                         { $unary_operator = "Operator::abs"; }
                              ;


rangeExpression
returns [Object range_expression]
                              : ^( RANGE_DOTS // done
                                   from=expression
                                   to=expression
                                )                          {
                                                              try {
                                                                $range_expression = loader.create( "RangeExpression" );
                                                                Object min_max_range = loader.create( "MinMaxRange" );
                                                                loader.relate( min_max_range, $range_expression, 5540, "" );
                                                                loader.relate( $from.exp, min_max_range, 5529, "" );
                                                                loader.relate( $to.exp, min_max_range, 5528, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;




aggregateExpression
returns [Object structure_aggregate]

                              : ^( AGGREGATE // done
                                                            {
                                                              try {
                                                                // CDS There may be a type to link to.
                                                                $structure_aggregate = loader.create( "StructureAggregate" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( expression             
                                                            {
                                                              try {
                                                                loader.relate( $expression.exp, $structure_aggregate, 5551, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )+ 
                                 )
                              ;


linkExpression
returns [Object link_unlink_expression]
                              : ^( linkExpressionType // done
                                   lhs=expression      
                                   relationshipSpec
                                                            {
                                                              try {
                                                                $link_unlink_expression = loader.create( "LinkUnlinkExpression" );
                                                                loader.relate( $lhs.exp, $link_unlink_expression, 5526, "" );
                                                                loader.relate( $relationshipSpec.relationship_specification, $link_unlink_expression, 5551, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   (rhs=expression          { try {
                                                                loader.relate( $rhs.exp, $link_unlink_expression, 5525, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )?
                                 )
                              ;
linkExpressionType
returns [boolean islink]
                              : LINK                        { $islink = true; } // done
                              | UNLINK                      { $islink = false; }
                              ;


navigateExpression
returns [Object navigation_expression]
//scope WhereClauseScope;
                              : ^( NAVIGATE
                                   expression
                                   relationshipSpec
                                                            {
                                                              try {
                                                                $navigation_expression = loader.create( "NavigationExpression" );
                                                                loader.relate( $expression.exp, $navigation_expression, 5526, "" );
                                                                loader.relate( $relationshipSpec.relationship_specification, $link_unlink_expression, 5551, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( whereClause           
                                   )?
                                 )                          
                                                                                          
                              ;

correlateExpression
returns [Object correlated_nav_expression]
                              : ^( CORRELATE
                                   lhs=expression
                                   rhs=expression
                                   relationshipSpec
                                 )                          
                              ;



orderByExpression
returns [Object ordering_expression]
                              : ^( ( ORDERED_BY             
                                   | REVERSE_ORDERED_BY     
                                   ) 
                                   expression               
                                   ( sortOrder              
                                   )* 
                                 )                          
                              ;

sortOrder
//returns [String component, boolean reverse]
                              : ^( SORT_ORDER_COMPONENT
                                   REVERSE?
                                   identifier               
                                 )
                              ;

createExpression
returns [Object create_expression]
                              : ^( CREATE
                                   objectReference 
                                   ( createArgument//[$objectReference.ref]         
                                   )*
                                 )                          
                              ;

createArgument //[ObjectNameExpression object]
//returns [CreateExpression.CreateAggregateValue arg]
                              : ^( CREATE_ARGUMENT
                                   attributeName
                                   expression )              
                              | ^( CURRENT_STATE
                                   stateName )               
                              ;

findExpression
returns [Object find_expression]
//scope WhereClauseScope;
                              : ^( findType
                                   expression               
                                   whereClause
                                 )                          
                              ;

whereClause
returns [Object exp]
                              : ^( WHERE // done
                                   ( expression             { $whereClause.exp = $expression.exp; }
                                   )?
                                 )
                              ;

findType
//returns [ FindExpression.ImplType type, Position pos ]
                              : FIND                        
                              | FIND_ONE                    
                              | FIND_ONLY                   
                              ;


dotExpression
returns [Object dot_expression]
                              : ^( DOT
                                   expression
                                   identifier
                                 )                          {
                                                              try {
                                                                $dot_expression = loader.create( "DotExpression" );
                                                                // CDS - START HERE
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

terminatorServiceExpression
returns [Object terminator_name_expression]
                              : ^( TERMINATOR_SCOPE
                                   expression
                                   identifier
                                 )                          
                              ;

callExpression
returns [Object call_expression]

                              : ^( CALL
                                   expression               
                                   ( argument               
                                   )*                       
                                 )                          

                              ;

nameExpression
returns [Object name_expression]      
                              : ^( NAME
                                   identifier
                                 )                          { 
                                                              // CDS - Here I need to use a symbol table or build
                                                              // a query mechanism into my model.
                                                              // exp = resolveName ( $identifier.name );
                                                              $name_expression = $identifier.name;
                                                            } 
                              | ^( NAME
                                   domainReference
                                   identifier
                                 )                          {
                                                              // CDS - Here I need to use a symbol table or build
                                                              // a query mechanism into my model.
                                                              // exp = Name.create ( $domainReference.ref, $identifier.name );
                                                              $name_expression = $identifier.name;
                                                            }
                              | ^( FIND_ATTRIBUTE
                                   identifier
                                )                           {
                                                              try {
                                                                $name_expression = loader.create( "FindAttributeNameExpression" );
                                                                // CDS - need to link to a where clause using the attribute name
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | compoundTypeName
                                                            {
                                                              try {
                                                                $name_expression = loader.create( "TypeNameExpression" );
                                                                loader.relate( $compoundTypeName.type, $name_expression, 5547, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;


compoundTypeName
returns [Object type]
                              : instanceTypeRef             { $type = $instanceTypeRef.basictype; }
                              | sequenceTypeRef             { $type = $sequenceTypeRef.basictype; }
                              | arrayTypeRef                { $type = $arrayTypeRef.basictype; }
                              | setTypeRef                  { $type = $setTypeRef.basictype; }
                              | bagTypeRef                  { $type = $bagTypeRef.basictype; }
                              ;


argument
returns [Object arg]
                              : ^( ARGUMENT // done
                                   expression
                                 )                          { $arg = $expression.exp; }
                              ;

sliceExpression
returns [Object slice_expression]
                              : ^( SLICE // done
                                   prefix=expression
                                   slice=expression
                                 )                          {
                                                              try {
                                                                $slice_expression = loader.create( "SliceExpression" );
                                                                loader.relate( $prefix.exp, $slice_expression, 5547, "" );
                                                                loader.relate( $slice.exp, $slice_expression, 5546, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ;

primeExpression
returns [Object characteristic_expression]
                              : ^( PRIME // done
	                           expression
                                   identifier
                                                            {
                                                              try {
                                                                $characteristic_expression = loader.create( "CharacteristicExpression" );
                                                                loader.relate( $expression.exp, $characteristic_expression, 5504, "" );
                                                                loader.set_attribute( $characteristic_expression, "characteristic", $identifier.text );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   ( argument               
                                                            {
                                                              try {
                                                                loader.relate( $argument.arg, $characteristic_expression, 5503, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                                   )*                       
                                 )                          
                              ;

literalExpression
returns [Object literal_expression]
@init                                                       {
                                                              try {
                                                                $literal_expression = loader.create( "LiteralExpression" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              : IntegerLiteral
                                                            {
                                                              try {
                                                                Object numericliteral = loader.create( "NumericLiteral" );
                                                                loader.relate( numericliteral, $literal_expression, 5700, "" );
                                                                loader.set_attribute( numericliteral, "text", $IntegerLiteral.text );
                                                                Object integerliteral = loader.create( "IntegerLiteral" );
                                                                loader.relate( integerliteral, $literal_expression, 5703, "" );
                                                                try {
                                                                  //Long value = Long.parseLong( $IntegerLiteral.text );
                                                                } catch ( NumberFormatException e ) { System.err.println( e ); }
                                                                loader.set_attribute( integerliteral, "value", $IntegerLiteral.text );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | RealLiteral
                                                            {
                                                              try {
                                                                Object numericliteral = loader.create( "NumericLiteral" );
                                                                loader.relate( numericliteral, $literal_expression, 5700, "" );
                                                                loader.set_attribute( numericliteral, "text", $RealLiteral.text );
                                                                Object realliteral = loader.create( "RealLiteral" );
                                                                loader.relate( realliteral, $literal_expression, 5703, "" );
                                                                try {
                                                                  //Double value = Double.parseDouble( $RealLiteral.text );
                                                                } catch ( NumberFormatException e ) { System.err.println( e ); }
                                                                loader.set_attribute( realliteral, "value", $RealLiteral.text );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | CharacterLiteral
                                                            {
                                                              try {
                                                                Object characterliteral = loader.create( "CharacterLiteral" );
                                                                loader.relate( characterliteral, $literal_expression, 5700, "" );
                                                                loader.set_attribute( characterliteral, "original", $CharacterLiteral.text );
                                                                // CDS - This is simplistic and needs to be extended to handle octal.
                                                                //CDSloader.set_attribute( characterliteral, "noQuotes", $CharacterLiteral.text.replaceAll("^\"|\"$", "") );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | StringLiteral
                                                            {
                                                              try {
                                                                Object stringliteral = loader.create( "StringLiteral" );
                                                                loader.relate( stringliteral, $literal_expression, 5700, "" );
                                                                loader.set_attribute( stringliteral, "original", $StringLiteral.text );
                                                                // CDS - This is simplistic and needs to be extended to handle octal.
                                                                //CDSloader.set_attribute( stringliteral, "noQuotes", $StringLiteral.text.replaceAll("^\"|\"$", "") );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | TimestampLiteral
                                                            {
                                                              try {
                                                                Object timestampliteral = loader.create( "TimestampLiteral" );
                                                                loader.relate( timestampliteral, $literal_expression, 5700, "" );
                                                                loader.set_attribute( timestampliteral, "original", $TimestampLiteral.text );
                                                                // CDS - need to implement conversion.
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | DurationLiteral
                                                            {
                                                              try {
                                                                Object durationliteral = loader.create( "DurationLiteral" );
                                                                loader.relate( durationliteral, $literal_expression, 5700, "" );
                                                                loader.set_attribute( durationliteral, "original", $DurationLiteral.text );
                                                                // CDS - need to implement conversion.
                                                                // CDS - maybe need to promote original to supertype LiteralExpression
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | TRUE
                                                            {
                                                              try {
                                                                Object booleanliteral = loader.create( "BooleanLiteral" );
                                                                loader.relate( booleanliteral, $literal_expression, 5700, "" );
                                                                loader.set_attribute( booleanliteral, "value", Boolean.valueOf( "true" ) );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | FALSE
                                                            {
                                                              try {
                                                                Object booleanliteral = loader.create( "BooleanLiteral" );
                                                                loader.relate( booleanliteral, $literal_expression, 5700, "" );
                                                                loader.set_attribute( booleanliteral, "value", Boolean.valueOf( "false" ) );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | NULL
                                                            {
                                                              try {
                                                                Object nullliteral = loader.create( "NullLiteral" );
                                                                loader.relate( nullliteral, $literal_expression, 5700, "" );
                                                                // CDS - need to relate to AnyInstance built-in
                                                                // might to relate at a higher level in the hierarchy
                                                                // like maybe the BasicType level
                                                                Object basictype = loader.call_function( "select_any_TypeDeclaration_where_name", "AnyInstanceName" );
                                                                loader.relate( nullliteral, basictype, 5702, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | FLUSH
                                                            {
                                                              try {
                                                                Object flushliteral = loader.create( "FlushLiteral" );
                                                                loader.relate( flushliteral, $literal_expression, 5700, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | ENDL
                                                            {
                                                              try {
                                                                Object endlliteral = loader.create( "EndlLiteral" );
                                                                loader.relate( endlliteral, $literal_expression, 5700, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | THIS
                                                            {
                                                              try {
                                                                Object thisliteral = loader.create( "ThisLiteral" );
                                                                loader.relate( thisliteral, $literal_expression, 5700, "" );
                                                                // CDS - I used current_object and current_state or current_service
                                                                // to link to the proper "scope".
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              | CONSOLE
                                                            {
                                                              try {
                                                                Object consoleliteral = loader.create( "ConsoleLiteral" );
                                                                loader.relate( consoleliteral, $literal_expression, 5700, "" );
                                                              } catch ( XtumlException e ) { System.err.println( e ); }
                                                            }
                              ; 
