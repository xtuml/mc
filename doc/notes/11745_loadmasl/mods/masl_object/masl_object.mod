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
  object Z_Expression_object;
  relationship R5800 is AttributeDeclaration conditionally is_referred_to_in many ReferentialAttributeDefinition, ReferentialAttributeDefinition conditionally refers_to one AttributeDeclaration;
  relationship R5801 is AttributeDeclaration conditionally is_initialized_by one Z_Expression_object, Z_Expression_object conditionally initializes one AttributeDeclaration;
  relationship R5802 is AttributeDeclaration unconditionally characterizes one ObjectDeclaration, ObjectDeclaration conditionally is_characterized_by many AttributeDeclaration;
  relationship R5803 is AttributeDeclaration unconditionally is_typed_by one Z_BasicType_object, Z_BasicType_object conditionally types many AttributeDeclaration;
  relationship R5804 is IdentifierDeclaration unconditionally identifies one ObjectDeclaration, ObjectDeclaration conditionally is_identified_by one IdentifierDeclaration;
  relationship R5805 is ObjectDeclaration conditionally is_abstracted_in one Z_Domain_object, Z_Domain_object conditionally has_abstract many ObjectDeclaration;
  relationship R5806 is ObjectService conditionally defers_to one Z_RelationshipDeclaration_object, Z_RelationshipDeclaration_object conditionally is_deferred_by one ObjectService;
  relationship R5807 is AttributeDeclaration conditionally composes many IdentifierDeclaration, IdentifierDeclaration unconditionally is_composed_of many AttributeDeclaration;
  relationship R5808 is ObjectService unconditionally transforms one ObjectDeclaration, ObjectDeclaration conditionally is_transformed_by many ObjectService;
  relationship R5809 is AttributeDeclaration conditionally succeeds one AttributeDeclaration, AttributeDeclaration conditionally precedes one AttributeDeclaration;
  relationship R5811 is ReferentialAttributeDefinition unconditionally refers_to one Z_RelationshipSpecification_object, Z_RelationshipSpecification_object conditionally is_referenced_by many ReferentialAttributeDefinition;
  object AttributeDeclaration is
    isPreferredIdentifier : boolean;
    isUnique : boolean;
    //!R5800
    List_refAttDefs : iReferentialAttributeDefinition;
    name : Name;
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
    name : Name;
    //!R5805
    //!domain
    my_domain : iDomain;
  end object; pragma id(5802);
  object ObjectService is
    //!R5806
    relRef : iRelationshipDeclaration;
    name : Name;
    //!R5808
    //!object
    my_object : iObjectDeclaration;
    isInstance : boolean;
  end object; pragma id(5803);
  object ReferentialAttributeDefinition is
    //!R5800
    attributeName : Name;
    //!R5807
    refattr : iAttributeDeclaration;
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
  object Z_Expression_object is
  end object; pragma id(5810);

end domain;
