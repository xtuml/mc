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
  relationship R1100 is ParameterDefinition unconditionally XX one Z_BasicType_common, Z_BasicType_common unconditionally YY one ParameterDefinition;
  relationship R1101 is ParameterDefinition unconditionally XX one ParameterModeType, ParameterModeType unconditionally YY one ParameterDefinition;
  relationship R1102 is ParameterModeType unconditionally XX one ParameterDefinition, ParameterDefinition unconditionally YY one ParameterModeType;
  relationship R1103 is Service is_a ( Z_DomainService_common, Z_DomainTerminatorService_common, Z_ObjectService_common, Z_ProjectTerminatorService_common );
  relationship R1104 is Service unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one Service;
  relationship R1105 is Service unconditionally XX one Z_BasicType_common, Z_BasicType_common unconditionally YY one Service;
  relationship R1106 is Service unconditionally XX many Z_ExceptionReference_common, Z_ExceptionReference_common unconditionally YY one Service;
  object ParameterDefinition is
    //!relationship R1100 is ParameterDefinition unconditionally XX one Z_BasicType_common, Z_BasicType_common unconditionally YY one ParameterDefinition;
    //!type
    my_type : iBasicType;
    name : String;
    //!relationship R1101 is ParameterDefinition unconditionally XX one ParameterModeType, ParameterModeType unconditionally YY one ParameterDefinition;
    mode : iParameterModeType;
  end object; pragma id(1100);
  object ParameterModeType is
    text : String;
    //!relationship R1102 is ParameterModeType unconditionally XX one ParameterDefinition, ParameterDefinition unconditionally YY one ParameterModeType;
    mode : iParameterDefinition;
  end object; pragma id(1101);
  object ParseOptions is
  end object; pragma id(1102);
  object PragmaDefinition is
    List_values : String;
    name : String;
  end object; pragma id(1103);
  object ReturnCheckVisitor is
  end object; pragma id(1104);
  object Service is
    //!relationship R1104 is Service unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one Service;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R1105 is Service unconditionally XX one Z_BasicType_common, Z_BasicType_common unconditionally YY one Service;
    returnType : iBasicType;
    //!relationship R1106 is Service unconditionally XX many Z_ExceptionReference_common, Z_ExceptionReference_common unconditionally YY one Service;
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(1105);
  object ServiceOverload is
    alreadyDefined : SemanticErrorCode;
    name : String;
  end object; pragma id(1106);

  //!IMPORTED
  object Z_ObjectService_common is
  end object; pragma id(1107);

  //!IMPORTED
  object Z_DomainService_common is
  end object; pragma id(1108);

  //!IMPORTED
  object Z_BasicType_common is
  end object; pragma id(1109);

  //!IMPORTED
  object Z_ExceptionReference_common is
  end object; pragma id(1110);

  //!IMPORTED
  object Z_ProjectTerminatorService_common is
  end object; pragma id(1111);

  //!IMPORTED
  object Z_DomainTerminatorService_common is
  end object; pragma id(1112);
end domain;
