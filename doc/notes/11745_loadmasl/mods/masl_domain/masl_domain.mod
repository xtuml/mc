domain masl_domain is
  object Domain;
  object DomainService;
  object DomainTerminator;
  object DomainTerminatorService;
  object Domains;
  object Z_ExceptionReference_domain;
  object Z_BasicType_domain;
  object Z_ParameterDefinition_domain;
  relationship R5300 is DomainService unconditionally XX many Z_ParameterDefinition_domain, Z_ParameterDefinition_domain unconditionally YY one DomainService;
  relationship R5301 is DomainService unconditionally XX one Z_BasicType_domain, Z_BasicType_domain unconditionally YY one DomainService;
  relationship R5302 is DomainService unconditionally XX many Z_ExceptionReference_domain, Z_ExceptionReference_domain unconditionally YY one DomainService;
  relationship R5303 is DomainService unconditionally XX one Domain, Domain unconditionally YY one DomainService;
  relationship R5304 is DomainTerminator unconditionally XX one Domain, Domain unconditionally YY one DomainTerminator;
  relationship R5305 is DomainTerminatorService unconditionally XX one Z_BasicType_domain, Z_BasicType_domain unconditionally YY one DomainTerminatorService;
  relationship R5306 is DomainTerminatorService unconditionally XX one DomainTerminator, DomainTerminator unconditionally YY one DomainTerminatorService;
  relationship R5307 is DomainTerminatorService unconditionally XX many Z_ParameterDefinition_domain, Z_ParameterDefinition_domain unconditionally YY one DomainTerminatorService;
  relationship R5308 is DomainTerminatorService unconditionally XX many Z_ExceptionReference_domain, Z_ExceptionReference_domain unconditionally YY one DomainTerminatorService;
  object Domain is
    name : String;
  end object; pragma id(5300);
  object DomainService is
    //!relationship R5300 is DomainService unconditionally XX many Z_ParameterDefinition_domain, Z_ParameterDefinition_domain unconditionally YY one DomainService;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R5301 is DomainService unconditionally XX one Z_BasicType_domain, Z_BasicType_domain unconditionally YY one DomainService;
    returnType : iBasicType;
    //!relationship R5302 is DomainService unconditionally XX many Z_ExceptionReference_domain, Z_ExceptionReference_domain unconditionally YY one DomainService;
    List_exceptionSpecs : iExceptionReference;
    //!relationship R5303 is DomainService unconditionally XX one Domain, Domain unconditionally YY one DomainService;
    //!domain
    my_domain : iDomain;
  end object; pragma id(5301);
  object DomainTerminator is
    name : String;
    //!relationship R5304 is DomainTerminator unconditionally XX one Domain, Domain unconditionally YY one DomainTerminator;
    //!domain
    my_domain : iDomain;
  end object; pragma id(5302);
  object DomainTerminatorService is
    //!relationship R5305 is DomainTerminatorService unconditionally XX one Z_BasicType_domain, Z_BasicType_domain unconditionally YY one DomainTerminatorService;
    returnType : iBasicType;
    name : String;
    //!relationship R5306 is DomainTerminatorService unconditionally XX one DomainTerminator, DomainTerminator unconditionally YY one DomainTerminatorService;
    //!terminator
    my_terminator : iDomainTerminator;
    //!relationship R5307 is DomainTerminatorService unconditionally XX many Z_ParameterDefinition_domain, Z_ParameterDefinition_domain unconditionally YY one DomainTerminatorService;
    List_parameters : iParameterDefinition;
    //!relationship R5308 is DomainTerminatorService unconditionally XX many Z_ExceptionReference_domain, Z_ExceptionReference_domain unconditionally YY one DomainTerminatorService;
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(5303);
  object Domains is
  end object; pragma id(5304);

  //!IMPORTED
  object Z_ExceptionReference_domain is
  end object; pragma id(5305);

  //!IMPORTED
  object Z_BasicType_domain is
  end object; pragma id(5306);

  //!IMPORTED
  object Z_ParameterDefinition_domain is
  end object; pragma id(5307);
end domain;
