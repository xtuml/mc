grammar Wasl;

 @header
{
import java.io.File;
}
@annotations
{
@SuppressWarnings("all")
}
@members
{
private ErrorHandler handler = null;
private Serial serial = null;
private WaslImportParser wasl_parser = null;
private String[] args = new String[8];
private File dir;
private boolean populateEnabled;
private RelationshipCache relCache;

public void setInterface ( Serial serial ) {
    if ( serial != null )
        this.serial = serial;
    else
        this.serial = null;
    for ( int i = 0; i < args.length; i++ ) args[i] = "";
    populateEnabled = true;
}

public void setWaslParser( WaslImportParser p ) {
    if ( p != null )
        this.wasl_parser = p;
    else
        this.wasl_parser = null;
}

private void populate( String classname ) {
    if ( classname == null ) {
        System.err.println( "Invalid arguments." );
        return;
    }
    if ( serial == null ) {
        System.err.println( "No external interface set." );
        return;
    }
    if ( populateEnabled ) serial.populate( classname, args );
    for ( int i = 0; i < args.length; i++ ) args[i] = "";
}

private void enablePopulate( boolean enable ) {
    populateEnabled = enable;
}

public void setErrorHandler( ErrorHandler handler ) {
    this.handler = handler;
}

public void setDirectory( File dir ) {
    this.dir = dir;
}

@Override
public void emitErrorMessage( String msg ) {
    System.err.println(msg);
    handler.handleError(msg);
}

}

//==============================================================================================================
//==============================================================================================================
//
// Parser
//
//==============================================================================================================
//==============================================================================================================

domainDefinition:             DOMAIN_NAME        domainName       NEWLINES
                              DOMAIN_KEY_LETTER  domainKeyLetter  NEWLINES
                              DOMAIN_VERSION     domainVersion    NEWLINES
                              DOMAIN_TYPE        domainType       NEWLINES
                              {
                                args[0] = $domainName.name;
                                populate( "domain" );
                              }
                              domainElementDefinitions
                              {
                                populate( "domain" );
                              }
                              ;

domainElementDefinitions:     (   domainTerminatorDefinitions
                                | domainHandCodedFiles
                                | domainScenarios
                                | domainScenarioList
                                | domainFunctionSignatures
                                | domainFunctions
                                | domainBridgeSignatures
                                | domainBridges
                                | domainObjectDefinitions
                                | domainRelationships
                                | domainSubtypes
                                | domainPolymorphicEvents
                                | domainActionList
                                | domainStateTransitions
                                | domainEventDataDefinitions
                                | domainTypes
                              )*;

domainTerminatorDefinitions:  START_TERMINATORS NEWLINES ( filename NEWLINES )? END_TERMINATORS NEWLINES;

domainHandCodedFiles:         START_HAND_CODED_FILES NEWLINES ( filename NEWLINES )? END_HAND_CODED_FILES NEWLINES;

domainScenarios:              START_SCENARIOS NEWLINES
                              ( domainName COMMA domainVersion COMMA scenarioName COMMA scenarioNumber COMMA filename NEWLINES )*
                              END_SCENARIOS NEWLINES
                              ;

domainScenarioList:           START_SCENARIO_LIST NEWLINES ( filename NEWLINES )? END_SCENARIO_LIST NEWLINES;

domainFunctionSignatures:     START_FUNCTION_DATA_TYPES NEWLINES ( filename NEWLINES )? END_FUNCTION_DATA_TYPES NEWLINES;

domainFunctions:              START_FUNCTIONS NEWLINES ( filename NEWLINES )* END_FUNCTIONS NEWLINES;

domainBridgeSignatures:       START_BRIDGE_DATA_TYPES NEWLINES ( filename NEWLINES )? END_BRIDGE_DATA_TYPES NEWLINES;

domainBridges:                START_BRIDGES NEWLINES
                              ( domainName COMMA domainVersion COMMA filename COMMA IDENTIFIER NEWLINES )*
                              END_BRIDGES NEWLINES
                              ;

