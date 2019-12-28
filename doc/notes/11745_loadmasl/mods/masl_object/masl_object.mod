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
  relationship R5800 is AttributeDeclaration unconditionally XX many ReferentialAttributeDefinition, ReferentialAttributeDefinition unconditionally YY one AttributeDeclaration;
  relationship R5801 is AttributeDeclaration unconditionally XX one Z_Expression_object, Z_Expression_object unconditionally YY one AttributeDeclaration;
  relationship R5802 is AttributeDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one AttributeDeclaration;
  relationship R5803 is AttributeDeclaration unconditionally XX one Z_BasicType_object, Z_BasicType_object unconditionally YY one AttributeDeclaration;
  relationship R5804 is IdentifierDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one IdentifierDeclaration;
  relationship R5805 is ObjectDeclaration unconditionally XX one Z_Domain_object, Z_Domain_object unconditionally YY one ObjectDeclaration;
  relationship R5806 is ObjectService unconditionally XX one Z_RelationshipDeclaration_object, Z_RelationshipDeclaration_object unconditionally YY one ObjectService;
  relationship R5807 is ObjectService unconditionally XX many Z_ParameterDefinition_object, Z_ParameterDefinition_object unconditionally YY one ObjectService;
  relationship R5808 is ObjectService unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ObjectService;
  relationship R5809 is ObjectService unconditionally XX one Z_BasicType_object, Z_BasicType_object unconditionally YY one ObjectService;
  relationship R5810 is ObjectService unconditionally XX many Z_ExceptionReference_object, Z_ExceptionReference_object unconditionally YY one ObjectService;
  relationship R5811 is ReferentialAttributeDefinition unconditionally XX one Z_RelationshipSpecification_object, Z_RelationshipSpecification_object unconditionally YY one ReferentialAttributeDefinition;
  object AttributeDeclaration is
    isPreferredIdentifier : boolean;
    isUnique : boolean;
    //!R5800
    List_refAttDefs : iReferentialAttributeDefinition;
    name : String;
    //!R5801
    defaultValue : iExpression;
    //!R5802
    //!object
    my_object : iObjectDeclaration;
    //!R5803
    //!type
    my_type : iBasicType;
  end object; pragma id(5800);
  object IdentifierDeclaration is
    //!preferred
    my_preferred : boolean;
    List_attributes : String;
    //!R5804
    //!object
    my_object : iObjectDeclaration;
  end object; pragma id(5801);
  object ObjectDeclaration is
    name : String;
    //!R5805
    //!domain
    my_domain : iDomain;
  end object; pragma id(5802);
  object ObjectService is
    //!R5806
    relRef : iRelationshipDeclaration;
    //!R5807
    List_parameters : iParameterDefinition;
    name : String;
    //!R5808
    //!object
    my_object : iObjectDeclaration;
    //!R5809
    returnType : iBasicType;
    //!R5810
    List_exceptionSpecs : iExceptionReference;
    isInstance : boolean;
  end object; pragma id(5803);
  object ReferentialAttributeDefinition is
    attributeName : String;
    //!R5811
    //!relationship
    my_relationship : iRelationshipSpecification;
  end object; pragma id(5804);

  //!IMPORTED
  object Z_Domain_object is
  end object; pragma id(5805);

  //!IMPORTED
  object Z_BasicType_object is
  end object; pragma id(5806);

  //!IMPORTED
  object Z_RelationshipSpecification_object is
  end object; pragma id(5807);

  //!IMPORTED
  object Z_RelationshipDeclaration_object is
  end object; pragma id(5808);

  //!IMPORTED
  object Z_ExceptionReference_object is
  end object; pragma id(5809);

  //!IMPORTED
  object Z_Expression_object is
  end object; pragma id(5810);

  //!IMPORTED
  object Z_ParameterDefinition_object is
  end object; pragma id(5811);
end domain;
