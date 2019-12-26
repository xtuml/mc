domain masl_domain is
  object Domain;
  object DomainService;
  object DomainTerminator;
  object DomainTerminatorService;
  object Domains;
  object Z_ExceptionReference_domain;
  object Z_BasicType_domain;
  object Z_ParameterDefinition_domain;
  relationship R1200 is DomainService unconditionally XX many Z_ParameterDefinition_domain, Z_ParameterDefinition_domain unconditionally YY one DomainService;
  relationship R1201 is DomainService unconditionally XX one Z_BasicType_domain, Z_BasicType_domain unconditionally YY one DomainService;
  relationship R1202 is DomainService unconditionally XX many Z_ExceptionReference_domain, Z_ExceptionReference_domain unconditionally YY one DomainService;
  relationship R1203 is DomainService unconditionally XX one Domain, Domain unconditionally YY one DomainService;
  relationship R1204 is DomainTerminator unconditionally XX one Domain, Domain unconditionally YY one DomainTerminator;
  relationship R1205 is DomainTerminatorService unconditionally XX one Z_BasicType_domain, Z_BasicType_domain unconditionally YY one DomainTerminatorService;
  relationship R1206 is DomainTerminatorService unconditionally XX one DomainTerminator, DomainTerminator unconditionally YY one DomainTerminatorService;
  relationship R1207 is DomainTerminatorService unconditionally XX many Z_ParameterDefinition_domain, Z_ParameterDefinition_domain unconditionally YY one DomainTerminatorService;
  relationship R1208 is DomainTerminatorService unconditionally XX many Z_ExceptionReference_domain, Z_ExceptionReference_domain unconditionally YY one DomainTerminatorService;
  object Domain is
    name : String;
  end object; pragma id(1200);
  object DomainService is
    //!relationship R1200 is DomainService unconditionally XX many Z_ParameterDefinition_domain, Z_ParameterDefinition_domain unconditionally YY one DomainService;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R1201 is DomainService unconditionally XX one Z_BasicType_domain, Z_BasicType_domain unconditionally YY one DomainService;
    returnType : iBasicType;
    //!relationship R1202 is DomainService unconditionally XX many Z_ExceptionReference_domain, Z_ExceptionReference_domain unconditionally YY one DomainService;
    List_exceptionSpecs : iExceptionReference;
    //!relationship R1203 is DomainService unconditionally XX one Domain, Domain unconditionally YY one DomainService;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1201);
  object DomainTerminator is
    name : String;
    //!relationship R1204 is DomainTerminator unconditionally XX one Domain, Domain unconditionally YY one DomainTerminator;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1202);
  object DomainTerminatorService is
    //!relationship R1205 is DomainTerminatorService unconditionally XX one Z_BasicType_domain, Z_BasicType_domain unconditionally YY one DomainTerminatorService;
    returnType : iBasicType;
    name : String;
    //!relationship R1206 is DomainTerminatorService unconditionally XX one DomainTerminator, DomainTerminator unconditionally YY one DomainTerminatorService;
    //!terminator
    my_terminator : iDomainTerminator;
    //!relationship R1207 is DomainTerminatorService unconditionally XX many Z_ParameterDefinition_domain, Z_ParameterDefinition_domain unconditionally YY one DomainTerminatorService;
    List_parameters : iParameterDefinition;
    //!relationship R1208 is DomainTerminatorService unconditionally XX many Z_ExceptionReference_domain, Z_ExceptionReference_domain unconditionally YY one DomainTerminatorService;
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(1203);
  object Domains is
  end object; pragma id(1204);

  //!IMPORTED
  object Z_ExceptionReference_domain is
  end object; pragma id(1205);

  //!IMPORTED
  object Z_BasicType_domain is
  end object; pragma id(1206);

  //!IMPORTED
  object Z_ParameterDefinition_domain is
  end object; pragma id(1207);
end domain;
