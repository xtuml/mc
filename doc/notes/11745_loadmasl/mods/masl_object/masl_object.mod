domain masl_object is
  object AttributeDeclaration;
  object IdentifierDeclaration;
  object ObjectDeclaration;
  object ObjectService;
  object ReferentialAttributeDefinition;
  object Z_Domain_object;
  object Z_BasicType_object;
  object Z_RelationshipSpecification_object;
  object Z_RelationshipDeclaration_object;
  object Z_ExceptionReference_object;
  object Z_Expression_object;
  object Z_ParameterDefinition_object;
  relationship R1500 is AttributeDeclaration unconditionally XX many ReferentialAttributeDefinition, ReferentialAttributeDefinition unconditionally YY one AttributeDeclaration;
  relationship R1501 is AttributeDeclaration unconditionally XX one Z_Expression_object, Z_Expression_object unconditionally YY one AttributeDeclaration;
  relationship R1502 is AttributeDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one AttributeDeclaration;
  relationship R1503 is AttributeDeclaration unconditionally XX one Z_BasicType_object, Z_BasicType_object unconditionally YY one AttributeDeclaration;
  relationship R1504 is IdentifierDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one IdentifierDeclaration;
  relationship R1505 is ObjectDeclaration unconditionally XX one Z_Domain_object, Z_Domain_object unconditionally YY one ObjectDeclaration;
  relationship R1506 is ObjectService unconditionally XX one Z_RelationshipDeclaration_object, Z_RelationshipDeclaration_object unconditionally YY one ObjectService;
  relationship R1507 is ObjectService unconditionally XX many Z_ParameterDefinition_object, Z_ParameterDefinition_object unconditionally YY one ObjectService;
  relationship R1508 is ObjectService unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ObjectService;
  relationship R1509 is ObjectService unconditionally XX one Z_BasicType_object, Z_BasicType_object unconditionally YY one ObjectService;
  relationship R1510 is ObjectService unconditionally XX many Z_ExceptionReference_object, Z_ExceptionReference_object unconditionally YY one ObjectService;
  relationship R1511 is ReferentialAttributeDefinition unconditionally XX one Z_RelationshipSpecification_object, Z_RelationshipSpecification_object unconditionally YY one ReferentialAttributeDefinition;
  object AttributeDeclaration is
    isPreferredIdentifier : boolean;
    isUnique : boolean;
    //!relationship R1500 is AttributeDeclaration unconditionally XX many ReferentialAttributeDefinition, ReferentialAttributeDefinition unconditionally YY one AttributeDeclaration;
    List_refAttDefs : iReferentialAttributeDefinition;
    name : String;
    //!relationship R1501 is AttributeDeclaration unconditionally XX one Z_Expression_object, Z_Expression_object unconditionally YY one AttributeDeclaration;
    defaultValue : iExpression;
    //!relationship R1502 is AttributeDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one AttributeDeclaration;
    //!object
    my_object : iObjectDeclaration;
    //!relationship R1503 is AttributeDeclaration unconditionally XX one Z_BasicType_object, Z_BasicType_object unconditionally YY one AttributeDeclaration;
    //!type
    my_type : iBasicType;
  end object; pragma id(1500);
  object IdentifierDeclaration is
    //!preferred
    my_preferred : boolean;
    List_attributes : String;
    //!relationship R1504 is IdentifierDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one IdentifierDeclaration;
    //!object
    my_object : iObjectDeclaration;
  end object; pragma id(1501);
  object ObjectDeclaration is
    name : String;
    //!relationship R1505 is ObjectDeclaration unconditionally XX one Z_Domain_object, Z_Domain_object unconditionally YY one ObjectDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1502);
  object ObjectService is
    //!relationship R1506 is ObjectService unconditionally XX one Z_RelationshipDeclaration_object, Z_RelationshipDeclaration_object unconditionally YY one ObjectService;
    relRef : iRelationshipDeclaration;
    //!relationship R1507 is ObjectService unconditionally XX many Z_ParameterDefinition_object, Z_ParameterDefinition_object unconditionally YY one ObjectService;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R1508 is ObjectService unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ObjectService;
    //!object
    my_object : iObjectDeclaration;
    //!relationship R1509 is ObjectService unconditionally XX one Z_BasicType_object, Z_BasicType_object unconditionally YY one ObjectService;
    returnType : iBasicType;
    //!relationship R1510 is ObjectService unconditionally XX many Z_ExceptionReference_object, Z_ExceptionReference_object unconditionally YY one ObjectService;
    List_exceptionSpecs : iExceptionReference;
    isInstance : boolean;
  end object; pragma id(1503);
  object ReferentialAttributeDefinition is
    attributeName : String;
    //!relationship R1511 is ReferentialAttributeDefinition unconditionally XX one Z_RelationshipSpecification_object, Z_RelationshipSpecification_object unconditionally YY one ReferentialAttributeDefinition;
    //!relationship
    my_relationship : iRelationshipSpecification;
  end object; pragma id(1504);

  //!IMPORTED
  object Z_Domain_object is
  end object; pragma id(1505);

  //!IMPORTED
  object Z_BasicType_object is
  end object; pragma id(1506);

  //!IMPORTED
  object Z_RelationshipSpecification_object is
  end object; pragma id(1507);

  //!IMPORTED
  object Z_RelationshipDeclaration_object is
  end object; pragma id(1508);

  //!IMPORTED
  object Z_ExceptionReference_object is
  end object; pragma id(1509);

  //!IMPORTED
  object Z_Expression_object is
  end object; pragma id(1510);

  //!IMPORTED
  object Z_ParameterDefinition_object is
  end object; pragma id(1511);
end domain;
