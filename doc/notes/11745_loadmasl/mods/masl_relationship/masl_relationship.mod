domain masl_relationship is
  object AssociativeRelationshipDeclaration;
  object HalfRelationship;
  object MultiplicityType;
  object NormalRelationshipDeclaration;
  object RelationshipDeclaration;
  object RelationshipSpecification;
  object SubtypeRelationshipDeclaration;
  object Z_ObjectDeclaration_relationship;
  object Z_Domain_relationship;
  object Z_ObjectNameExpression_relationship;
  relationship R6000 is AssociativeRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one AssociativeRelationshipDeclaration;
  relationship R6001 is AssociativeRelationshipDeclaration unconditionally XX one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one AssociativeRelationshipDeclaration;
  relationship R6002 is AssociativeRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one AssociativeRelationshipDeclaration;
  relationship R6003 is AssociativeRelationshipDeclaration unconditionally XX one Z_Domain_relationship, Z_Domain_relationship unconditionally YY one AssociativeRelationshipDeclaration;
  relationship R6004 is HalfRelationship unconditionally XX one Z_ObjectNameExpression_relationship, Z_ObjectNameExpression_relationship unconditionally YY one HalfRelationship;
  relationship R6005 is HalfRelationship unconditionally XX one MultiplicityType, MultiplicityType unconditionally YY one HalfRelationship;
  relationship R6006 is HalfRelationship unconditionally XX one Z_ObjectNameExpression_relationship, Z_ObjectNameExpression_relationship unconditionally YY one HalfRelationship;
  relationship R6007 is NormalRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one NormalRelationshipDeclaration;
  relationship R6008 is NormalRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one NormalRelationshipDeclaration;
  relationship R6009 is NormalRelationshipDeclaration unconditionally XX one Z_Domain_relationship, Z_Domain_relationship unconditionally YY one NormalRelationshipDeclaration;
  relationship R6010 is RelationshipDeclaration is_a ( AssociativeRelationshipDeclaration, NormalRelationshipDeclaration, SubtypeRelationshipDeclaration );
  relationship R6011 is RelationshipSpecification unconditionally XX one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one RelationshipSpecification;
  relationship R6012 is RelationshipSpecification unconditionally XX one MultiplicityType, MultiplicityType unconditionally YY one RelationshipSpecification;
  relationship R6013 is RelationshipSpecification unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one RelationshipSpecification;
  relationship R6014 is RelationshipSpecification unconditionally XX one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one RelationshipSpecification;
  relationship R6015 is RelationshipSpecification unconditionally XX one RelationshipDeclaration, RelationshipDeclaration unconditionally YY one RelationshipSpecification;
  relationship R6016 is SubtypeRelationshipDeclaration unconditionally XX many Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one SubtypeRelationshipDeclaration;
  relationship R6017 is SubtypeRelationshipDeclaration unconditionally XX one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one SubtypeRelationshipDeclaration;
  relationship R6018 is SubtypeRelationshipDeclaration unconditionally XX one Z_Domain_relationship, Z_Domain_relationship unconditionally YY one SubtypeRelationshipDeclaration;
  object AssociativeRelationshipDeclaration is
    //!relationship R6000 is AssociativeRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one AssociativeRelationshipDeclaration;
    leftToRight : iHalfRelationship;
    //!relationship R6001 is AssociativeRelationshipDeclaration unconditionally XX one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one AssociativeRelationshipDeclaration;
    assocObject : iObjectDeclaration;
    name : String;
    //!relationship R6002 is AssociativeRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one AssociativeRelationshipDeclaration;
    rightToLeft : iHalfRelationship;
    //!relationship R6003 is AssociativeRelationshipDeclaration unconditionally XX one Z_Domain_relationship, Z_Domain_relationship unconditionally YY one AssociativeRelationshipDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(6000);
  object HalfRelationship is
    conditional : boolean;
    role : String;
    //!relationship R6004 is HalfRelationship unconditionally XX one Z_ObjectNameExpression_relationship, Z_ObjectNameExpression_relationship unconditionally YY one HalfRelationship;
    toObject : iObjectNameExpression;
    //!relationship R6005 is HalfRelationship unconditionally XX one MultiplicityType, MultiplicityType unconditionally YY one HalfRelationship;
    mult : iMultiplicityType;
    //!relationship R6006 is HalfRelationship unconditionally XX one Z_ObjectNameExpression_relationship, Z_ObjectNameExpression_relationship unconditionally YY one HalfRelationship;
    fromObject : iObjectNameExpression;
  end object; pragma id(6001);
  object MultiplicityType is
    text : String;
    //!type
    my_type : MultiplictyType;
  end object; pragma id(6002);
  object NormalRelationshipDeclaration is
    //!relationship R6007 is NormalRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one NormalRelationshipDeclaration;
    leftToRight : iHalfRelationship;
    name : String;
    //!relationship R6008 is NormalRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one NormalRelationshipDeclaration;
    rightToLeft : iHalfRelationship;
    //!relationship R6009 is NormalRelationshipDeclaration unconditionally XX one Z_Domain_relationship, Z_Domain_relationship unconditionally YY one NormalRelationshipDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(6003);
  object RelationshipDeclaration is
  end object; pragma id(6004);
  object RelationshipSpecification is
    //!relationship R6011 is RelationshipSpecification unconditionally XX one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one RelationshipSpecification;
    toObject : iObjectDeclaration;
    //!relationship R6012 is RelationshipSpecification unconditionally XX one MultiplicityType, MultiplicityType unconditionally YY one RelationshipSpecification;
    mult : iMultiplicityType;
    //!relationship R6013 is RelationshipSpecification unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one RelationshipSpecification;
    half : iHalfRelationship;
    role : String;
    conditional : boolean;
    //!relationship R6014 is RelationshipSpecification unconditionally XX one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one RelationshipSpecification;
    fromObject : iObjectDeclaration;
    //!relationship R6015 is RelationshipSpecification unconditionally XX one RelationshipDeclaration, RelationshipDeclaration unconditionally YY one RelationshipSpecification;
    //!relationship
    my_relationship : iRelationshipDeclaration;
  end object; pragma id(6005);
  object SubtypeRelationshipDeclaration is
    //!relationship R6016 is SubtypeRelationshipDeclaration unconditionally XX many Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one SubtypeRelationshipDeclaration;
    List_subtypes : iObjectDeclaration;
    name : String;
    //!relationship R6017 is SubtypeRelationshipDeclaration unconditionally XX one Z_ObjectDeclaration_relationship, Z_ObjectDeclaration_relationship unconditionally YY one SubtypeRelationshipDeclaration;
    supertype : iObjectDeclaration;
    //!relationship R6018 is SubtypeRelationshipDeclaration unconditionally XX one Z_Domain_relationship, Z_Domain_relationship unconditionally YY one SubtypeRelationshipDeclaration;
    //!domain
    my_domain : iDomain;
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
