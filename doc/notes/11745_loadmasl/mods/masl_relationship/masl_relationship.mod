domain masl_relationship is
  object AssociativeRelationshipDeclaration;
  object HalfRelationship;
  object NormalRelationshipDeclaration;
  object RelationshipDeclaration;
  object RelationshipSpecification;
  object SubtypeRelationshipDeclaration;
  object Z_ObjectDeclaration_relationship;
  object Z_Domain_relationship;
  object Z_ObjectNameExpression_relationship;
  relationship R6000 is AssociativeRelationshipDeclaration unconditionally engages_ltr one HalfRelationship, HalfRelationship conditionally participates one AssociativeRelationshipDeclaration;
  relationship R6001 is AssociativeRelationshipDeclaration unconditionally uses one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship conditionally is_used_by many AssociativeRelationshipDeclaration;
  relationship R6002 is AssociativeRelationshipDeclaration unconditionally engages_rtl one HalfRelationship, HalfRelationship conditionally participates one AssociativeRelationshipDeclaration;
  relationship R6003 is RelationshipDeclaration unconditionally relates_objects_in one Z_Domain_relationship, Z_Domain_relationship conditionally has_objects_related_by many RelationshipDeclaration;
  relationship R6004 is HalfRelationship unconditionally names_to one Z_ObjectNameExpression_relationship, Z_ObjectNameExpression_relationship unconditionally is_named_to one HalfRelationship;
  relationship R6006 is HalfRelationship unconditionally names_from one Z_ObjectNameExpression_relationship, Z_ObjectNameExpression_relationship unconditionally is_named_from one HalfRelationship;
  relationship R6007 is NormalRelationshipDeclaration unconditionally engages_ltr one HalfRelationship, HalfRelationship conditionally participates one NormalRelationshipDeclaration;
  relationship R6008 is NormalRelationshipDeclaration unconditionally engages_rtl one HalfRelationship, HalfRelationship conditionally participates one NormalRelationshipDeclaration;
  relationship R6010 is RelationshipDeclaration is_a ( AssociativeRelationshipDeclaration, NormalRelationshipDeclaration, SubtypeRelationshipDeclaration );
  relationship R6011 is RelationshipSpecification unconditionally names_to one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship conditionally is_named_to many RelationshipSpecification;
  relationship R6013 is RelationshipSpecification unconditionally is_use_of one HalfRelationship, HalfRelationship conditionally is_used_in many RelationshipSpecification;
  relationship R6014 is RelationshipSpecification unconditionally names_from one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship conditionally is_named_to many RelationshipSpecification;
  relationship R6015 is RelationshipSpecification unconditionally is_use_of one RelationshipDeclaration, RelationshipDeclaration conditionally is_used_in many RelationshipSpecification;
  relationship R6016 is SubtypeRelationshipDeclaration unconditionally relates_as_subtypes many Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship conditionally is_subtype_in many SubtypeRelationshipDeclaration;
  relationship R6017 is SubtypeRelationshipDeclaration unconditionally relates_as_supertype one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship conditionally is_supertype_for many SubtypeRelationshipDeclaration;
  object AssociativeRelationshipDeclaration is
    //!R6000
    leftToRight : iHalfRelationship;
    //!R6001
    assocObject : iObjectDeclaration;
    name : Name;
    //!R6002
    rightToLeft : iHalfRelationship;
  end object; pragma id(6000);
  object HalfRelationship is
    conditional : boolean;
    role : String;
    //!R6004
    toObject : iObjectNameExpression;
    mult : enumeratedMultiplicityType;
    //!R6006
    fromObject : iObjectNameExpression;
  end object; pragma id(6001);
  object NormalRelationshipDeclaration is
    //!R6007
    leftToRight : iHalfRelationship;
    name : Name;
    //!R6008
    rightToLeft : iHalfRelationship;
  end object; pragma id(6003);
  object RelationshipDeclaration is
    //!R6003
    //!domain
    my_domain : iDomain;
  end object; pragma id(6004);
  object RelationshipSpecification is
    //!R6011
    toObject : iObjectDeclaration;
    mult : enumeratedMultiplicityType;
    //!R6013
    half : iHalfRelationship;
    role : String;
    conditional : boolean;
    //!R6014
    fromObject : iObjectDeclaration;
    //!R6015
    //!relationship
    my_relationship : iRelationshipDeclaration;
  end object; pragma id(6005);
  object SubtypeRelationshipDeclaration is
    //!R6016
    List_subtypes : iObjectDeclaration;
    name : Name;
    //!R6017
    supertype : iObjectDeclaration;
  end object; pragma id(6006);

  //!IMPORTED
  object Z_ObjectDeclaration_relationship is
  end object; pragma id(6007);

  //!IMPORTED
  object Z_Domain_relationship is
  end object; pragma id(6008);

  //!IMPORTED
  object Z_ObjectNameExpression_relationship is
  end object; pragma id(6009);
end domain;