domainObjectDefinitions:      START_OBJECTS NEWLINES ( 
                                filename NEWLINES
                              {
                                WaslImportParser subparser = new WaslImportParser(serial);
                                subparser.parse("objectDefinitions", $filename.name, dir);
                              }
                              )? END_OBJECTS NEWLINES;

domainRelationships:          START_RELATIONSHIPS NEWLINES (
                                filename NEWLINES
                              {
                                WaslImportParser subparser = new WaslImportParser(serial);
                                subparser.parse("relationshipDefinitions", $filename.name, dir);
                              }
                              )? END_RELATIONSHIPS NEWLINES;

domainSubtypes:               START_SUBTYPES NEWLINES (
                                filename NEWLINES
                              {
                                WaslImportParser subparser = new WaslImportParser(serial);
                                subparser.parse("subtypeDefinitions", $filename.name, dir);
                              }
                              )? END_SUBTYPES NEWLINES;

domainPolymorphicEvents:      START_POLYMORPHIC_EVENTS NEWLINES ( filename NEWLINES )? END_POLYMORPHIC_EVENTS NEWLINES;

domainGenericDefinition:      START NEWLINES ( filename NEWLINES )? END NEWLINES;

domainActionList:             START_ACTION_LIST NEWLINES ( filename NEWLINES )? END_ACTION_LIST NEWLINES;

domainStateTransitions:       START_STATE_TRANSITIONS NEWLINES ( filename NEWLINES )? END_STATE_TRANSITIONS NEWLINES;

domainEventDataDefinitions:   START_EVDS NEWLINES ( filename NEWLINES )? END_EVDS NEWLINES;

domainTypes:                  START_TYPES NEWLINES (
                                filename NEWLINES
                              {
                                WaslImportParser subparser = new WaslImportParser(serial);
                                subparser.parse("typeDefinitions", $filename.name, dir);
                              }
                              )? END_TYPES NEWLINES;

objectDefinitions:            objectDefinition*;

objectDefinition:             INTEGER_LITERAL COMMA objectName COMMA objectKeyLetter COMMA IDENTIFIER NEWLINES
                              {
                                args[0] = $objectKeyLetter.name; // TODO we are only using key letters here because
                                                                 // relationship specifications use key letters
                                populate( "object" );
                              }
                              attributeDefinition*
                              {
                                populate( "object" );
                              }
                              ;

attributeDefinition:          attributeIndicator attributeName 
                              {
                                if ( "Current_State".equals($attributeName.name) ) enablePopulate(false);
                                args[0] = $attributeName.name;
                                args[1] = $attributeIndicator.preferred;
                                populate( "attribute" );
                              }
                              COMMA attributeType COMMA ( LPAREN ( attributeReferenceSpec )? RPAREN )* COMMA description NEWLINES
                              {
                                if ( !"".equals($description.text) ) {
                                  args[0] = $description.text;
                                  populate( "description" );
                                }
                                args[0] = $attributeType.body;
                                populate( "typeref" );
                                populate( "attribute" );
                                enablePopulate(true);
                              }
                              ;

typeDefinitions:              typeDefinition*;

typeDefinition:               typeName COMMA typeBody
                              {
                                if ( !"".equals($typeBody.body) ) {
                                  args[0] = $typeName.name;
                                  args[1] = "public";
                                  args[2] = $typeBody.body;
                                  populate( "type" );
                                  populate( "type" );
                                }
                              }
                              ;

typeBody returns [String body]:
                              enumerationTypeBody    { $body = $enumerationTypeBody.body; }
                              | objectAccessTypeBody { $body = ""; }
                              ;

enumerationTypeBody returns [String body]:
                              ENUM COMMA LBRACE enumerators RBRACE NEWLINES
                              { $body = $enumerators.enums; }
                              ;

