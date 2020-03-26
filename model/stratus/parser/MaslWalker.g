tree grammar MaslWalker;

options
{
  tokenVocab=MaslParser;
  ASTLabelType=CommonTree;
}

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
private Object empty_object = null;
private Object empty_code_block = null;
private Object current_project = empty_object;
private Object current_project_domain = empty_object;
private Object current_domain = empty_object;
private Object current_service = empty_object;
private Object current_object = empty_object;
private Object current_code_block = empty_code_block;

// parent masl parser
private MaslImportParser masl_parser = null;

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

// trace routine
private void xtuml_trace( XtumlException e, String message ) {
  System.err.println( "xtuml_trace(" + message + ") - " + getFile() + ":  " + e );
  e.printStackTrace();
  System.exit( 1 );
}

}

target
                              : definition+;

definition
@init{ try { empty_object = loader.call_function( "select_ObjectDeclaration_where_name", "false", "false" );
             empty_code_block = loader.call_function( "select_CodeBlock_empty" );
             current_code_block = empty_code_block;
           } catch ( XtumlException e ) { xtuml_trace( e, "" ); } }
                              : projectDefinition
                              | domainDefinition
                              ;


//---------------------------------------------------------
// Project Definition
//---------------------------------------------------------

identifier
returns [String name]
                              : Identifier                  {
                                                              $name = $Identifier.text;
                                                            }
                              ;


