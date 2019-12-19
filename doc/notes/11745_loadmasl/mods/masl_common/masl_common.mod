domain masl_common is
  object LocalVariableCollector;
  object ParameterDefinition;
  object ParameterModeType;
  object ParseOptions;
  object PragmaDefinition;
  object ReturnCheckVisitor;
  object Service;
  object ServiceOverload;
  object ObjectService;
  object DomainService;
  object BasicType;
  object Statement;
  object ExceptionReference;
  object ProjectTerminatorService;
  object DomainTerminatorService;
  private type iLocalVariableCollector is instance of LocalVariableCollector;
  private type iParameterDefinition is instance of ParameterDefinition;
  private type iParameterModeType is instance of ParameterModeType;
  private type iParseOptions is instance of ParseOptions;
  private type iPragmaDefinition is instance of PragmaDefinition;
  private type iReturnCheckVisitor is instance of ReturnCheckVisitor;
  private type iService is instance of Service;
  private type iServiceOverload is instance of ServiceOverload;
  relationship R1100 is LocalVariableCollector unconditionally XX one Statement, Statement unconditionally YY one LocalVariableCollector;
  relationship R1101 is ParameterDefinition unconditionally XX one BasicType, BasicType unconditionally YY one ParameterDefinition;
  relationship R1102 is ParameterDefinition unconditionally XX one ParameterModeType, ParameterModeType unconditionally YY one ParameterDefinition;
  relationship R1103 is ParameterModeType unconditionally XX one ParameterDefinition, ParameterDefinition unconditionally YY one ParameterModeType;
  relationship R1104 is Service is_a ( DomainService, DomainTerminatorService, ObjectService, ProjectTerminatorService );
  relationship R1105 is Service unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one Service;
  relationship R1106 is Service unconditionally XX one BasicType, BasicType unconditionally YY one Service;
  relationship R1107 is Service unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one Service;
  object LocalVariableCollector is
    //!relationship R1100 is LocalVariableCollector unconditionally XX one Statement, Statement unconditionally YY one LocalVariableCollector;
    statement : iStatement;
  end object; pragma id(1100);
  object ParameterDefinition is
    //!relationship R1101 is ParameterDefinition unconditionally XX one BasicType, BasicType unconditionally YY one ParameterDefinition;
    //!type
    my_type : iBasicType;
    name : String;
    //!relationship R1102 is ParameterDefinition unconditionally XX one ParameterModeType, ParameterModeType unconditionally YY one ParameterDefinition;
    mode : iParameterModeType;
  end object; pragma id(1101);
  object ParameterModeType is
    text : String;
    //!relationship R1103 is ParameterModeType unconditionally XX one ParameterDefinition, ParameterDefinition unconditionally YY one ParameterModeType;
    mode : iParameterDefinition;
  end object; pragma id(1102);
  object ParseOptions is
  end object; pragma id(1103);
  object PragmaDefinition is
    List_values : String;
    name : String;
  end object; pragma id(1104);
  object ReturnCheckVisitor is
  end object; pragma id(1105);
  object Service is
    //!relationship R1105 is Service unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one Service;
    List_parameters : iParameterDefinition;
    name : String;
    visibility : Visibility;
    pragmas : PragmaList;
    //!relationship R1106 is Service unconditionally XX one BasicType, BasicType unconditionally YY one Service;
    returnType : iBasicType;
    position : Position;
    //!relationship R1107 is Service unconditionally XX many ExceptionReference, ExceptionReference unconditionally YY one Service;
    List_exceptionSpecs : iExceptionReference;
  end object; pragma id(1106);
  object ServiceOverload is
    alreadyDefined : SemanticErrorCode;
    name : String;
  end object; pragma id(1107);

  //!imported
  object ObjectService is
    IMPORTED: integer;
  end object; pragma id(1108);

  //!imported
  object DomainService is
    IMPORTED: integer;
  end object; pragma id(1109);

  //!imported
  object BasicType is
    IMPORTED: integer;
  end object; pragma id(1110);

  //!imported
  object Statement is
    IMPORTED: integer;
  end object; pragma id(1111);

  //!imported
  object ExceptionReference is
    IMPORTED: integer;
  end object; pragma id(1112);

  //!imported
  object ProjectTerminatorService is
    IMPORTED: integer;
  end object; pragma id(1113);

  //!imported
  object DomainTerminatorService is
    IMPORTED: integer;
  end object; pragma id(1114);
end domain;