enumerators returns [String enums]:
                              enum1=enumerator { $enums = $enum1.text; }
                              ( COMMA enum2=enumerator { $enums += "," + $enum2.text; } )*;

enumerator:                   IDENTIFIER;

objectAccessTypeBody:         OBJECT_ACCESS;

relationshipDefinitions:      {
                                relCache = new RelationshipCache();
                              }
                              relationshipDefinition*
                              {
                                relCache.populate(serial);
                              }
                              ;

relationshipDefinition:       relationshipName COMMA from=objectKeyLetter COMMA relationshipRole COMMA
                              conditionality COMMA ( phrase )? COMMA multiplicity COMMA to=objectKeyLetter
                              COMMA ( IDENTIFIER )? NEWLINES
                              {
                                relCache.addRelationship($relationshipName.name, $relationshipRole.role, $from.name,
                                                         null == $phrase.phrase ? "" : $phrase.phrase, $conditionality.cond,
                                                         $multiplicity.mult, $to.name);
                                if ( "C".equals($relationshipRole.role) ) {
                                  relCache.setType($relationshipName.name, RelationshipCache.Relationship.ASSOC);
                                }
                              }
                              ;

subtypeDefinitions:           {
                                relCache = new RelationshipCache();
                              }
                              subtypeDefinition*
                              {
                                relCache.populate(serial);
                              }
                              ;

subtypeDefinition:            relationshipName COMMA sup=objectKeyLetter
                              COMMA sub1=objectKeyLetter
                              {
                                relCache.addRelationship($relationshipName.name, "A", $sup.name, "", "", "", "");
                                relCache.setType($relationshipName.name, RelationshipCache.Relationship.SUBSUP);
                                relCache.addRelationship($relationshipName.name, "B", $sub1.name, "", "", "", $sup.name);
                              }
                              ( COMMA sub2=objectKeyLetter
                              {
                                relCache.addRelationship($relationshipName.name, "B", $sub2.name, "", "", "", $sup.name);
                              }
                              )* NEWLINES
                              ;

domainName returns [String name]:
                              IDENTIFIER { $name = $IDENTIFIER.text; };

domainKeyLetter:              IDENTIFIER;

domainVersion:                INTEGER_LITERAL;

domainType:                   IDENTIFIER;

scenarioName:                 IDENTIFIER;

scenarioNumber:               INTEGER_LITERAL;

filename returns [String name]:
                              fn=IDENTIFIER DOT ext=IDENTIFIER { $name = $fn.text + $DOT.text + $ext.text; };

objectName returns [String name]:
                              IDENTIFIER { $name = $IDENTIFIER.text; };

objectKeyLetter returns [String name]:
                              IDENTIFIER { $name = $IDENTIFIER.text; };

attributeIndicator returns [String preferred]:           
                              DOT     { $preferred = ""; }
                              | SPLAT { $preferred = "preferred"; }
                              ;

attributeName returns [String name]:
                              IDENTIFIER { $name = $IDENTIFIER.text; };

attributeType returns [String body]:
                              IDENTIFIER
                              {
                                $body = $IDENTIFIER.text;
                                if ( "Base_Integer_Type".equals($body) ) {
                                  $body = "integer";  // special case for integer type
                                }
                              }
                              ;

attributeReferenceSpec:       relationshipName ( DOT attributeName )?
                              {
                                args[0] = $relationshipName.name;
                                args[4] = null == $attributeName.name ? "" : $attributeName.name;
                                populate( "referential" );
                              };

relationshipName returns [String name]:
                              REL_NAME { $name = $REL_NAME.text; };

description returns [String text]:
                              DESCRIPTION { $text = $DESCRIPTION.text.substring(1, $DESCRIPTION.text.length() - 1); };

typeName returns [String name]:
                              IDENTIFIER { $name = $IDENTIFIER.text; };

relationshipRole returns [String role]:
                              IDENTIFIER { $role = $IDENTIFIER.text; };

