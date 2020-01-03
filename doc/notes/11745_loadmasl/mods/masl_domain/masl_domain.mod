domain masl_domain is
  object BuiltinException;
  object Domain;
  object DomainService;
  object DomainTerminator;
  object DomainTerminatorService;
  object ExceptionDeclaration;
  object ExceptionReference;
  object ParameterDefinition;
  object ParameterModeType;
  object Service;
  object ServiceOverload;
  object Z_ObjectService_common;
  object Z_BasicType_common;
  object Z_ProjectTerminatorService_common;
  relationship R5200 is ParameterDefinition unconditionally is_typed_by one Z_BasicType_common, Z_BasicType_common conditionally types many ParameterDefinition;
  relationship R5201 is ParameterDefinition unconditionally is_configured_by one ParameterModeType, ParameterModeType conditionally configures many ParameterDefinition;
  relationship R5203 is Service is_a ( Z_DomainService_common, Z_DomainTerminatorService_common, Z_ObjectService_common, Z_ProjectTerminatorService_common );
  relationship R5204 is Service conditionally passes many ParameterDefinition, ParameterDefinition unconditionally is_passed_by one Service;
  relationship R5205 is Service unconditionally returns one Z_BasicType_common, Z_BasicType_common conditionally is_returned_by many Service;
  relationship R5206 is Service conditionally raises many Z_ExceptionReference_common, Z_ExceptionReference_common conditionally is_raised_by many Service;
  relationship R5303 is DomainService unconditionally is_service_provision_for one Domain, Domain conditionally provides many DomainService;
  relationship R5304 is DomainTerminator unconditionally is_requirement_of one Domain, Domain conditionally requires many DomainTerminator;
  relationship R5306 is DomainTerminatorService unconditionally is_message_for one DomainTerminator, DomainTerminator conditionally passes_messages_through many DomainTerminatorService;
  relationship R5400 is ExceptionDeclaration unconditionally catches_errors_in one Z_Domain_exception, Z_Domain_exception conditionally has_errors_caught_by many ExceptionDeclaration;
  relationship R5401 is ExceptionReference is_a ( BuiltinException );
  relationship R5402 is ExceptionReference unconditionally refers_to one ExceptionDeclaration, ExceptionDeclaration conditionally is_referenced_by many ExceptionReference;
  object BuiltinException is
    //!type
    my_type : ImplType;
  end object; pragma id(5400);
  object Domain is
    name : Name;
  end object; pragma id(5300);
  object DomainService is
    name : Name;
    fileExtension : String;
    //!R5303
    //!domain
    my_domain : iDomain;
  end object; pragma id(5301);
  object DomainTerminator is
    name : Name;
    //!R5304
    //!domain
    my_domain : iDomain;
  end object; pragma id(5302);
  object DomainTerminatorService is
    name : Name;
    //!R5306
    //!terminator
    my_terminator : iDomainTerminator;
  end object; pragma id(5303);
  object ExceptionDeclaration is
    name : Name;
    //!R5400
    //!domain
    my_domain : iDomain;
  end object; pragma id(5401);
  object ExceptionReference is
    //!R5402
    eref : iExceptionDeclaration;
  end object; pragma id(5402);
  object ParameterDefinition is
    //!R5200
    //!type
    my_type : iBasicType;
    name : Name;
    //!R5201
    mode : iParameterModeType;
  end object; pragma id(5200);
  object ParameterModeType is
    text : String;
    mode : probably_an_enumeration_IN_OUT_INOUT;
  end object; pragma id(5201);
  object Service is
    //!R5204
    List_parameters : iParameterDefinition;
    name : Name;
    //!R5205
    returnType : iBasicType;
    //!R5206
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(5205);
  object ServiceOverload is
    alreadyDefined : SemanticErrorCode;
    name : Name;
  end object; pragma id(5206);

  //!IMPORTED
  object Z_ObjectService_common is
  end object; pragma id(5207);

  //!IMPORTED
  object Z_BasicType_common is
  end object; pragma id(5209);

  //!IMPORTED
  object Z_ProjectTerminatorService_common is
  end object; pragma id(5211);

end domain;
