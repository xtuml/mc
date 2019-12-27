domain masl_common is
  object ParameterDefinition;
  object ParameterModeType;
  object ParseOptions;
  object PragmaDefinition;
  object ReturnCheckVisitor;
  object Service;
  object ServiceOverload;
  object Z_ObjectService_common;
  object Z_DomainService_common;
  object Z_BasicType_common;
  object Z_ExceptionReference_common;
  object Z_ProjectTerminatorService_common;
  object Z_DomainTerminatorService_common;
  relationship R5200 is ParameterDefinition unconditionally XX one Z_BasicType_common, Z_BasicType_common unconditionally YY one ParameterDefinition;
  relationship R5201 is ParameterDefinition unconditionally XX one ParameterModeType, ParameterModeType unconditionally YY one ParameterDefinition;
  relationship R5202 is ParameterModeType unconditionally XX one ParameterDefinition, ParameterDefinition unconditionally YY one ParameterModeType;
  relationship R5203 is Service is_a ( Z_DomainService_common, Z_DomainTerminatorService_common, Z_ObjectService_common, Z_ProjectTerminatorService_common );
  relationship R5204 is Service unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one Service;
  relationship R5205 is Service unconditionally XX one Z_BasicType_common, Z_BasicType_common unconditionally YY one Service;
  relationship R5206 is Service unconditionally XX many Z_ExceptionReference_common, Z_ExceptionReference_common unconditionally YY one Service;
  object ParameterDefinition is
    //!relationship R5200 is ParameterDefinition unconditionally XX one Z_BasicType_common, Z_BasicType_common unconditionally YY one ParameterDefinition;
    //!type
    my_type : iBasicType;
    name : String;
    //!relationship R5201 is ParameterDefinition unconditionally XX one ParameterModeType, ParameterModeType unconditionally YY one ParameterDefinition;
    mode : iParameterModeType;
  end object; pragma id(5200);
  object ParameterModeType is
    text : String;
    //!relationship R5202 is ParameterModeType unconditionally XX one ParameterDefinition, ParameterDefinition unconditionally YY one ParameterModeType;
    mode : iParameterDefinition;
  end object; pragma id(5201);
  object ParseOptions is
  end object; pragma id(5202);
  object PragmaDefinition is
    List_values : String;
    name : String;
  end object; pragma id(5203);
  object ReturnCheckVisitor is
  end object; pragma id(5204);
  object Service is
    //!relationship R5204 is Service unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one Service;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R5205 is Service unconditionally XX one Z_BasicType_common, Z_BasicType_common unconditionally YY one Service;
    returnType : iBasicType;
    //!relationship R5206 is Service unconditionally XX many Z_ExceptionReference_common, Z_ExceptionReference_common unconditionally YY one Service;
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
