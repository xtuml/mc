domain masl_project is
  object Project;
  object ProjectDomain;
  object ProjectTerminator;
  object ProjectTerminatorService;
  object Z_ExceptionReference_project;
  object Z_Domain_project;
  object Z_BasicType_project;
  object Z_ParameterDefinition_project;
  relationship R5900 is ProjectDomain unconditionally XX one Project, Project unconditionally YY one ProjectDomain;
  relationship R5901 is ProjectDomain unconditionally XX one Z_Domain_project, Z_Domain_project unconditionally YY one ProjectDomain;
  relationship R5902 is ProjectTerminator unconditionally XX one ProjectDomain, ProjectDomain unconditionally YY one ProjectTerminator;
  relationship R5903 is ProjectTerminatorService unconditionally XX one ProjectTerminator, ProjectTerminator unconditionally YY one ProjectTerminatorService;
  relationship R5904 is ProjectTerminatorService unconditionally XX one Z_BasicType_project, Z_BasicType_project unconditionally YY one ProjectTerminatorService;
  relationship R5905 is ProjectTerminatorService unconditionally XX many Z_ParameterDefinition_project, Z_ParameterDefinition_project unconditionally YY one ProjectTerminatorService;
  relationship R5906 is ProjectTerminatorService unconditionally XX many Z_ExceptionReference_project, Z_ExceptionReference_project unconditionally YY one ProjectTerminatorService;
  object Project is
    projectName : String;
  end object; pragma id(5900);
  object ProjectDomain is
    //!relationship R5900 is ProjectDomain unconditionally XX one Project, Project unconditionally YY one ProjectDomain;
    //!project
    my_project : iProject;
    //!relationship R5901 is ProjectDomain unconditionally XX one Z_Domain_project, Z_Domain_project unconditionally YY one ProjectDomain;
    //!domain
    my_domain : iDomain;
  end object; pragma id(5901);
  object ProjectTerminator is
    //!relationship R5902 is ProjectTerminator unconditionally XX one ProjectDomain, ProjectDomain unconditionally YY one ProjectTerminator;
    //!domain
    my_domain : iProjectDomain;
    name : String;
  end object; pragma id(5902);
  object ProjectTerminatorService is
    //!relationship R5903 is ProjectTerminatorService unconditionally XX one ProjectTerminator, ProjectTerminator unconditionally YY one ProjectTerminatorService;
    //!terminator
    my_terminator : iProjectTerminator;
    //!relationship R5904 is ProjectTerminatorService unconditionally XX one Z_BasicType_project, Z_BasicType_project unconditionally YY one ProjectTerminatorService;
    returnType : iBasicType;
    name : String;
    //!relationship R5905 is ProjectTerminatorService unconditionally XX many Z_ParameterDefinition_project, Z_ParameterDefinition_project unconditionally YY one ProjectTerminatorService;
    List_parameters : iParameterDefinition;
    //!relationship R5906 is ProjectTerminatorService unconditionally XX many Z_ExceptionReference_project, Z_ExceptionReference_project unconditionally YY one ProjectTerminatorService;
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(5903);

  //!IMPORTED
  object Z_ExceptionReference_project is
  end object; pragma id(5904);

  //!IMPORTED
  object Z_Domain_project is
  end object; pragma id(5905);

  //!IMPORTED
  object Z_BasicType_project is
  end object; pragma id(5906);

  //!IMPORTED
  object Z_ParameterDefinition_project is
  end object; pragma id(5907);
end domain;
