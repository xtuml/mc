domain masl_project is
  object Project;
  object ProjectDomain;
  object ProjectTerminator;
  object ProjectTerminatorService;
  object ExceptionReference;
  object Domain;
  object BasicType;
  object ParameterDefinition;
  private type iProject is instance of Project;
  private type iProjectDomain is instance of ProjectDomain;
  private type iProjectTerminator is instance of ProjectTerminator;
  private type iProjectTerminatorService is instance of ProjectTerminatorService;
  relationship R1600 is ProjectDomain unconditionally XX one Project, Project unconditionally YY one ProjectDomain;
  relationship R1601 is ProjectDomain unconditionally XX one Domain, Domain unconditionally YY one ProjectDomain;
  relationship R1602 is ProjectTerminator unconditionally XX one ProjectDomain, ProjectDomain unconditionally YY one ProjectTerminator;
  relationship R1603 is ProjectTerminatorService unconditionally XX one ProjectTerminator, ProjectTerminator unconditionally YY one ProjectTerminatorService;
  relationship R1604 is ProjectTerminatorService unconditionally XX one BasicType, BasicType unconditionally YY one ProjectTerminatorService;
  relationship R1605 is ProjectTerminatorService unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one ProjectTerminatorService;
  relationship R1606 is ProjectTerminatorService unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one ProjectTerminatorService;
  object Project is
    position : Position;
    projectName : String;
  end object; pragma id(1600);
  object ProjectDomain is
    //!relationship R1600 is ProjectDomain unconditionally XX one Project, Project unconditionally YY one ProjectDomain;
    //!project
    my_project : iProject;
    //!relationship R1601 is ProjectDomain unconditionally XX one Domain, Domain unconditionally YY one ProjectDomain;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1601);
  object ProjectTerminator is
    position : Position;
    //!relationship R1602 is ProjectTerminator unconditionally XX one ProjectDomain, ProjectDomain unconditionally YY one ProjectTerminator;
    //!domain
    my_domain : iProjectDomain;
    name : String;
    pragmas : PragmaList;
  end object; pragma id(1602);
  object ProjectTerminatorService is
    //!relationship R1603 is ProjectTerminatorService unconditionally XX one ProjectTerminator, ProjectTerminator unconditionally YY one ProjectTerminatorService;
    //!terminator
    my_terminator : iProjectTerminator;
    //!relationship R1604 is ProjectTerminatorService unconditionally XX one BasicType, BasicType unconditionally YY one ProjectTerminatorService;
    returnType : iBasicType;
    name : String;
    //!type
    my_type : Visibility;
    pragmas : PragmaList;
    //!relationship R1605 is ProjectTerminatorService unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one ProjectTerminatorService;
    List_parameters : iParameterDefinition;
    position : Position;
    //!relationship R1606 is ProjectTerminatorService unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one ProjectTerminatorService;
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(1603);

  //!imported
  object ExceptionReference is
    IMPORTED: integer;
  end object; pragma id(1604);

  //!imported
  object Domain is
    IMPORTED: integer;
  end object; pragma id(1605);

  //!imported
  object BasicType is
    IMPORTED: integer;
  end object; pragma id(1606);

  //!imported
  object ParameterDefinition is
    IMPORTED: integer;
  end object; pragma id(1607);
end domain;
