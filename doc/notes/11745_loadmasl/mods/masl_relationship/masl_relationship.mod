domain masl_relationship is
  object AssociativeRelationshipDeclaration;
  object HalfRelationship;
  object MultiplicityType;
  object NormalRelationshipDeclaration;
  object RelationshipDeclaration;
  object RelationshipSpecification;
  object SubtypeRelationshipDeclaration;
  object ObjectDeclaration;
  object Domain;
  object ObjectNameExpression;
  private type iAssociativeRelationshipDeclaration is instance of AssociativeRelationshipDeclaration;
  private type iHalfRelationship is instance of HalfRelationship;
  private type iMultiplicityType is instance of MultiplicityType;
  private type iNormalRelationshipDeclaration is instance of NormalRelationshipDeclaration;
  private type iRelationshipDeclaration is instance of RelationshipDeclaration;
  private type iRelationshipSpecification is instance of RelationshipSpecification;
  private type iSubtypeRelationshipDeclaration is instance of SubtypeRelationshipDeclaration;
  relationship R1700 is AssociativeRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one AssociativeRelationshipDeclaration;
  relationship R1701 is AssociativeRelationshipDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one AssociativeRelationshipDeclaration;
  relationship R1702 is AssociativeRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one AssociativeRelationshipDeclaration;
  relationship R1703 is AssociativeRelationshipDeclaration unconditionally XX one Domain, Domain unconditionally YY one AssociativeRelationshipDeclaration;
  relationship R1704 is HalfRelationship unconditionally XX one ObjectNameExpression, ObjectNameExpression unconditionally YY one HalfRelationship;
  relationship R1705 is HalfRelationship unconditionally XX one MultiplicityType, MultiplicityType unconditionally YY one HalfRelationship;
  relationship R1706 is HalfRelationship unconditionally XX one ObjectNameExpression, ObjectNameExpression unconditionally YY one HalfRelationship;
  relationship R1707 is NormalRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one NormalRelationshipDeclaration;
  relationship R1708 is NormalRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one NormalRelationshipDeclaration;
  relationship R1709 is NormalRelationshipDeclaration unconditionally XX one Domain, Domain unconditionally YY one NormalRelationshipDeclaration;
  relationship R1710 is RelationshipDeclaration is_a ( AssociativeRelationshipDeclaration, NormalRelationshipDeclaration, SubtypeRelationshipDeclaration );
  relationship R1711 is RelationshipSpecification unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one RelationshipSpecification;
  relationship R1712 is RelationshipSpecification unconditionally XX one MultiplicityType, MultiplicityType unconditionally YY one RelationshipSpecification;
  relationship R1713 is RelationshipSpecification unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one RelationshipSpecification;
  relationship R1714 is RelationshipSpecification unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one RelationshipSpecification;
  relationship R1715 is RelationshipSpecification unconditionally XX one RelationshipDeclaration, RelationshipDeclaration unconditionally YY one RelationshipSpecification;
  relationship R1716 is SubtypeRelationshipDeclaration unconditionally XX many ObjectDeclaration, ObjectDeclaration unconditionally YY one SubtypeRelationshipDeclaration;
  relationship R1717 is SubtypeRelationshipDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one SubtypeRelationshipDeclaration;
  relationship R1718 is SubtypeRelationshipDeclaration unconditionally XX one Domain, Domain unconditionally YY one SubtypeRelationshipDeclaration;
  object AssociativeRelationshipDeclaration is
    //!relationship R1700 is AssociativeRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one AssociativeRelationshipDeclaration;
    leftToRight : iHalfRelationship;
    //!relationship R1701 is AssociativeRelationshipDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one AssociativeRelationshipDeclaration;
    assocObject : iObjectDeclaration;
    name : String;
    pragmas : PragmaList;
    position : Position;
    //!relationship R1702 is AssociativeRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one AssociativeRelationshipDeclaration;
    rightToLeft : iHalfRelationship;
    //!relationship R1703 is AssociativeRelationshipDeclaration unconditionally XX one Domain, Domain unconditionally YY one AssociativeRelationshipDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1700);
  object HalfRelationship is
    conditional : boolean;
    role : String;
    //!relationship R1704 is HalfRelationship unconditionally XX one ObjectNameExpression, ObjectNameExpression unconditionally YY one HalfRelationship;
    toObject : iObjectNameExpression;
    //!relationship R1705 is HalfRelationship unconditionally XX one MultiplicityType, MultiplicityType unconditionally YY one HalfRelationship;
    mult : iMultiplicityType;
    //!relationship R1706 is HalfRelationship unconditionally XX one ObjectNameExpression, ObjectNameExpression unconditionally YY one HalfRelationship;
    fromObject : iObjectNameExpression;
  end object; pragma id(1701);
  object MultiplicityType is
    text : String;
    //!type
    my_type : MultiplictyType;
  end object; pragma id(1702);
  object NormalRelationshipDeclaration is
    //!relationship R1707 is NormalRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one NormalRelationshipDeclaration;
    leftToRight : iHalfRelationship;
    name : String;
    pragmas : PragmaList;
    position : Position;
    //!relationship R1708 is NormalRelationshipDeclaration unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one NormalRelationshipDeclaration;
    rightToLeft : iHalfRelationship;
    //!relationship R1709 is NormalRelationshipDeclaration unconditionally XX one Domain, Domain unconditionally YY one NormalRelationshipDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1703);
  object RelationshipDeclaration is
  end object; pragma id(1704);
  object RelationshipSpecification is
    //!relationship R1711 is RelationshipSpecification unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one RelationshipSpecification;
    toObject : iObjectDeclaration;
    //!relationship R1712 is RelationshipSpecification unconditionally XX one MultiplicityType, MultiplicityType unconditionally YY one RelationshipSpecification;
    mult : iMultiplicityType;
    //!relationship R1713 is RelationshipSpecification unconditionally XX one HalfRelationship, HalfRelationship unconditionally YY one RelationshipSpecification;
    half : iHalfRelationship;
    role : String;
    conditional : boolean;
    //!relationship R1714 is RelationshipSpecification unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one RelationshipSpecification;
    fromObject : iObjectDeclaration;
    //!relationship R1715 is RelationshipSpecification unconditionally XX one RelationshipDeclaration, RelationshipDeclaration unconditionally YY one RelationshipSpecification;
    //!relationship
    my_relationship : iRelationshipDeclaration;
  end object; pragma id(1705);
  object SubtypeRelationshipDeclaration is
    //!relationship R1716 is SubtypeRelationshipDeclaration unconditionally XX many ObjectDeclaration, ObjectDeclaration unconditionally YY one SubtypeRelationshipDeclaration;
    List_subtypes : iObjectDeclaration;
    name : String;
    pragmas : PragmaList;
    //!relationship R1717 is SubtypeRelationshipDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one SubtypeRelationshipDeclaration;
    supertype : iObjectDeclaration;
    position : Position;
    //!relationship R1718 is SubtypeRelationshipDeclaration unconditionally XX one Domain, Domain unconditionally YY one SubtypeRelationshipDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1706);

  //!imported
  object ObjectDeclaration is
    IMPORTED: integer;
  end object; pragma id(1707);

  //!imported
  object Domain is
    IMPORTED: integer;
  end object; pragma id(1708);

  //!imported
  object ObjectNameExpression is
    IMPORTED: integer;
  end object; pragma id(1709);
end domain;