projectDefinition
returns [Object project]
                              : ^( PROJECT
                                   projectName              {
                                                              try {
                                                                $project = loader.create( "Project" );
                                                                loader.set_attribute( $project, "name", $projectName.name );
                                                                current_project = $project;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   description
                                   ( projectDomainDefinition
                                                            {
                                                              try {
                                                                loader.relate( $projectDomainDefinition.project_domain, $project, 5900, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*
                                   pragmaList)              
                              ;

projectDomainDefinition
returns [Object project_domain]
                              : ^( DOMAIN
                                   projectDomainReference   
                                   description              {
                                                              try {
                                                                $project_domain = loader.create( "ProjectDomain" );
                                                                loader.set_attribute( $project_domain, "name", $projectDomainReference.domainname );
                                                                current_project_domain = $project_domain;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( projectTerminatorDefinition    
                                                            {
                                                              try {
                                                                loader.relate( $projectTerminatorDefinition.project_terminator, $project_domain, 5902, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*
                                   pragmaList
                                 )                          
                              ;


projectName
returns [String name]
                              : ^( PROJECT_NAME
                                   identifier               { $name = $identifier.name; }
                                )
                              ;


//---------------------------------------------------------
// Domain Definition
//---------------------------------------------------------

domainDefinition
returns [Object domain]
                              : ^( DOMAIN
                                   domainName               {
                                                              try {
                                                                // Some interface files declare the domain with test objects.  Allow it.
                                                                $domain = loader.call_function( "select_Domain_where_name", $domainName.domainname );
                                                                if ( ((IModelInstance)$domain).isEmpty() ) {
                                                                  $domain = loader.create( "Domain" );
                                                                  loader.set_attribute( $domain, "name", $domainName.domainname );
                                                                }
                                                                current_domain = $domain;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   description
                                   ( objectDeclaration           
                                                            {
                                                              try {
                                                                loader.relate( $objectDeclaration.object_declaration, $domain, 5805, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | domainServiceDeclaration    
                                                            {
                                                              try {
                                                                loader.relate( $domainServiceDeclaration.domain_service, $domain, 5303, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | domainTerminatorDefinition    
                                                            {
                                                              try {
                                                                loader.relate( $domainTerminatorDefinition.domain_terminator, $domain, 5304, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | relationshipDefinition     
                                                            {
                                                              try {
                                                                loader.relate( $relationshipDefinition.relationship_declaration, $domain, 6003, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | objectDefinition       // object related when declared (above)
                                   | typeDeclaration             
                                                            {
                                                              try {
                                                                loader.relate( $typeDeclaration.user_defined_type, $domain, 6235, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | typeForwardDeclaration // leaving child unrelated until typeDeclaration
                                   | exceptionDeclaration        
                                                            {
                                                              try {
                                                                loader.relate( $exceptionDeclaration.rejection, $domain, 5400, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*
                                   pragmaList
                                 )                              
                              ;

domainName
returns [String domainname]
                              : ^( DOMAIN_NAME
                                   identifier               { $domainname = $identifier.name; }
                                 )
                              ;

domainReference
returns [String domainname]
                              : domainName                  { $domainname = $domainName.domainname; }
                              ;

projectDomainReference
returns [String domainname]
                              : domainName                  { $domainname = $domainName.domainname; }
                              ;

optionalDomainReference
returns [String domainname, boolean defaulted]
                              : domainReference             { $domainname = $domainReference.domainname; $defaulted = false; }
                              | /* blank */                 { $domainname = ""; $defaulted = true;}
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
                                                              {
                                                                  try {
                                                                    $rejection = loader.create( "ExceptionDeclaration" );
                                                                    loader.set_attribute( $rejection, "name", $exceptionName.exceptionname );
                                                                    loader.set_attribute( $rejection, "visibility", $exceptionVisibility.visibility );
                                                                  } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                              ;

exceptionName
returns [ String exceptionname ]
                              : ^( EXCEPTION_NAME
                                   identifier)              { $exceptionname = $identifier.name; }
                              ;

exceptionReference
returns [Object exception_reference]
                              : optionalDomainReference
                                exceptionName               
                                                              {
                                                                try {
                                                                  $exception_reference = loader.create( "ExceptionReference" );
                                                                  Object builtin = loader.create( "BuiltinException" );
                                                                  loader.relate( $exception_reference, builtin, 5401, "" );
                                                                  Object exception_declaration = loader.call_function( "select_ExceptionDeclaration_where_name", $optionalDomainReference.domainname, $exceptionName.exceptionname );
                                                                  loader.relate( $exception_reference, exception_declaration, 5402, "" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                              ;
                                

exceptionVisibility
returns [String visibility]
                              : PRIVATE                     { $visibility = "Visibility::private"; }
                              | PUBLIC                      { $visibility = "Visibility::public"; }
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
                                                              {
                                                                try {
                                                                  $user_defined_type = loader.call_function( "select_UserDefinedType_where_name", "", $typeName.name );
                                                                  if ( ((IModelInstance)$user_defined_type).isEmpty() ) {
                                                                    Object type_definition = loader.create( "TypeDefinition" );
                                                                    Object basic_type = loader.create( "BasicType" );
                                                                    $user_defined_type = loader.create( "UserDefinedType" );
                                                                    Object type_declaration = loader.create( "TypeDeclaration" );
                                                                    loader.relate( basic_type, type_definition, 6236, "" );
                                                                    loader.relate( $user_defined_type, basic_type, 6205, "" );
                                                                    loader.relate( $user_defined_type, type_declaration, 6241, "" );
                                                                    loader.set_attribute( $user_defined_type, "name", $typeName.name );
                                                                    loader.set_attribute( $user_defined_type, "visibility", $typeVisibility.visibility );
                                                                  }
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                 )                          
                              ;
                              

typeDeclaration
returns [Object user_defined_type]
@init{ Object type_declaration = null; boolean created = false; }
                              : ^( TYPE
                                   typeName                 
                                   typeVisibility
                                                              {
                                                                try {
                                                                  $user_defined_type = loader.call_function( "select_UserDefinedType_where_name", "", $typeName.name );
                                                                  if ( ((IModelInstance)$user_defined_type).isEmpty() ) {
                                                                    Object type_definition = loader.create( "TypeDefinition" );
                                                                    Object basic_type = loader.create( "BasicType" );
                                                                    $user_defined_type = loader.create( "UserDefinedType" );
                                                                    type_declaration = loader.create( "TypeDeclaration" );
                                                                    loader.relate( basic_type, type_definition, 6236, "" );
                                                                    loader.relate( $user_defined_type, basic_type, 6205, "" );
                                                                    loader.relate( $user_defined_type, type_declaration, 6241, "" );
                                                                    loader.set_attribute( $user_defined_type, "name", $typeName.name );
                                                                    loader.set_attribute( $user_defined_type, "visibility", $typeVisibility.visibility );
                                                                    created = true;
                                                                  } else {
                                                                    // declared forward
                                                                    type_declaration = loader.call_function( "select_TypeDeclaration_related_UserDefinedType", $user_defined_type );
                                                                  }
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                   description
                                   pragmaList
                                   typeDefinition
                                                              {
                                                                if ( created ) { // TODO - this is needed until private/public is resolved.
                                                                  try {
                                                                    loader.relate( $typeDefinition.type_definition, type_declaration, 6234, "" );
                                                                  } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                                }
                                                              }
                                 )
                              ;


typeDefinition
returns [Object type_definition]
                              : structureTypeDefinition
                                                            {
                                                              try {
                                                                $type_definition = loader.create( "TypeDefinition" );
                                                                Object full_type_definition = loader.create( "FullTypeDefinition" );
                                                                loader.relate( full_type_definition, $type_definition, 6236, "" );
                                                                loader.relate( $structureTypeDefinition.structure_type, full_type_definition, 6219, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | enumerationTypeDefinition   
                                                            {
                                                              try {
                                                                $type_definition = loader.create( "TypeDefinition" );
                                                                Object full_type_definition = loader.create( "FullTypeDefinition" );
                                                                loader.relate( full_type_definition, $type_definition, 6236, "" );
                                                                loader.relate( $enumerationTypeDefinition.enumerate_type, full_type_definition, 6219, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | constrainedTypeDefinition   
                                                            {
                                                              try {
                                                                $type_definition = loader.create( "TypeDefinition" );
                                                                Object full_type_definition = loader.create( "FullTypeDefinition" );
                                                                loader.relate( full_type_definition, $type_definition, 6236, "" );
                                                                loader.relate( $constrainedTypeDefinition.constrained_type, full_type_definition, 6219, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | typeReference               
                                                            {
                                                              try {
                                                                $type_definition = loader.call_function( "select_TypeDefinition_related_BasicType", $typeReference.basic_type );
                                                                if ( ((IModelInstance)$type_definition).isEmpty() ) {
                                                                  $type_definition = loader.create( "TypeDefinition" );
                                                                  loader.relate( $typeReference.basic_type, $type_definition, 6236, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | unconstrainedArrayDefinition
                                                            {
                                                              try {
                                                                $type_definition = loader.create( "TypeDefinition" );
                                                                Object full_type_definition = loader.create( "FullTypeDefinition" );
                                                                loader.relate( full_type_definition, $type_definition, 6236, "" );
                                                                loader.relate( $unconstrainedArrayDefinition.type, full_type_definition, 6219, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

typeVisibility
returns [String visibility]
                              : PRIVATE                     { $visibility = "Visibility::private"; }
                              | PUBLIC                      { $visibility = "Visibility::public"; }
                              ;



// Constrained Type
constrainedTypeDefinition
returns [Object constrained_type]
                              : ^( CONSTRAINED_TYPE
                                   typeReference
                                   typeConstraint
                                 )                          {
                                                              try {
                                                                $constrained_type = loader.create( "ConstrainedType" );
                                                                loader.relate( $typeReference.basic_type, $constrained_type, 6210, "" );
                                                                loader.relate( $typeConstraint.type_constraint, $constrained_type, 6209, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

typeConstraint
returns [Object type_constraint]
                              : rangeConstraint
                                                            {
                                                              try {
                                                                $type_constraint = loader.create( "TypeConstraint" );
                                                                loader.relate( $rangeConstraint.range_constraint, $type_constraint, 6232, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | deltaConstraint             
                                                            {
                                                              try {
                                                                $type_constraint = loader.create( "TypeConstraint" );
                                                                loader.relate( $deltaConstraint.delta_constraint, $type_constraint, 6232, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | digitsConstraint            
                                                            {
                                                              try {
                                                                $type_constraint = loader.create( "TypeConstraint" );
                                                                loader.relate( $digitsConstraint.digits_constraint, $type_constraint, 6232, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

rangeConstraint
returns [Object range_constraint]
                              : ^( RANGE
                                   expression
                                 )                          {
                                                              try {
                                                                $range_constraint = loader.create( "RangeConstraint" );
                                                                loader.relate( $expression.expression, $range_constraint, 6224, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

deltaConstraint
returns [Object delta_constraint]
                              : ^( DELTA
                                   expression
                                   rangeConstraint
                                 )                          {
                                                              try {
                                                                $delta_constraint = loader.create( "DeltaConstraint" );
                                                                loader.relate( $expression.expression, $delta_constraint, 6211, "" );
                                                                loader.relate( $rangeConstraint.range_constraint, $delta_constraint, 6212, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

digitsConstraint
returns [Object digits_constraint]
                              : ^( DIGITS
                                   expression
                                   rangeConstraint
                                 )                          {
                                                              try {
                                                                $digits_constraint = loader.create( "RangeConstraint" );
                                                                loader.relate( $expression.expression, $digits_constraint, 6215, "" );
                                                                loader.relate( $rangeConstraint.range_constraint, $digits_constraint, 6216, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

// Structure Type
structureTypeDefinition
returns [Object structure_type]
@init{ Object previouscomponent = null; }
                              : ^( STRUCTURE
                                                            {
                                                              try {
                                                                $structure_type = loader.create( "StructureType" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( structureComponentDefinition 
                                                            {
                                                              try {
                                                                if ( null == previouscomponent ) {
                                                                  loader.relate( $structureComponentDefinition.structure_element, $structure_type, 6244, "" );
                                                                } else {
                                                                  loader.relate( $structureComponentDefinition.structure_element, previouscomponent, 6243, "succeeds" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              previouscomponent = $structureComponentDefinition.structure_element;
                                                            }
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
                                                            {
                                                              try {
                                                                $structure_element = loader.create( "StructureElement" );
                                                                loader.set_attribute( $structure_element, "name", $componentName.componentname );
                                                                loader.relate( $typeReference.basic_type, $structure_element, 6230, "" );
                                                                if ( null != $expression.expression ) {
                                                                  loader.relate( $expression.expression, $structure_element, 6229, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

componentName
returns [String componentname]
                              : ^( COMPONENT_NAME
                                   identifier
                                 )                          { $componentname = $identifier.name; }
                              ;


// Enumeration Type
enumerationTypeDefinition
returns [Object enumerate_type]
@init{ Object previousenumerator = null; }
                              : ^( ENUM
                                                            {
                                                              try {
                                                                $enumerate_type = loader.create( "EnumerateType" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( enumerator             
                                                            {
                                                              try {
                                                                if ( null == previousenumerator ) {
                                                                  loader.relate( $enumerator.enumerate_item, $enumerate_type, 6218, "" );
                                                                } else {
                                                                  loader.relate( $enumerator.enumerate_item, previousenumerator, 6242, "succeeds" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              previousenumerator = $enumerator.enumerate_item;
                                                            }
                                   )+
                                 )                          
                              ;

enumerator
returns [Object enumerate_item]
                              : ^( ENUMERATOR
                                   enumeratorName
                                   expression?
                                 )                          {
                                                              try {
                                                                $enumerate_item = loader.create( "EnumerateItem" );
                                                                loader.set_attribute( $enumerate_item, "name", $enumeratorName.enumeratorname );
                                                                if ( null != $expression.expression ) {
                                                                  loader.relate( $enumerate_item, $expression.expression, 6217, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

enumeratorName
returns [String enumeratorname]         : ^( ENUMERATOR_NAME
                                   identifier
                                 )                          { $enumeratorname = $identifier.name; }
                              ;


// Unconstrained array
unconstrainedArrayDefinition
returns [Object type]
                              : ^( UNCONSTRAINED_ARRAY
                                   index=typeReference
                                   contained=typeReference
                                 )                          {
                                                              try {
                                                                $type = loader.create( "UnconstrainedArrayType" );
                                                                loader.relate( $index.basic_type, $type, 6239, "" );
                                                                loader.relate( $contained.basic_type, $type, 6240, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

//---------------------------------------------------------
// Type Reference
//---------------------------------------------------------

typeReference
returns [Object basic_type]
@after{                                                     if ( ((IModelInstance)$basic_type).isEmpty() ) {
                                                              System.err.println( "warning:  type reference to unlocated type, returning integer." );
                                                              try {
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "integer" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
      }
                                                            }
                              : namedTypeRef                { $basic_type = $namedTypeRef.basic_type; }
                              | constrainedArrayTypeRef     { $basic_type = $constrainedArrayTypeRef.basic_type; }
                              | instanceTypeRef             { $basic_type = $instanceTypeRef.basic_type; }
                              | sequenceTypeRef             { $basic_type = $sequenceTypeRef.basic_type; }
                              | arrayTypeRef                { $basic_type = $arrayTypeRef.basic_type; }
                              | setTypeRef                  { $basic_type = $setTypeRef.basic_type; }
                              | bagTypeRef                  { $basic_type = $bagTypeRef.basic_type; }
                              | dictionaryTypeRef           { $basic_type = $dictionaryTypeRef.basic_type; }
                              ;

instanceTypeRef
returns [Object basic_type]
                              : ^( INSTANCE
                                   objectReference
                                   ANONYMOUS?
                                 )                          {
                                                              try {
                                                                $basic_type = loader.create( "BasicType" );
                                                                loader.set_attribute( $basic_type, "isanonymous", ( $ANONYMOUS != null ) );
                                                                Object instance_type = loader.create( "InstanceType" );
                                                                loader.relate( instance_type, $basic_type, 6205, "" );
                                                                loader.relate( instance_type, $objectReference.object_declaration, 6220, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

namedTypeRef
returns [Object basic_type]
                              : ^( NAMED_TYPE
                                   optionalDomainReference
                                   typeName
                                   ANONYMOUS?
                                 )                          { 
                                                              try {
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", $optionalDomainReference.domainname, $typeName.name );
                                                                if ( !((IModelInstance)$basic_type).isEmpty() ) {
                                                                  loader.set_attribute( $basic_type, "isanonymous", ( $ANONYMOUS != null ) );
                                                                }
                                                                else { System.err.println( "namedTypeRef failed with name:  " + $optionalDomainReference.domainname + "::" + $typeName.name ); }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

userDefinedTypeRef
returns [Object user_defined_type]
                              : ^( NAMED_TYPE
                                   optionalDomainReference
                                   typeName
                                 )                          { 
                                                              try {
                                                                $user_defined_type = loader.call_function( "select_UserDefinedType_where_name", $optionalDomainReference.domainname, $typeName.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

constrainedArrayTypeRef
returns [Object basic_type]
                              : ^( CONSTRAINED_ARRAY
                                   userDefinedTypeRef
                                   arrayBounds
                                 )                          { 
                                                              try {
                                                                $basic_type = loader.create( "BasicType" );
                                                                Object unconstrained_array_subtype = loader.create( "UnconstrainedArraySubtype" );
                                                                loader.relate( unconstrained_array_subtype, $basic_type, 6205, "" );
                                                                loader.relate( unconstrained_array_subtype, $userDefinedTypeRef.user_defined_type, 6238, "" );
                                                                loader.relate( unconstrained_array_subtype, $arrayBounds.expression, 6237, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;


sequenceTypeRef
returns [Object basic_type]
                              : ^( SEQUENCE
                                   typeReference
                                   expression?
                                   ANONYMOUS?
                                 )                          {
                                                              try {
                                                                $basic_type = loader.create( "BasicType" );
                                                                loader.set_attribute( $basic_type, "isanonymous", ( $ANONYMOUS != null ) );
                                                                Object collection_type = loader.create( "CollectionType" );
                                                                loader.relate( collection_type, $basic_type, 6205, "" );
                                                                loader.relate( collection_type, $typeReference.basic_type, 6208, "" );
                                                                Object sequence_type = loader.create( "SequenceType" );
                                                                loader.relate( sequence_type, collection_type, 6207, "" );
                                                                if ( null != $expression.expression ) {
                                                                  loader.relate( sequence_type, $expression.expression, 6226, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

arrayTypeRef
returns [Object basic_type]
                              : ^( ARRAY
                                   typeReference
                                   arrayBounds
                                   ANONYMOUS?
                                 )                          {
                                                              try {
                                                                $basic_type = loader.create( "BasicType" );
                                                                loader.set_attribute( $basic_type, "isanonymous", ( $ANONYMOUS != null ) );
                                                                Object collection_type = loader.create( "CollectionType" );
                                                                loader.relate( collection_type, $basic_type, 6205, "" );
                                                                loader.relate( collection_type, $typeReference.basic_type, 6208, "" );
                                                                Object array_type = loader.create( "ArrayType" );
                                                                loader.relate( array_type, collection_type, 6207, "" );
                                                                loader.relate( array_type, $arrayBounds.expression, 6201, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

setTypeRef
returns [Object basic_type]
                              : ^( SET
                                   typeReference
                                   ANONYMOUS?
                                 )                          {
                                                              try {
                                                                $basic_type = loader.create( "BasicType" );
                                                                loader.set_attribute( $basic_type, "isanonymous", ( $ANONYMOUS != null ) );
                                                                Object collection_type = loader.create( "CollectionType" );
                                                                loader.relate( collection_type, $basic_type, 6205, "" );
                                                                loader.relate( collection_type, $typeReference.basic_type, 6208, "" );
                                                                Object set_type = loader.create( "SetType" );
                                                                loader.relate( set_type, collection_type, 6207, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

bagTypeRef
returns [Object basic_type]
                              : ^( BAG
                                   typeReference
                                   ANONYMOUS?
                                 )                          {
                                                              try {
                                                                $basic_type = loader.create( "BasicType" );
                                                                loader.set_attribute( $basic_type, "isanonymous", ( $ANONYMOUS != null ) );
                                                                Object collection_type = loader.create( "CollectionType" );
                                                                loader.relate( collection_type, $basic_type, 6205, "" );
                                                                loader.relate( collection_type, $typeReference.basic_type, 6208, "" );
                                                                Object bag_type = loader.create( "BagType" );
                                                                loader.relate( bag_type, collection_type, 6207, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

dictionaryTypeRef
returns [Object basic_type]
                              : ^( DICTIONARY
                                   (^(KEY   key=typeReference))?
                                   (^(VALUE value=typeReference))?
                                   ANONYMOUS?
                                 )                          {
                                                              try {
                                                                $basic_type = loader.create( "BasicType" );
                                                                loader.set_attribute( $basic_type, "isanonymous", ( $ANONYMOUS != null ) );
                                                                Object dictionary_type = loader.create( "DictionaryType" );
                                                                loader.relate( dictionary_type, $basic_type, 6205, "" );
                                                                // Link key and value.
                                                                Object string_basic_type = loader.call_function( "select_BasicType_where_name", "", "string" );
                                                                if ( null != $key.basic_type ) {
                                                                  loader.relate( dictionary_type, $key.basic_type, 6213, "" );
                                                                } else {
                                                                  // No key provided.  Supply string.
                                                                  loader.relate( dictionary_type, string_basic_type, 6213, "" );
                                                                }
                                                                if ( null != $value.basic_type ) {
                                                                  loader.relate( dictionary_type, $value.basic_type, 6214, "" );
                                                                } else {
                                                                  // No value provided.  Supply string.
                                                                  loader.relate( dictionary_type, string_basic_type, 6214, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;
typeName
returns [String name]
                              : ^( TYPE_NAME
                                   identifier )             { $name = $identifier.name; }
                              ;

arrayBounds
returns [Object expression]
                              : ^( ARRAY_BOUNDS
                                   expression )             { $expression = $expression.expression; }
                              ;

//---------------------------------------------------------
// Terminator Definition
//---------------------------------------------------------

terminatorName
returns [String terminatorname]
                              : ^( TERMINATOR_NAME
                                   identifier )             { $terminatorname = $identifier.name; }
                              ;


domainTerminatorDefinition
returns [Object domain_terminator]
                              : ^( TERMINATOR_DEFINITION
                                   terminatorName             
                                                              {
                                                                try {
                                                                  $domain_terminator = loader.create( "DomainTerminator" );
                                                                  loader.set_attribute( $domain_terminator, "name", $terminatorName.terminatorname );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                   description
                                   pragmaList
                                   ( terminatorServiceDeclaration
                                                              {
                                                                try {
                                                                  loader.relate( $terminatorServiceDeclaration.domain_terminator_service, $domain_terminator, 5306, "" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                   )*
                                 )
                              ;

projectTerminatorDefinition
returns [Object project_terminator]
                              : ^( TERMINATOR_DEFINITION
                                   terminatorName
                                                              {
                                                                try {
                                                                  $project_terminator = loader.create( "ProjectTerminator" );
                                                                  loader.set_attribute( $project_terminator, "name", $terminatorName.terminatorname );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                   description
                                   pragmaList
                                   ( projectTerminatorServiceDeclaration
                                                              {
                                                                try {
                                                                  loader.relate( $projectTerminatorServiceDeclaration.project_terminator_service, $project_terminator, 5903, "" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                   )*
                                 )
                              ;



terminatorServiceDeclaration
returns [Object domain_terminator_service]
@init { Object service = null; }
                              : ^( TERMINATOR_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName
                                                            {
                                                              try {
                                                                service = loader.create( "Service" );
                                                                current_service = service;
                                                                loader.set_attribute( service, "name", $serviceName.name );
                                                                loader.set_attribute( service, "visibility", $serviceVisibility.visibility );
                                                                $domain_terminator_service = loader.create( "DomainTerminatorService" );
                                                                loader.relate( $domain_terminator_service, service, 5203, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   description
                                   parameterList
                                                            {
                                                              if ( null != $parameterList.firstparameter ) {
                                                                try {
                                                                  loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                                            }
                                   ( returnType
                                                            {
                                                              try {
                                                                loader.relate( $returnType.type, service, 5205, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )?
                                   pragmaList
                                 )
                              ;

projectTerminatorServiceDeclaration
returns [Object project_terminator_service]
@init { Object service = null; }
                              : ^( TERMINATOR_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName              
                                                            {
                                                              try {
                                                                service = loader.create( "Service" );
                                                                current_service = service;
                                                                loader.set_attribute( service, "name", $serviceName.name );
                                                                loader.set_attribute( service, "visibility", $serviceVisibility.visibility );
                                                                $project_terminator_service = loader.create( "ProjectTerminatorService" );
                                                                loader.relate( $project_terminator_service, service, 5203, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   description
                                   parameterList
                                                            {
                                                              if ( null != $parameterList.firstparameter ) {
                                                                try {
                                                                  loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                                            }
                                   ( returnType
                                                            {
                                                              try {
                                                                loader.relate( $returnType.type, service, 5205, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
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
                              : ^( OBJECT_NAME
                                   identifier )             { $name = $identifier.name; }
                              ;


objectReference
returns [Object object_declaration]
                              : optionalDomainReference
                                objectName                  
                                                            { 
                                                              try {
                                                                $object_declaration = loader.call_function( "select_ObjectDeclaration_where_name", $optionalDomainReference.domainname, $objectName.name );
                                                                assert null != $object_declaration : "did not find obuect decl";
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

fullObjectReference
returns [Object object_declaration]
                              : domainReference
                                objectName                  
                                                            { 
                                                              try {
                                                                $object_declaration = loader.call_function( "select_ObjectDeclaration_where_name", $domainReference.domainname, $objectName.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;


optionalObjectReference
returns [Object object_declaration]
                              : objectReference             { $object_declaration = $objectReference.object_declaration; }
                              | /* blank */                 { $object_declaration = current_object; }
                              ;
attributeName
returns [String name]
                              : ^( ATTRIBUTE_NAME
                                   identifier )             { $name = $identifier.name; }
                              ;

objectDeclaration
returns [Object object_declaration]
                              : ^( OBJECT_DECLARATION
                                   objectName
                                                            {
                                                              try {
                                                                $object_declaration = loader.create( "ObjectDeclaration" );
                                                                loader.set_attribute( $object_declaration, "name", $objectName.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   pragmaList
                                 )                          
                              ;


objectDefinition
returns [Object object_declaration]
@init{ Object previousattribute = null; boolean non_existent_exists = false; }
@after{ current_object = empty_object; }
                              : ^( OBJECT_DEFINITION
                                   objectName               
                                                            {
                                                              try {
                                                                $object_declaration = loader.call_function( "select_ObjectDeclaration_where_name", "", $objectName.name );
                                                                loader.set_attribute( $object_declaration, "name", $objectName.name );
                                                                current_object = $object_declaration;
                                                                non_existent_exists = false;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( attributeDefinition [previousattribute]      
                                                            {
                                                              try {
                                                                loader.relate( $attributeDefinition.attribute_declaration, $object_declaration, 5802, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              previousattribute = $attributeDefinition.attribute_declaration;
                                                            }
                                   | identifierDefinition   // creates and relates in subrule
                                   | objectServiceDeclaration 
                                                            {
                                                              try {
                                                                loader.relate( $objectServiceDeclaration.object_service, $object_declaration, 5808, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | eventDefinition          
                                                            {
                                                              try {
                                                                loader.relate( $eventDefinition.event_declaration, $object_declaration, 6101, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | stateDeclaration         
                                                            {
                                                              try {
                                                                if ( false == non_existent_exists ) {
                                                                  // Create a Non_Existent state.
                                                                  Object ooastate = loader.create( "State" );
                                                                  loader.set_attribute( ooastate, "name", "Non_Existent" );
                                                                  loader.relate( ooastate, $object_declaration, 6105, "" );
                                                                  non_existent_exists = true;
                                                                }
                                                                loader.relate( $stateDeclaration.ooastate, $object_declaration, 6105, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | transitionTable          
                                                            {
                                                              try {
                                                                loader.relate( $transitionTable.transition_table, $object_declaration, 6113, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
                                                            {
                                                              try {
                                                                $attribute_declaration = loader.create( "AttributeDeclaration" );
                                                                loader.set_attribute( $attribute_declaration, "name", $attributeName.name );
                                                                if ( $PREFERRED != null ) {
                                                                  loader.set_attribute( $attribute_declaration, "isPreferredIdentifier", false );
                                                                } else {
                                                                  loader.set_attribute( $attribute_declaration, "isPreferredIdentifier", true );
                                                                  // TODO Be sure we create it only for the first occurrence of the preferred key word.
                                                                  // still not linking to ObjectDeclaration and being sure only one...
                                                                  Object identifier_declaration = loader.create( "IdentifierDeclaration" );
                                                                  loader.set_attribute( identifier_declaration, "ispreferred", true );
                                                                  loader.relate( $attribute_declaration, identifier_declaration, 5807, "" );
                                                                }
                                                                if ( null != $UNIQUE ) {
                                                                  loader.set_attribute( $attribute_declaration, "isUnique", true );
                                                                } else {
                                                                  loader.set_attribute( $attribute_declaration, "isUnique", false );
                                                                }
                                                                if ( null != previousattribute ) {
                                                                  loader.relate( $attributeDefinition.attribute_declaration, $previousattribute, 5809, "succeeds" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( attReferential [$attribute_declaration]
                                   )*
                                   description
                                   typeReference
                                                            {
                                                              try {
                                                                loader.relate( $attribute_declaration, $typeReference.basic_type, 5803, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   (expression
                                                            {
                                                              try {
                                                                loader.relate( $attribute_declaration, $expression.expression, 5801, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
                                                            {
                                                              try {
                                                                $referential_attribute_definition = loader.create( "ReferentialAttributeDefinition" );
                                                                loader.set_attribute( $referential_attribute_definition, "name", $attributeName.name );
                                                                // Link referential to itself until after all objects and attributes have been created.
                                                                loader.relate_using( $attribute_declaration, $attribute_declaration, $referential_attribute_definition, 5800, "refers_to" );
                                                                loader.relate( $referential_attribute_definition, $relationshipSpec.relationship_specification, 5811, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;


relationshipSpec[Object object_declaration, boolean allow_assoc, boolean force_assoc]
returns [Object relationship_specification, Object basic_type]
@init{ String object_or_role = ""; Object to_object = empty_object; }
                              : ^( RELATIONSHIP_SPEC
                                   relationshipReference    
                                   ( objOrRole              { object_or_role = $objOrRole.name; }
                                   ( objectReference        { to_object = $objectReference.object_declaration; }
                                   )? 
                                   )?
                                 )                          {
                                                              try {
                                                                $relationship_specification = loader.call_function( "create_RelationshipSpecification", $relationshipReference.relationship_declaration, $object_declaration, object_or_role, to_object, $allow_assoc, $force_assoc );
                                                                // TODO - know about whether we need a set or not
                                                                if (((IModelInstance)to_object).isEmpty()) {
                                                                  to_object = loader.call_function( "select_ObjectDeclaration_where_name", "", object_or_role );
                                                                }
                                                                $basic_type = loader.call_function( "select_create_InstanceType", to_object, false );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

objOrRole
returns [String name]
                              : identifier                  { $name = $identifier.name; }
                              ;


objectServiceDeclaration
returns [Object object_service]
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
                                                                loader.set_attribute( service, "visibility", $serviceVisibility.visibility );
                                                                $object_service = loader.create( "ObjectService" );
                                                                loader.relate( $object_service, service, 5203, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   description
                                   parameterList
                                                            {
                                                              if ( null != $parameterList.firstparameter ) {
                                                                try {
                                                                  loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                                            }
                                   ( returnType
                                                            {
                                                              try {
                                                                if ( null != $returnType.type ) {
                                                                  loader.relate( $returnType.type, service, 5205, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )?
                                   pragmaList
                                 )                          
                              ;


identifierDefinition
returns [Object identifier_declaration]
                              : ^( IDENTIFIER
                                                            {
                                                              try {
                                                                $identifier_declaration = loader.create( "IdentifierDeclaration" );
                                                                loader.set_attribute( $identifier_declaration, "ispreferred", false );
                                                                loader.relate( $identifier_declaration, current_object, 5804, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( attributeName
                                                            {
                                                              try {
                                                                Object attribute_declaration = loader.call_function( "select_AttributeDeclaration_related_where_name", current_object, $attributeName.name );
                                                                loader.relate( attribute_declaration, identifier_declaration, 5807, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
                                                            {
                                                              try {
                                                                $event_declaration = loader.create( "EventDeclaration" );
                                                                loader.set_attribute( $event_declaration, "name", $eventName.name );
                                                                if ( "assigner" == $eventType.type ) {
                                                                  loader.set_attribute( $event_declaration, "flavor", "EventType::assigner" );
                                                                } else if ( "creation" == $eventType.type ) {
                                                                  loader.set_attribute( $event_declaration, "flavor", "EventType::creation" );
                                                                } else {
                                                                  loader.set_attribute( $event_declaration, "flavor", "EventType::normal" );
                                                                }
                                                                if ( null != $parameterList.firstparameter ) {
                                                                  loader.relate( $event_declaration, $parameterList.firstparameter, 6100, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

eventName
returns [String name]
                              : ^( EVENT_NAME
                                   identifier )             { $name = $identifier.name; }
                              ;

eventType
returns [String type]
                              : ASSIGNER                    { $type = $ASSIGNER.text; }
                              | CREATION                    { $type = $CREATION.text; }
                              | NORMAL                      { $type = ""; }
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
                                                            {
                                                              try {
                                                                $ooastate = loader.create( "State" );
                                                                loader.set_attribute( $ooastate, "name", $stateName.name );
                                                                if ( "assigner" == $stateType.type ) {
                                                                  loader.set_attribute( $ooastate, "flavor", "StateType::assigner" );
                                                                } else if ( "start" == $stateType.type ) {
                                                                  loader.set_attribute( $ooastate, "flavor", "StateType::assigner_start" );
                                                                } else if ( "creation" == $stateType.type ) {
                                                                  loader.set_attribute( $ooastate, "flavor", "StateType::creation" );
                                                                } else if ( "terminal" == $stateType.type ) {
                                                                  loader.set_attribute( $ooastate, "flavor", "StateType::terminal" );
                                                                } else {
                                                                  loader.set_attribute( $ooastate, "flavor", "StateType::normal" );
                                                                }
                                                                if ( null != $parameterList.firstparameter ) {
                                                                  loader.relate( $ooastate, $parameterList.firstparameter, 6104, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

stateName
returns [String name]
                              : ^( STATE_NAME
                                   identifier )             { $name = $identifier.name; }
                              ;

stateType
returns [String type]
                              : ASSIGNER                    { $type = $ASSIGNER.text; }
                              | START                       { $type = $START.text; }
                              | CREATION                    { $type = $CREATION.text; }
                              | TERMINAL                    { $type = $TERMINAL.text; }
                              | NORMAL                      { $type = ""; }
                              ;


transitionTable
returns [Object transition_table]
                              : ^( TRANSITION_TABLE
                                   transTableType
                                                            {
                                                              try {
                                                                $transition_table = loader.create( "TransitionTable" );
                                                                loader.set_attribute( $transition_table, "isassigner", $transTableType.isassigner );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( transitionRow          
                                                            {
                                                              try {
                                                                loader.relate( $transitionRow.transition_row, $transition_table, 6114, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )+
                                   pragmaList
                                 )                          
                              ;


transTableType
returns [boolean isassigner]
                              : ASSIGNER                    { $isassigner = true; }
                              | NORMAL                      { $isassigner = false; }
                              ;

transitionRow
returns [Object transition_row]
                              : ^( TRANSITION_ROW
                                   startState
                                                            {
                                                              try {
                                                                $transition_row = loader.create( "TransitionRow" );
                                                                Object ooastate = loader.call_function( "select_State_where_name", current_object, $startState.name );
                                                                loader.relate( ooastate, $transition_row, 6111, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( transitionOption
                                                            {
                                                              try {
                                                                loader.relate( $transitionOption.transition_option, $transition_row, 6112, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )+
                                   pragmaList
                                )                           
                              ;

transitionOption
returns [Object transition_option]
                              : ^( TRANSITION_OPTION
                                   incomingEvent
                                   endState
                                 )                          {
                                                              try {
                                                                $transition_option = loader.create( "TransitionOption" );
                                                                loader.set_attribute( $transition_option, "flavor", $endState.transition_type );
                                                                loader.relate( $incomingEvent.event_declaration, $transition_option, 6108, "" );
                                                                if ( "TransitionType::to_state" == $endState.transition_type ) {
                                                                  Object ooastate = loader.call_function( "select_State_where_name", current_object, $endState.name );
                                                                  loader.relate( ooastate, $transition_option, 6109, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

incomingEvent
returns [Object event_declaration]
                              : ^( EVENT
                                   eventReference           { $event_declaration = $eventReference.event_declaration; }
                                 )
                              ;

startState
returns [String name]
                              : NON_EXISTENT                { $name = $NON_EXISTENT.text; }
                              | stateName                   { $name = $stateName.name; }
                              ;

endState
returns [String name, String transition_type]
                              : stateName                   { $transition_type = "TransitionType::to_state"; $name = $stateName.name; }
                              | IGNORE                      { $transition_type = "TransitionType::ignore"; $name = ""; }
                              | CANNOT_HAPPEN               { $transition_type = "TransitionType::cannot_happen"; $name = ""; }
                              ;

eventReference
returns [Object event_declaration]
                              : optionalObjectReference
                                eventName                   
                                                            {
                                                              try {
                                                                $event_declaration = loader.call_function( "select_EventDeclaration_where_name", $optionalObjectReference.object_declaration, $eventName.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;


//---------------------------------------------------------
// Service Declaration
//---------------------------------------------------------

domainServiceDeclaration
returns [Object domain_service]
@init{ Object service = null; }
                              : ^( DOMAIN_SERVICE_DECLARATION
                                   serviceVisibility
                                   serviceName
                                   description
                                   parameterList
                                                            {
                                                              try {
                                                                service = loader.create( "Service" );
                                                                current_service = service;
                                                                loader.set_attribute( service, "name", $serviceName.name );
                                                                loader.set_attribute( service, "visibility", $serviceVisibility.visibility );
                                                                $domain_service = loader.create( "DomainService" );
                                                                loader.relate( $domain_service, service, 5203, "" );
                                                                if ( null != $parameterList.firstparameter ) {
                                                                  loader.relate( $parameterList.firstparameter, service, 5204, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( returnType
                                                            {
                                                              try {
                                                                if ( null != $returnType.type ) {
                                                                  loader.relate( $returnType.type, service, 5205, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
                                                            {
                                                              try {
                                                                $parameter = loader.create( "ParameterDefinition" );
                                                                loader.set_attribute( $parameter, "name", $parameterName.name );
                                                                loader.set_attribute( $parameter, "mode", $parameterMode.parameter_mode );
                                                                loader.relate( $parameterType.type, $parameter, 5200, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                )           
                              ;
                              
parameterList
returns [Object firstparameter]
@init { Object previousparameter = null; }
                              : ( parameterDefinition       { 
                                                              if ( null == previousparameter ) {
                                                                firstparameter = $parameterDefinition.parameter;
                                                              } else {
                                                                try {
                                                                  loader.relate( $parameterDefinition.parameter, previousparameter, 5208, "succeeds" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                                              previousparameter = $parameterDefinition.parameter;
                                                            }
                               )*
                              ;


serviceVisibility
returns [String visibility]
                              : PRIVATE                     { $visibility = "Visibility::private"; }
                              | PUBLIC                      { $visibility = "Visibility::public"; }
                              ;

parameterMode
returns [String parameter_mode]
                              : IN                          { $parameter_mode = "ParameterMode::in"; }
                              | OUT                         { $parameter_mode = "ParameterMode::out"; }
                              ;


serviceName
returns [String name]
                              : ^( SERVICE_NAME
                                   identifier )             { $name = $identifier.name; }
                              ;

parameterName
returns [String name]
                              : ^( PARAMETER_NAME
                                   identifier )             { $name = $identifier.name; }
                              ;

parameterType
returns [Object type]
                              : ^( PARAMETER_TYPE
                                   typeReference )            { $type = $typeReference.basic_type; }
                              ;

returnType
returns [Object type]
                              : ^( RETURN_TYPE
                                   typeReference )            { $type = $typeReference.basic_type; }
                              ;


//---------------------------------------------------------
// Relationship Definition
//---------------------------------------------------------


relationshipDefinition
returns [Object relationship_declaration]
@init                                                       {
                                                              try {
                                                                $relationship_declaration = loader.create( "RelationshipDeclaration" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              : regularRelationshipDefinition
                                                            {
                                                              try {
                                                                loader.relate( $regularRelationshipDefinition.normal_relationship_declaration, $relationship_declaration, 6010, "" );
                                                                loader.set_attribute( $relationship_declaration, "name", $regularRelationshipDefinition.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | assocRelationshipDefinition   
                                                            {
                                                              try {
                                                                loader.relate( $assocRelationshipDefinition.associative_relationship_declaration, $relationship_declaration, 6010, "" );
                                                                loader.set_attribute( $relationship_declaration, "name", $assocRelationshipDefinition.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | subtypeRelationshipDefinition 
                                                            {
                                                              try {
                                                                loader.relate( $subtypeRelationshipDefinition.subtype_relationship_declaration, $relationship_declaration, 6010, "" );
                                                                loader.set_attribute( $relationship_declaration, "name", $subtypeRelationshipDefinition.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;



regularRelationshipDefinition
returns [Object normal_relationship_declaration, String name]
                              : ^( REGULAR_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   leftToRight=halfRelationshipDefinition
                                   rightToLeft=halfRelationshipDefinition
                                   pragmaList
                                 )                          {
                                                              try {
                                                                $normal_relationship_declaration = loader.create( "NormalRelationshipDeclaration" );
                                                                $name = $relationshipName.name;
                                                                loader.relate( $leftToRight.half_relationship, $normal_relationship_declaration, 6007, "" );
                                                                loader.relate( $rightToLeft.half_relationship, $normal_relationship_declaration, 6008, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
                                 )                          {
                                                              try {
                                                                $associative_relationship_declaration = loader.create( "AssociativeRelationshipDeclaration" );
                                                                $name = $relationshipName.name;
                                                                loader.relate( $leftToRight.half_relationship, $associative_relationship_declaration, 6000, "" );
                                                                loader.relate( $rightToLeft.half_relationship, $associative_relationship_declaration, 6002, "" );
                                                                loader.relate( $assocObj.object_declaration, $associative_relationship_declaration, 6001, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

halfRelationshipDefinition
returns [Object half_relationship]
                              : ^( HALF_RELATIONSHIP
                                   from=objectReference
                                   conditionality
                                   rolePhrase
                                   multiplicity
                                   to=objectReference
                                 )                          {
                                                              try {
                                                                $half_relationship = loader.create( "HalfRelationship" );
                                                                loader.set_attribute( $half_relationship, "isconditional", $conditionality.isconditional );
                                                                loader.set_attribute( $half_relationship, "role", $rolePhrase.role );
                                                                loader.set_attribute( $half_relationship, "multiplicity", $multiplicity.multiplicity );
                                                                loader.relate( $from.object_declaration, $half_relationship, 6006, "" );
                                                                loader.relate( $to.object_declaration, $half_relationship, 6004, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;


subtypeRelationshipDefinition
returns [Object subtype_relationship_declaration, String name]
                              : ^( SUBTYPE_RELATIONSHIP_DEFINITION
                                   relationshipName
                                   description
                                   supertype=objectReference
                                                            {
                                                              try {
                                                                $subtype_relationship_declaration = loader.create( "SubtypeRelationshipDeclaration" );
                                                                $name = $relationshipName.name;
                                                                loader.relate( $supertype.object_declaration, $subtype_relationship_declaration, 6017, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   (subtype=objectReference
                                                            {
                                                              try {
                                                                loader.relate( $subtype.object_declaration, $subtype_relationship_declaration, 6016, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
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
returns [boolean isconditional]
                              : UNCONDITIONALLY             { $isconditional = false; }
                              | CONDITIONALLY               { $isconditional = true; }
                              ;

multiplicity
returns [String multiplicity]
                              : ONE                         { $multiplicity = "Multiplicity::one"; }
                              | MANY                        { $multiplicity = "Multiplicity::many"; }
                              ;


relationshipName
returns [String name]
                              : ^( RELATIONSHIP_NAME
                                   RelationshipName  
                                 )                          { $name = $RelationshipName.text; }
                              ;
                              

relationshipReference
returns [Object relationship_declaration]
                              : optionalDomainReference
                                relationshipName            
                                                            {
                                                              try {
                                                                $relationship_declaration = loader.call_function( "select_RelationshipDeclaration_where_name", $optionalDomainReference.domainname, $relationshipName.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
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
                                 )
                              ;

//---------------------------------------------------------
// Dynamic Behaviour
//---------------------------------------------------------

/*  This rule has been added to allow to parse any activity action body file
    without knowledge of what type of activity it contained - LPS */

activityDefinition
@init{ try { empty_object = loader.call_function( "select_ObjectDeclaration_where_name", "false", "false" );
           } catch ( XtumlException e ) { xtuml_trace( e, "" ); } }
                              : domainServiceDefinition
                              | terminatorServiceDefinition
                              | objectServiceDefinition
                              | stateDefinition
                              ;


domainServiceDefinition
returns [Object service]
@init{ Object code_block = empty_code_block; }
                              : ^( DOMAIN_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   serviceName
                                   parameterList
                                   returnType?
                                                            {
                                                              try {
                                                                // TODO - must deal with overloading by including parameter list in identification.
                                                                code_block = loader.create( "CodeBlock" );
                                                                $service = loader.call_function( "select_Service_where_name", $domainReference.domainname, $serviceName.name );
                                                                current_service = $service;
                                                                loader.relate( code_block, $service, 5403, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock[code_block]
                                   pragmaList
                                 )
                              ;


terminatorServiceDefinition
returns [Object service]
@init{ Object code_block = empty_code_block; }
                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                   parameterList
                                   returnType?
                                                            {
                                                              try {
                                                                code_block = loader.create( "CodeBlock" );
                                                                $service = loader.call_function( "select_DomainTerminatorService_where_name", $domainReference.domainname, $terminatorName.terminatorname, $serviceName.name );
                                                                current_service = $service;
                                                                loader.relate( code_block, $service, 5403, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock[code_block]
                                   pragmaList
                                 )
                              ;


projectTerminatorServiceDefinition
returns [Object service]
@init{ Object code_block = empty_code_block; }
                              : ^( TERMINATOR_SERVICE_DEFINITION
                                   serviceVisibility
                                   domainReference
                                   terminatorName
                                   serviceName
                                   parameterList
                                   returnType?
                                                            {
                                                              try {
                                                                code_block = loader.create( "CodeBlock" );
                                                                $service = loader.call_function( "select_ProjectTerminatorService_where_name", $domainReference.domainname, $terminatorName.terminatorname, $serviceName.name );
                                                                current_service = $service;
                                                                loader.relate( code_block, $service, 5403, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock[code_block]
                                   pragmaList
                                 )
                              ;



objectServiceDefinition
returns [Object service]
@init{ Object code_block = empty_code_block; }
@after{ current_object = empty_object; }
                              : ^( OBJECT_SERVICE_DEFINITION
                                   serviceVisibility
                                   INSTANCE?
                                   fullObjectReference
                                   serviceName
                                   parameterList
                                   returnType?
                                                            {
                                                              try {
                                                                code_block = loader.create( "CodeBlock" );
                                                                $service = loader.call_function( "select_ObjectService_where_name", $fullObjectReference.object_declaration, $serviceName.name );
                                                                current_service = $service;
                                                                loader.relate( code_block, $service, 5403, "" );
                                                                current_object = $fullObjectReference.object_declaration;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock[code_block]
                                   pragmaList
                                 )
                              ;


stateDefinition
returns [Object ooastate]
@init{ Object code_block = empty_code_block; }
@after{ current_object = empty_object; }
                              : ^( STATE_DEFINITION
                                   stateType
                                   fullObjectReference
                                   stateName
                                   parameterList
                                                            {
                                                              try {
                                                                code_block = loader.create( "CodeBlock" );
                                                                ooastate = loader.call_function( "select_State_related_where_name", $fullObjectReference.object_declaration, $stateName.name );
                                                                loader.relate( code_block, ooastate, 6115, "" );
                                                                current_object = $fullObjectReference.object_declaration;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   codeBlock[code_block]
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
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              Object code_block = empty_code_block;
                                                            }
                              : ^( STATEMENT
                                   ( codeBlock[code_block]  // In MASL, codeBlock is never a child of statement.
                                   | assignmentStatement    
                                                            {
                                                              try {
                                                                loader.relate( $assignmentStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | streamStatement        
                                                            {
                                                              try {
                                                                loader.relate( $streamStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | callStatement          
                                                            {
                                                              try {
                                                                loader.relate( $callStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | exitStatement          
                                                            {
                                                              try {
                                                                loader.relate( $exitStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | returnStatement        
                                                            {
                                                              try {
                                                                loader.relate( $returnStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | delayStatement         
                                                            {
                                                              try {
                                                                loader.relate( $delayStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | raiseStatement         
                                                            {
                                                              try {
                                                                loader.relate( $raiseStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | deleteStatement        
                                                            {
                                                              try {
                                                                loader.relate( $deleteStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | eraseStatement         
                                                            {
                                                              try {
                                                                loader.relate( $eraseStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | linkStatement          
                                                            {
                                                              try {
                                                                loader.relate( $linkStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | scheduleStatement      
                                                            {
                                                              try {
                                                                loader.relate( $scheduleStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | cancelTimerStatement   
                                                            {
                                                              try {
                                                                loader.relate( $cancelTimerStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | generateStatement      
                                                            {
                                                              try {
                                                                loader.relate( $generateStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | ifStatement            
                                                            {
                                                              try {
                                                                assert ( $ifStatement.st != null && $st != null ) : "ifStatement";
                                                                loader.relate( $ifStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | caseStatement          
                                                            {
                                                              try {
                                                                loader.relate( $caseStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | forStatement           
                                                            {
                                                              try {
                                                                loader.relate( $forStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   | whileStatement         
                                                            {
                                                              try {
                                                                loader.relate( $whileStatement.st, $st, 5135, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   |                        
                                   )
                                   pragmaList
                                 )
                              ;

statementList
returns [Object st]
@init { Object previousstatement = null; }
                              : ^( STATEMENT_LIST
                                   ( statement              {
                                                              if ( null == previousstatement ) {
                                                                st = $statement.st;
                                                              } else {
                                                                try {
                                                                  loader.relate( $statement.st, previousstatement, 5155, "succeeds" );
                                                                } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                              }
                                                              previousstatement = $statement.st;
                                                            }
                                   )*
                                 )
                              ;


assignmentStatement
returns [Object st]
                              : ^( ASSIGN
                                   lhs=expression rhs=expression
                                 )                          {
                                                              try {
                                                                $st = loader.create( "AssignmentStatement" );
                                                                loader.relate( $lhs.expression, $st, 5101, "" );
                                                                loader.relate( $rhs.expression, $st, 5100, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

streamStatement
returns [Object st]
@init                                                       {
                                                              try {
                                                                $st = loader.create( "IOStreamStatement" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }

                              : ^( STREAM_STATEMENT
                                   expression
                                                            {
                                                              try {
                                                                loader.relate( $expression.expression, $st, 5156, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( streamOperator         
                                                            {
                                                              try {
                                                                loader.relate( $streamOperator.expression, $st, 5115, "" );
                                                                // TODO - I am not sure what to do with multiple different operators.
                                                                loader.set_attribute( $st, "operator", $streamOperator.op );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )+
                                 )                          
                              ;

streamOperator
returns [String op, Object expression]
                              : ^( ( STREAM_IN              { $op = "IOop::in"; }
                                   | STREAM_OUT             { $op = "IOop::out"; }
                                   | STREAM_LINE_IN         { $op = "IOop::linein"; }
                                   | STREAM_LINE_OUT        { $op = "IOop::lineout"; }
                                   ) expression             { $expression = $expression.expression; }
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
@init{ Object previousalternative = null; }
                              : ^( IF
                                   condition
                                   statementList            
                                                            {
                                                              try {
                                                                $st = loader.create( "IfStatement" );
                                                                loader.relate( $condition.expression, $st, 5143, "" );
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $st, 5144, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( elsifBlock             
                                                            {
                                                              try {
                                                                assert ( $elsifBlock.alternative != null && $st != null ) : "ifStatement elif block";
                                                                loader.relate( $elsifBlock.alternative, $st, 5145, "" );
                                                                if ( null != previousalternative ) {
                                                                  loader.relate( $elsifBlock.alternative, previousalternative, 5158, "succeeds" );
                                                                }
                                                                previousalternative = $elsifBlock.alternative;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )*              
                                   ( elseBlock              
                                                            {
                                                              try {
                                                                assert ( $elseBlock.alternative != null && $st != null ) : "ifStatement else block";
                                                                loader.relate( $elseBlock.alternative, $st, 5145, "" );
                                                                if ( null != previousalternative ) {
                                                                  loader.relate( $elsifBlock.alternative, previousalternative, 5158, "succeeds" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   )?
                                 )                          
                              ;


elsifBlock
returns [Object alternative]
                              : ^( ELSIF
                                   condition
                                   statementList )          
                                                            {
                                                              try {
                                                                $alternative = loader.create( "Alternative" );
                                                                loader.set_attribute( $alternative, "else_otherwise", false );
                                                                loader.relate( $condition.expression, $alternative, 5147, "" );
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $alternative, 5148, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ;

elseBlock
returns [Object alternative]
                              : ^( ELSE
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

codeBlock[Object code_block]
@init{ current_code_block = $code_block; }
@after { current_code_block = empty_code_block; }
                              : ^( CODE_BLOCK
                                  ( variableDeclaration     
                                                            {
                                                              try {
                                                                loader.relate( $variableDeclaration.variable_definition, $code_block, 5151, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                  )*     
                                   statementList
                                                            {
                                                              try {
                                                                if ( null != $statementList.st ) {
                                                                  loader.relate( $statementList.st, $code_block, 5150, "" );
                                                                }
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                  ( exceptionHandler
                                                            {
                                                              try {
                                                                loader.relate( $exceptionHandler.handler, code_block, 5149, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                  )*
                                  ( otherHandler            
                                                            {
                                                              try {
                                                                loader.relate( $exceptionHandler.handler, code_block, 5149, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                  )?
                                )
                              ;



variableDeclaration
returns [Object variable_definition]
                              : ^( VARIABLE_DECLARATION
                                   variableName
                                   READONLY?
                                   typeReference
                                                            {
                                                              try {
                                                                $variable_definition = loader.create( "VariableDefinition" );
                                                                loader.set_attribute( $variable_definition, "name", $variableName.name );
                                                                loader.set_attribute( $variable_definition, "isreadonly", ( null != $READONLY ) );
                                                                loader.relate( $typeReference.basic_type, $variable_definition, 5137, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   (expression
                                                            {
                                                              try {
                                                                loader.relate( $expression.expression, $variable_definition, 5138, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
                                                            {
                                                              try {
                                                                loader.relate( $createExpression.create_expression, $expression, 5517, "" );
                                                                $basic_type = $createExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
                                                            {
                                                              try {
                                                                loader.relate( $literalExpression.literal_expression, $expression, 5517, "" );
                                                                $basic_type = $literalExpression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "expression:literalExpression" ); }
                                                            }
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
                                                              try {
                                                                loader.relate( $whereClause.expression, $navigation_expression, 5530, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
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
  boolean instances = true;
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
                                                                loader.set_attribute( $ordering_expression, "isreverse", isreverse );
                                                                loader.relate( $expression.expression, $ordering_expression, 5535, "" );
                                                                // TODO need to determine if expression is collection of instances
                                                                // (sequence of instances, or find) or sequence of structures.
                                                                // select one find_expression related by $expression.expression->FindExpression[R5517]
                                                                // if ( not_empty find_expression ) ...
                                                                // This will need its own function.
                                                                // TODO is reverse on each component or only at the top expression?
                                                                if ( instances ) {
                                                                  instance_ordering_expression = loader.create( "InstanceOrderingExpression" );
                                                                  loader.relate( instance_ordering_expression, $ordering_expression, 5534, "" );
                                                                } else {
                                                                  structure_ordering_expression = loader.create( "StructureOrderingExpression" );
                                                                  loader.relate( structure_ordering_expression, $ordering_expression, 5534, "" );
                                                                }
                                                                $basic_type = $expression.basic_type;
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                                   ( sortOrder              
                                                            {
                                                              try {
                                                                if ( $sortOrder.isreverse ) {
                                                                  loader.set_attribute( $ordering_expression, "isreverse", true );
                                                                }
                                                                if ( instances ) {
                                                                  // TODO select_attribute_declaration...
                                                                  // TODO Get the class from the instance, then get the attribute
                                                                  // from the name.
                                                                  Object attribute_declaration = null;
                                                                  loader.relate( instance_ordering_expression, attribute_declaration, 5563, "" );
                                                                } else {
                                                                  // TODO select_structure_element...
                                                                  // TODO Get the structure from the collection, then get the element
                                                                  // from the name.
                                                                  Object structure_element = null;
                                                                  loader.relate( structure_ordering_expression, structure_element, 5564, "" );
                                                                }
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
                                                            {
                                                              try {
                                                                $create_expression = loader.create( "CreateExpression" );
                                                                loader.relate( $objectReference.object_declaration, $create_expression, 5511, "" );
                                                                $basic_type = loader.call_function( "select_create_InstanceType", $objectReference.object_declaration, false );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
@init                                                       {
                                                              try {
                                                                $attribute_initialization = loader.create( "AttributeInitialization" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              : ^( CREATE_ARGUMENT
                                   attributeName
                                   expression )              
                                                            {
                                                              try {
                                                                Object attribute_declaration = loader.call_function( "select_AttributeDeclaration_related_where_name", $object_declaration, $attributeName.name );
                                                                loader.relate( attribute_declaration, $attribute_initialization, 5565, "" );
                                                                loader.relate( $expression.expression, $attribute_initialization, 5568, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | ^( CURRENT_STATE
                                   stateName
                                                            {
                                                              try {
                                                                Object ooastate = loader.call_function( "select_State_related_where_name", $object_declaration, $stateName.name );
                                                                loader.relate( ooastate, $attribute_initialization, 5567, "" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
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
                                 )                          {
                                                              try {
                                                                $basic_type = loader.call_function( "create_DotExpression", $expression.expression, $lhs.expression, $identifier.name );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "dotExpression" ); }
                                                            }
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
@init                                                       {
                                                              try {
                                                                $literal_expression = loader.create( "LiteralExpression" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              : IntegerLiteral
                                                            {
                                                              try {
                                                                int value = 0; // TODO probably needs to be long
                                                                Object numeric_literal = loader.create( "NumericLiteral" );
                                                                loader.relate( numeric_literal, $literal_expression, 5700, "" );
                                                                loader.set_attribute( numeric_literal, "text", $IntegerLiteral.text );
                                                                Object integer_literal = loader.create( "IntegerLiteral" );
                                                                loader.relate( integer_literal, numeric_literal, 5703, "" );
                                                                try {
                                                                  value = Integer.parseInt( $IntegerLiteral.text );
                                                                } catch ( NumberFormatException e ) { System.err.println( e ); }
                                                                loader.set_attribute( integer_literal, "value", value );
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "integer" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | RealLiteral
                                                            {
                                                              try {
                                                                Double value = 0.0;
                                                                Object numeric_literal = loader.create( "NumericLiteral" );
                                                                loader.relate( numeric_literal, $literal_expression, 5700, "" );
                                                                loader.set_attribute( numeric_literal, "text", $RealLiteral.text );
                                                                Object real_literal = loader.create( "RealLiteral" );
                                                                loader.relate( real_literal, numeric_literal, 5703, "" );
                                                                try {
                                                                  value = Double.parseDouble( $RealLiteral.text );
                                                                } catch ( NumberFormatException e ) { System.err.println( e ); }
                                                                loader.set_attribute( real_literal, "value", value );
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "real" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | CharacterLiteral
                                                            {
                                                              try {
                                                                Object character_literal = loader.create( "CharacterLiteral" );
                                                                loader.relate( character_literal, $literal_expression, 5700, "" );
                                                                loader.set_attribute( character_literal, "original", $CharacterLiteral.text );
                                                                // TODO - This is simplistic and needs to be extended to handle octal.
                                                                //TODOloader.set_attribute( character_literal, "noQuotes", $CharacterLiteral.text.replaceAll("^\"|\"$", "") );
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "character" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | StringLiteral
                                                            {
                                                              try {
                                                                Object string_literal = loader.create( "StringLiteral" );
                                                                loader.relate( string_literal, $literal_expression, 5700, "" );
                                                                loader.set_attribute( string_literal, "original", $StringLiteral.text );
                                                                // TODO - This is simplistic and needs to be extended to handle octal.
                                                                //TODOloader.set_attribute( string_literal, "noQuotes", $StringLiteral.text.replaceAll("^\"|\"$", "") );
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "string" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | TimestampLiteral
                                                            {
                                                              try {
                                                                Object timestamp_literal = loader.create( "TimestampLiteral" );
                                                                loader.relate( timestamp_literal, $literal_expression, 5700, "" );
                                                                loader.set_attribute( timestamp_literal, "original", $TimestampLiteral.text );
                                                                // TODO - need to implement conversion.
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "timestamp" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | DurationLiteral
                                                            {
                                                              try {
                                                                Object duration_literal = loader.create( "DurationLiteral" );
                                                                loader.relate( duration_literal, $literal_expression, 5700, "" );
                                                                loader.set_attribute( duration_literal, "literal", $DurationLiteral.text );
                                                                // TODO - need to implement conversion.
                                                                // TODO - maybe need to promote original to supertype LiteralExpression
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "duration" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | TRUE
                                                            {
                                                              try {
                                                                Object boolean_literal = loader.create( "BooleanLiteral" );
                                                                loader.relate( boolean_literal, $literal_expression, 5700, "" );
                                                                loader.set_attribute( boolean_literal, "value", Boolean.valueOf( "true" ) );
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "boolean" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | FALSE
                                                            {
                                                              try {
                                                                Object boolean_literal = loader.create( "BooleanLiteral" );
                                                                loader.relate( boolean_literal, $literal_expression, 5700, "" );
                                                                loader.set_attribute( boolean_literal, "value", Boolean.valueOf( "false" ) );
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "boolean" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | NULL
                                                            {
                                                              try {
                                                                Object null_literal = loader.create( "NullLiteral" );
                                                                loader.relate( null_literal, $literal_expression, 5700, "" );
                                                                Object basic_type = loader.call_function( "select_BasicType_where_name", "", "instance" );
                                                                loader.relate( null_literal, basic_type, 5702, "" );
                                                                // TODO instance
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "instance" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | FLUSH
                                                            {
                                                              try {
                                                                Object flush_literal = loader.create( "FlushLiteral" );
                                                                loader.relate( flush_literal, $literal_expression, 5700, "" );
                                                                // TODO instance
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "instance" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | ENDL
                                                            {
                                                              try {
                                                                Object endl_literal = loader.create( "EndlLiteral" );
                                                                loader.relate( endl_literal, $literal_expression, 5700, "" );
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "character" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | THIS
                                                            {
                                                              try {
                                                                Object this_literal = loader.create( "ThisLiteral" );
                                                                loader.relate( this_literal, $literal_expression, 5700, "" );
                                                                $basic_type = loader.call_function( "select_create_InstanceType", current_object, false );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              | CONSOLE
                                                            {
                                                              try {
                                                                Object console_literal = loader.create( "ConsoleLiteral" );
                                                                loader.relate( console_literal, $literal_expression, 5700, "" );
                                                                $basic_type = loader.call_function( "select_BasicType_where_name", "", "device" );
                                                              } catch ( XtumlException e ) { xtuml_trace( e, "" ); }
                                                            }
                              ; 