conditionality returns [String cond]:
                              IDENTIFIER { $cond = $IDENTIFIER.text; };

phrase returns [String phrase]:
                              IDENTIFIER { $phrase = $IDENTIFIER.text; };

multiplicity returns [String mult]:
                              IDENTIFIER { $mult = $IDENTIFIER.text; };


//==============================================================================================================
//==============================================================================================================
//
// Lexer
//
//==============================================================================================================
//==============================================================================================================

DOMAIN_KEY_LETTER:            '$DOMAIN_KEY_LETTER';
DOMAIN_NAME:                  '$DOMAIN_NAME';
DOMAIN_TYPE:                  '$DOMAIN_TYPE';
DOMAIN_VERSION:               '$DOMAIN_VERSION';

START_ACTION_LIST:            '$START_ACTION_LIST';
START_BRIDGES:                '$START_BRIDGES';
START_BRIDGE_DATA_TYPES:      '$START_BRIDGE_DATA_TYPES';
START_EVDS:                   '$START_EVDS';
START_FUNCTIONS:              '$START_FUNCTIONS';
START_FUNCTION_DATA_TYPES:    '$START_FUNCTION_DATA_TYPES';
START_HAND_CODED_FILES:       '$START_HAND_CODED_FILES';
START_OBJECTS:                '$START_OBJECTS';
START_POLYMORPHIC_EVENTS:     '$START_POLYMORPHIC_EVENTS';
START_RELATIONSHIPS:          '$START_RELATIONSHIPS';
START_SCENARIOS:              '$START_SCENARIOS';
START_SCENARIO_LIST:          '$START_SCENARIO_LIST';
START_STATE_TRANSITIONS:      '$START_STATE_TRANSITIONS';
START_SUBTYPES:               '$START_SUBTYPES';
START_TERMINATORS:            '$START_TERMINATORS';
START_TYPES:                  '$START_TYPES';
START:                        '$START_';

END_ACTION_LIST:              '$END_ACTION_LIST';
END_BRIDGES:                  '$END_BRIDGES';
END_BRIDGE_DATA_TYPES:        '$END_BRIDGE_DATA_TYPES';
END_EVDS:                     '$END_EVDS';
END_FUNCTIONS:                '$END_FUNCTIONS';
END_FUNCTION_DATA_TYPES:      '$END_FUNCTION_DATA_TYPES';
END_HAND_CODED_FILES:         '$END_HAND_CODED_FILES';
END_OBJECTS:                  '$END_OBJECTS';
END_POLYMORPHIC_EVENTS:       '$END_POLYMORPHIC_EVENTS';
END_RELATIONSHIPS:            '$END_RELATIONSHIPS';
END_SCENARIOS:                '$END_SCENARIOS';
END_SCENARIO_LIST:            '$END_SCENARIO_LIST';
END_STATE_TRANSITIONS:        '$END_STATE_TRANSITIONS';
END_SUBTYPES:                 '$END_SUBTYPES';
END_TERMINATORS:              '$END_TERMINATORS';
END_TYPES:                    '$END_TYPES';
END:                          '$END_';

COMMA:                        ',';
DOT:                          '.';
LPAREN:                       '(';
RPAREN:                       ')';
SPLAT:                        '*';
LBRACE:                       '{';
RBRACE:                       '}';

OBJECT_ACCESS:                'Root_Object.Object_Access';
ENUM:                         'Enumeration';

REL_NAME:                     ( 'R' '1'..'9' ( '0'..'9' )* );
IDENTIFIER:                   ( ( 'a'..'z' | 'A'..'Z' ) ( 'a'..'z' | 'A'..'Z' | '0'..'9' | '_' )* );
INTEGER_LITERAL:              ( '0' | '1'..'9' ( '0'..'9' )* );
NEWLINES:                     ( '\r'? '\n' )+;

DESCRIPTION:                  '#' ~( '#' )* '#';

WS:                           (' ' | '\t' | '\f')+ {$channel=HIDDEN;};

