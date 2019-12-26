domain masl_project is
  object Project;
  object ProjectDomain;
  object ProjectTerminator;
  object ProjectTerminatorService;
  object Z_ExceptionReference_project;
  object Z_Domain_project;
  object Z_BasicType_project;
  object Z_ParameterDefinition_project;
  relationship R1600 is ProjectDomain unconditionally XX one Project, Project unconditionally YY one ProjectDomain;
  relationship R1601 is ProjectDomain unconditionally XX one Z_Domain_project, Z_Domain_project unconditionally YY one ProjectDomain;
  relationship R1602 is ProjectTerminator unconditionally XX one ProjectDomain, ProjectDomain unconditionally YY one ProjectTerminator;
  relationship R1603 is ProjectTerminatorService unconditionally XX one ProjectTerminator, ProjectTerminator unconditionally YY one ProjectTerminatorService;
  relationship R1604 is ProjectTerminatorService unconditionally XX one Z_BasicType_project, Z_BasicType_project unconditionally YY one ProjectTerminatorService;
  relationship R1605 is ProjectTerminatorService unconditionally XX many Z_ParameterDefinition_project, Z_ParameterDefinition_project unconditionally YY one ProjectTerminatorService;
  relationship R1606 is ProjectTerminatorService unconditionally XX many Z_ExceptionReference_project, Z_ExceptionReference_project unconditionally YY one ProjectTerminatorService;
  object Project is
    projectName : String;
  end object; pragma id(1600);
  object ProjectDomain is
    //!relationship R1600 is ProjectDomain unconditionally XX one Project, Project unconditionally YY one ProjectDomain;
    //!project
    my_project : iProject;
    //!relationship R1601 is ProjectDomain unconditionally XX one Z_Domain_project, Z_Domain_project unconditionally YY one ProjectDomain;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1601);
  object ProjectTerminator is
    //!relationship R1602 is ProjectTerminator unconditionally XX one ProjectDomain, ProjectDomain unconditionally YY one ProjectTerminator;
    //!domain
    my_domain : iProjectDomain;
    name : String;
  end object; pragma id(1602);
  object ProjectTerminatorService is
    //!relationship R1603 is ProjectTerminatorService unconditionally XX one ProjectTerminator, ProjectTerminator unconditionally YY one ProjectTerminatorService;
    //!terminator
    my_terminator : iProjectTerminator;
    //!relationship R1604 is ProjectTerminatorService unconditionally XX one Z_BasicType_project, Z_BasicType_project unconditionally YY one ProjectTerminatorService;
    returnType : iBasicType;
    name : String;
    //!relationship R1605 is ProjectTerminatorService unconditionally XX many Z_ParameterDefinition_project, Z_ParameterDefinition_project unconditionally YY one ProjectTerminatorService;
    List_parameters : iParameterDefinition;
    //!relationship R1606 is ProjectTerminatorService unconditionally XX many Z_ExceptionReference_project, Z_ExceptionReference_project unconditionally YY one ProjectTerminatorService;
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(1603);

  //!IMPORTED
  object Z_ExceptionReference_project is
  end object; pragma id(1604);

  //!IMPORTED
  object Z_Domain_project is
  end object; pragma id(1605);

  //!IMPORTED
  object Z_BasicType_project is
  end object; pragma id(1606);

  //!IMPORTED
  object Z_ParameterDefinition_project is
  end object; pragma id(1607);
end domain;
