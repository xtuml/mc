domain masl_object is
  object AttributeDeclaration;
  object IdentifierDeclaration;
  object ObjectDeclaration;
  object ObjectService;
  object ReferentialAttributeDefinition;
  object Domain;
  object BasicType;
  object RelationshipSpecification;
  object RelationshipDeclaration;
  object ExceptionReference;
  object Expression;
  object ParameterDefinition;
  private type iAttributeDeclaration is instance of AttributeDeclaration;
  private type iIdentifierDeclaration is instance of IdentifierDeclaration;
  private type iObjectDeclaration is instance of ObjectDeclaration;
  private type iObjectService is instance of ObjectService;
  private type iReferentialAttributeDefinition is instance of ReferentialAttributeDefinition;
  relationship R1500 is AttributeDeclaration unconditionally XX many ReferentialAttributeDefinition, ReferentialAttributeDefinition unconditionally YY one AttributeDeclaration;
  relationship R1501 is AttributeDeclaration unconditionally XX one Expression, Expression unconditionally YY one AttributeDeclaration;
  relationship R1502 is AttributeDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one AttributeDeclaration;
  relationship R1503 is AttributeDeclaration unconditionally XX one BasicType, BasicType unconditionally YY one AttributeDeclaration;
  relationship R1504 is IdentifierDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one IdentifierDeclaration;
  relationship R1505 is ObjectDeclaration unconditionally XX one Domain, Domain unconditionally YY one ObjectDeclaration;
  relationship R1506 is ObjectService unconditionally XX one RelationshipDeclaration, RelationshipDeclaration unconditionally YY one ObjectService;
  relationship R1507 is ObjectService unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one ObjectService;
  relationship R1508 is ObjectService unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ObjectService;
  relationship R1509 is ObjectService unconditionally XX one BasicType, BasicType unconditionally YY one ObjectService;
  relationship R1510 is ObjectService unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one ObjectService;
  relationship R1511 is ReferentialAttributeDefinition unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one ReferentialAttributeDefinition;
  object AttributeDeclaration is
    isPreferredIdentifier : boolean;
    isUnique : boolean;
    //!relationship R1500 is AttributeDeclaration unconditionally XX many ReferentialAttributeDefinition, ReferentialAttributeDefinition unconditionally YY one AttributeDeclaration;
    List_refAttDefs : iReferentialAttributeDefinition;
    name : String;
    //!relationship R1501 is AttributeDeclaration unconditionally XX one Expression, Expression unconditionally YY one AttributeDeclaration;
    defaultValue : iExpression;
    //!relationship R1502 is AttributeDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one AttributeDeclaration;
    //!object
    my_object : iObjectDeclaration;
    pragmas : PragmaList;
    //!relationship R1503 is AttributeDeclaration unconditionally XX one BasicType, BasicType unconditionally YY one AttributeDeclaration;
    //!type
    my_type : iBasicType;
  end object; pragma id(1500);
  object IdentifierDeclaration is
    position : Position;
    //!preferred
    my_preferred : boolean;
    List_attributes : String;
    pragmas : PragmaList;
    //!relationship R1504 is IdentifierDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one IdentifierDeclaration;
    //!object
    my_object : iObjectDeclaration;
  end object; pragma id(1501);
  object ObjectDeclaration is
    position : Position;
    name : String;
    pragmas : PragmaList;
    //!relationship R1505 is ObjectDeclaration unconditionally XX one Domain, Domain unconditionally YY one ObjectDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1502);
  object ObjectService is
    //!relationship R1506 is ObjectService unconditionally XX one RelationshipDeclaration, RelationshipDeclaration unconditionally YY one ObjectService;
    relRef : iRelationshipDeclaration;
    //!relationship R1507 is ObjectService unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one ObjectService;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R1508 is ObjectService unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ObjectService;
    //!object
    my_object : iObjectDeclaration;
    //!type
    my_type : Visibility;
    pragmas : PragmaList;
    //!relationship R1509 is ObjectService unconditionally XX one BasicType, BasicType unconditionally YY one ObjectService;
    returnType : iBasicType;
    position : Position;
    //!relationship R1510 is ObjectService unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one ObjectService;
    List_exceptionSpecs : iExceptionReference;
    isInstance : boolean;
  end object; pragma id(1503);
  object ReferentialAttributeDefinition is
    position : Position;
    attributeName : String;
    //!relationship R1511 is ReferentialAttributeDefinition unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one ReferentialAttributeDefinition;
    //!relationship
    my_relationship : iRelationshipSpecification;
  end object; pragma id(1504);

  //!imported
  object Domain is
    IMPORTED: integer;
  end object; pragma id(1505);

  //!imported
  object BasicType is
    IMPORTED: integer;
  end object; pragma id(1506);

  //!imported
  object RelationshipSpecification is
    IMPORTED: integer;
  end object; pragma id(1507);

  //!imported
  object RelationshipDeclaration is
    IMPORTED: integer;
  end object; pragma id(1508);

  //!imported
  object ExceptionReference is
    IMPORTED: integer;
  end object; pragma id(1509);

  //!imported
  object Expression is
    IMPORTED: integer;
  end object; pragma id(1510);

  //!imported
  object ParameterDefinition is
    IMPORTED: integer;
  end object; pragma id(1511);
end domain;
