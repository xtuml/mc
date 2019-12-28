domain masl_common is
  object ParameterDefinition;
  object ParameterModeType;
  object Service;
  object ServiceOverload;
  object Z_ObjectService_common;
  object Z_DomainService_common;
  object Z_BasicType_common;
  object Z_ExceptionReference_common;
  object Z_ProjectTerminatorService_common;
  object Z_DomainTerminatorService_common;
  relationship R5200 is ParameterDefinition unconditionally is_typed_by one Z_BasicType_common, Z_BasicType_common conditionally types many ParameterDefinition;
  relationship R5201 is ParameterDefinition unconditionally is_configured_by one ParameterModeType, ParameterModeType conditionally configures many ParameterDefinition;
  relationship R5203 is Service is_a ( Z_DomainService_common, Z_DomainTerminatorService_common, Z_ObjectService_common, Z_ProjectTerminatorService_common );
  relationship R5204 is Service conditionally passes many ParameterDefinition, ParameterDefinition unconditionally is_passed_by one Service;
  relationship R5205 is Service unconditionally returns one Z_BasicType_common, Z_BasicType_common conditionally is_returned_by many Service;
  relationship R5206 is Service conditionally raises many Z_ExceptionReference_common, Z_ExceptionReference_common conditionally is_raised_by many Service;
  object ParameterDefinition is
    //!R5200
    //!type
    my_type : iBasicType;
    name : String;
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
    name : String;
    //!R5205
    returnType : iBasicType;
    //!R5206
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(5205);
  object ServiceOverload is
    alreadyDefined : SemanticErrorCode;
    name : String;
  end object; pragma id(5206);

  //!IMPORTED
  object Z_ObjectService_common is
  end object; pragma id(5207);

  //!IMPORTED
  object Z_DomainService_common is
  end object; pragma id(5208);

  //!IMPORTED
  object Z_BasicType_common is
  end object; pragma id(5209);

  //!IMPORTED
  object Z_ExceptionReference_common is
  end object; pragma id(5210);

  //!IMPORTED
  object Z_ProjectTerminatorService_common is
  end object; pragma id(5211);

  //!IMPORTED
  object Z_DomainTerminatorService_common is
  end object; pragma id(5212);
end domain;
