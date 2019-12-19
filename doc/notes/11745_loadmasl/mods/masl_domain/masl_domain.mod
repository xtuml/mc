domain masl_domain is
  object Domain;
  object DomainService;
  object DomainTerminator;
  object DomainTerminatorService;
  object Domains;
  object ExceptionReference;
  object BasicType;
  object ParameterDefinition;
  private type iDomain is instance of Domain;
  private type iDomainService is instance of DomainService;
  private type iDomainTerminator is instance of DomainTerminator;
  private type iDomainTerminatorService is instance of DomainTerminatorService;
  private type iDomains is instance of Domains;
  relationship R1200 is DomainService unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one DomainService;
  relationship R1201 is DomainService unconditionally XX one BasicType, BasicType unconditionally YY one DomainService;
  relationship R1202 is DomainService unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one DomainService;
  relationship R1203 is DomainService unconditionally XX one Domain, Domain unconditionally YY one DomainService;
  relationship R1204 is DomainTerminator unconditionally XX one Domain, Domain unconditionally YY one DomainTerminator;
  relationship R1205 is DomainTerminatorService unconditionally XX one BasicType, BasicType unconditionally YY one DomainTerminatorService;
  relationship R1206 is DomainTerminatorService unconditionally XX one DomainTerminator, DomainTerminator unconditionally YY one DomainTerminatorService;
  relationship R1207 is DomainTerminatorService unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one DomainTerminatorService;
  relationship R1208 is DomainTerminatorService unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one DomainTerminatorService;
  object Domain is
    position : Position;
    name : String;
  end object; pragma id(1200);
  object DomainService is
    //!relationship R1200 is DomainService unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one DomainService;
    List_parameters : iParameterDefinition;
    name : String;
    visibility : Visibility;
    pragmas : PragmaList;
    //!relationship R1201 is DomainService unconditionally XX one BasicType, BasicType unconditionally YY one DomainService;
    returnType : iBasicType;
    position : Position;
    //!relationship R1202 is DomainService unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one DomainService;
    List_exceptionSpecs : iExceptionReference;
    //!relationship R1203 is DomainService unconditionally XX one Domain, Domain unconditionally YY one DomainService;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1201);
  object DomainTerminator is
    position : Position;
    name : String;
    pragmas : PragmaList;
    //!relationship R1204 is DomainTerminator unconditionally XX one Domain, Domain unconditionally YY one DomainTerminator;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1202);
  object DomainTerminatorService is
    //!relationship R1205 is DomainTerminatorService unconditionally XX one BasicType, BasicType unconditionally YY one DomainTerminatorService;
    returnType : iBasicType;
    name : String;
    //!relationship R1206 is DomainTerminatorService unconditionally XX one DomainTerminator, DomainTerminator unconditionally YY one DomainTerminatorService;
    //!terminator
    my_terminator : iDomainTerminator;
    //!type
    my_type : Visibility;
    pragmas : PragmaList;
    //!relationship R1207 is DomainTerminatorService unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one DomainTerminatorService;
    List_parameters : iParameterDefinition;
    position : Position;
    //!relationship R1208 is DomainTerminatorService unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one DomainTerminatorService;
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(1203);
  object Domains is
  end object; pragma id(1204);

  //!imported
  object ExceptionReference is
    IMPORTED: integer;
  end object; pragma id(1205);

  //!imported
  object BasicType is
    IMPORTED: integer;
  end object; pragma id(1206);

  //!imported
  object ParameterDefinition is
    IMPORTED: integer;
  end object; pragma id(1207);
end domain;
