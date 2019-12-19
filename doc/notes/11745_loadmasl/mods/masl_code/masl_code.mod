domain masl_code is
  object AssignmentStatement;
  object CancelTimerStatement;
  object CaseStatement;
  object CodeBlock;
  object DelayStatement;
  object DeleteStatement;
  object DomainServiceInvocation;
  object EraseStatement;
  object ExceptionHandler;
  object ExitStatement;
  object ForStatement;
  object FromToRange;
  object GenerateStatement;
  object IOStreamStatement;
  object IfStatement;
  object InstanceServiceInvocation;
  object LinkUnlinkStatement;
  object LoopSpec;
  object ObjectServiceInvocation;
  object PragmaStatement;
  object RaiseStatement;
  object ReturnStatement;
  object ScheduleStatement;
  object ServiceInvocation;
  object Statement;
  object TerminatorServiceInvocation;
  object TypeRange;
  object VariableDefinition;
  object VariableElements;
  object VariableRange;
  object WhileStatement;
  object EventExpression;
  object ObjectService;
  object Service;
  object BasicType;
  object RelationshipSpecification;
  object MinMaxRange;
  object ExceptionReference;
  object Expression;
  private type iAssignmentStatement is instance of AssignmentStatement;
  private type iCancelTimerStatement is instance of CancelTimerStatement;
  private type iCaseStatement is instance of CaseStatement;
  private type iCodeBlock is instance of CodeBlock;
  private type iDelayStatement is instance of DelayStatement;
  private type iDeleteStatement is instance of DeleteStatement;
  private type iDomainServiceInvocation is instance of DomainServiceInvocation;
  private type iEraseStatement is instance of EraseStatement;
  private type iExceptionHandler is instance of ExceptionHandler;
  private type iExitStatement is instance of ExitStatement;
  private type iForStatement is instance of ForStatement;
  private type iFromToRange is instance of FromToRange;
  private type iGenerateStatement is instance of GenerateStatement;
  private type iIOStreamStatement is instance of IOStreamStatement;
  private type iIfStatement is instance of IfStatement;
  private type iInstanceServiceInvocation is instance of InstanceServiceInvocation;
  private type iLinkUnlinkStatement is instance of LinkUnlinkStatement;
  private type iLoopSpec is instance of LoopSpec;
  private type iObjectServiceInvocation is instance of ObjectServiceInvocation;
  private type iPragmaStatement is instance of PragmaStatement;
  private type iRaiseStatement is instance of RaiseStatement;
  private type iReturnStatement is instance of ReturnStatement;
  private type iScheduleStatement is instance of ScheduleStatement;
  private type iServiceInvocation is instance of ServiceInvocation;
  private type iStatement is instance of Statement;
  private type iTerminatorServiceInvocation is instance of TerminatorServiceInvocation;
  private type iTypeRange is instance of TypeRange;
  private type iVariableDefinition is instance of VariableDefinition;
  private type iVariableElements is instance of VariableElements;
  private type iVariableRange is instance of VariableRange;
  private type iWhileStatement is instance of WhileStatement;
  relationship R1000 is AssignmentStatement unconditionally XX one Expression, Expression unconditionally YY one AssignmentStatement;
  relationship R1001 is AssignmentStatement unconditionally XX one Expression, Expression unconditionally YY one AssignmentStatement;
  relationship R1002 is CancelTimerStatement unconditionally XX one Expression, Expression unconditionally YY one CancelTimerStatement;
  relationship R1003 is CaseStatement unconditionally XX one Expression, Expression unconditionally YY one CaseStatement;
  relationship R1004 is DelayStatement unconditionally XX one Expression, Expression unconditionally YY one DelayStatement;
  relationship R1005 is DeleteStatement unconditionally XX one Expression, Expression unconditionally YY one DeleteStatement;
  relationship R1006 is EraseStatement unconditionally XX one Expression, Expression unconditionally YY one EraseStatement;
  relationship R1007 is EraseStatement unconditionally XX one Expression, Expression unconditionally YY one EraseStatement;
  relationship R1008 is ExceptionHandler unconditionally XX one ExceptionReference, ExceptionReference unconditionally YY one ExceptionHandler;
  relationship R1009 is ExitStatement unconditionally XX one Expression, Expression unconditionally YY one ExitStatement;
  relationship R1010 is ForStatement unconditionally XX one LoopSpec, LoopSpec unconditionally YY one ForStatement;
  relationship R1011 is FromToRange unconditionally XX one MinMaxRange, MinMaxRange unconditionally YY one FromToRange;
  relationship R1012 is GenerateStatement unconditionally XX one EventExpression, EventExpression unconditionally YY one GenerateStatement;
  relationship R1013 is GenerateStatement unconditionally XX one Expression, Expression unconditionally YY one GenerateStatement;
  relationship R1014 is GenerateStatement unconditionally XX many Expression, Expression unconditionally YY one GenerateStatement;
  relationship R1015 is IOStreamStatement unconditionally XX one Expression, Expression unconditionally YY one IOStreamStatement;
  relationship R1016 is InstanceServiceInvocation unconditionally XX one ObjectService, ObjectService unconditionally YY one InstanceServiceInvocation;
  relationship R1017 is InstanceServiceInvocation unconditionally XX many Expression, Expression unconditionally YY one InstanceServiceInvocation;
  relationship R1018 is InstanceServiceInvocation unconditionally XX one Expression, Expression unconditionally YY one InstanceServiceInvocation;
  relationship R1019 is LinkUnlinkStatement unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkStatement;
  relationship R1020 is LinkUnlinkStatement unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one LinkUnlinkStatement;
  relationship R1021 is LinkUnlinkStatement unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkStatement;
  relationship R1022 is LinkUnlinkStatement unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkStatement;
  relationship R1023 is LoopSpec is_a ( FromToRange, TypeRange, VariableElements, VariableRange );
  relationship R1024 is LoopSpec unconditionally XX one BasicType, BasicType unconditionally YY one LoopSpec;
  relationship R1025 is RaiseStatement unconditionally XX one Expression, Expression unconditionally YY one RaiseStatement;
  relationship R1026 is RaiseStatement unconditionally XX one ExceptionReference, ExceptionReference unconditionally YY one RaiseStatement;
  relationship R1027 is ReturnStatement unconditionally XX one Service, Service unconditionally YY one ReturnStatement;
  relationship R1028 is ReturnStatement unconditionally XX one Expression, Expression unconditionally YY one ReturnStatement;
  relationship R1029 is ScheduleStatement unconditionally XX one GenerateStatement, GenerateStatement unconditionally YY one ScheduleStatement;
  relationship R1030 is ScheduleStatement unconditionally XX one Expression, Expression unconditionally YY one ScheduleStatement;
  relationship R1031 is ScheduleStatement unconditionally XX one Expression, Expression unconditionally YY one ScheduleStatement;
  relationship R1032 is ScheduleStatement unconditionally XX one Expression, Expression unconditionally YY one ScheduleStatement;
  relationship R1033 is ServiceInvocation is_a ( DomainServiceInvocation, InstanceServiceInvocation, ObjectServiceInvocation, TerminatorServiceInvocation );
  relationship R1034 is ServiceInvocation unconditionally XX many Expression, Expression unconditionally YY one ServiceInvocation;
  relationship R1035 is Statement is_a ( AssignmentStatement, CancelTimerStatement, CaseStatement, CodeBlock, DelayStatement, DeleteStatement, EraseStatement, ExitStatement, ForStatement, GenerateStatement, IOStreamStatement, IfStatement, LinkUnlinkStatement, PragmaStatement, RaiseStatement, ReturnStatement, ScheduleStatement, WhileStatement );
  relationship R1036 is TypeRange unconditionally XX one BasicType, BasicType unconditionally YY one TypeRange;
  relationship R1037 is VariableDefinition unconditionally XX one BasicType, BasicType unconditionally YY one VariableDefinition;
  relationship R1038 is VariableDefinition unconditionally XX one Expression, Expression unconditionally YY one VariableDefinition;
  relationship R1039 is VariableElements unconditionally XX one Expression, Expression unconditionally YY one VariableElements;
  relationship R1040 is VariableRange unconditionally XX one Expression, Expression unconditionally YY one VariableRange;
  relationship R1041 is WhileStatement unconditionally XX many Statement, Statement unconditionally YY one WhileStatement;
  relationship R1042 is WhileStatement unconditionally XX one Expression, Expression unconditionally YY one WhileStatement;
  object AssignmentStatement is
    position : Position;
    //!relationship R1000 is AssignmentStatement unconditionally XX one Expression, Expression unconditionally YY one AssignmentStatement;
    value : iExpression;
    //!relationship R1001 is AssignmentStatement unconditionally XX one Expression, Expression unconditionally YY one AssignmentStatement;
    target : iExpression;
  end object; pragma id(1000);
  object CancelTimerStatement is
    position : Position;
    //!relationship R1002 is CancelTimerStatement unconditionally XX one Expression, Expression unconditionally YY one CancelTimerStatement;
    timerId : iExpression;
  end object; pragma id(1001);
  object CaseStatement is
    position : Position;
    //!relationship R1003 is CaseStatement unconditionally XX one Expression, Expression unconditionally YY one CaseStatement;
    discriminator : iExpression;
    List_alternatives : Alternative;
  end object; pragma id(1002);
  object CodeBlock is
    position : Position;
    topLevel : boolean;
  end object; pragma id(1003);
  object DelayStatement is
    position : Position;
    //!relationship R1004 is DelayStatement unconditionally XX one Expression, Expression unconditionally YY one DelayStatement;
    duration : iExpression;
  end object; pragma id(1004);
  object DeleteStatement is
    position : Position;
    //!relationship R1005 is DeleteStatement unconditionally XX one Expression, Expression unconditionally YY one DeleteStatement;
    //!instance
    my_instance : iExpression;
  end object; pragma id(1005);
  object DomainServiceInvocation is
  end object; pragma id(1006);
  object EraseStatement is
    position : Position;
    //!relationship R1006 is EraseStatement unconditionally XX one Expression, Expression unconditionally YY one EraseStatement;
    //!dictionary
    my_dictionary : iExpression;
    //!relationship R1007 is EraseStatement unconditionally XX one Expression, Expression unconditionally YY one EraseStatement;
    key : iExpression;
  end object; pragma id(1007);
  object ExceptionHandler is
    position : Position;
    //!relationship R1008 is ExceptionHandler unconditionally XX one ExceptionReference, ExceptionReference unconditionally YY one ExceptionHandler;
    //!exception
    my_exception : iExceptionReference;
  end object; pragma id(1008);
  object ExitStatement is
    position : Position;
    //!relationship R1009 is ExitStatement unconditionally XX one Expression, Expression unconditionally YY one ExitStatement;
    condition : iExpression;
  end object; pragma id(1009);
  object ForStatement is
    position : Position;
    //!relationship R1010 is ForStatement unconditionally XX one LoopSpec, LoopSpec unconditionally YY one ForStatement;
    loopSpec : iLoopSpec;
  end object; pragma id(1010);
  object FromToRange is
    //!relationship R1011 is FromToRange unconditionally XX one MinMaxRange, MinMaxRange unconditionally YY one FromToRange;
    //!range
    my_range : iMinMaxRange;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(1011);
  object GenerateStatement is
    position : Position;
    //!relationship R1012 is GenerateStatement unconditionally XX one EventExpression, EventExpression unconditionally YY one GenerateStatement;
    eventRef : iEventExpression;
    //!relationship R1013 is GenerateStatement unconditionally XX one Expression, Expression unconditionally YY one GenerateStatement;
    toInstance : iExpression;
    //!relationship R1014 is GenerateStatement unconditionally XX many Expression, Expression unconditionally YY one GenerateStatement;
    List_arguments : iExpression;
  end object; pragma id(1012);
  object IOStreamStatement is
    //!relationship R1015 is IOStreamStatement unconditionally XX one Expression, Expression unconditionally YY one IOStreamStatement;
    streamName : iExpression;
    List_arguments : IOExpression;
  end object; pragma id(1013);
  object IfStatement is
    position : Position;
    List_branches : Branch;
  end object; pragma id(1014);
  object InstanceServiceInvocation is
    position : Position;
    //!relationship R1016 is InstanceServiceInvocation unconditionally XX one ObjectService, ObjectService unconditionally YY one InstanceServiceInvocation;
    //!service
    my_service : iObjectService;
    //!relationship R1017 is InstanceServiceInvocation unconditionally XX many Expression, Expression unconditionally YY one InstanceServiceInvocation;
    List_arguments : iExpression;
    //!relationship R1018 is InstanceServiceInvocation unconditionally XX one Expression, Expression unconditionally YY one InstanceServiceInvocation;
    //!instance
    my_instance : iExpression;
  end object; pragma id(1015);
  object LinkUnlinkStatement is
    //!relationship R1019 is LinkUnlinkStatement unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkStatement;
    rhs : iExpression;
    //!relationship R1020 is LinkUnlinkStatement unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one LinkUnlinkStatement;
    relRef : iRelationshipSpecification;
    //!relationship R1021 is LinkUnlinkStatement unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkStatement;
    assoc : iExpression;
    position : Position;
    //!type
    my_type : Type;
    //!relationship R1022 is LinkUnlinkStatement unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkStatement;
    lhs : iExpression;
  end object; pragma id(1016);
  object LoopSpec is
    //!relationship R1024 is LoopSpec unconditionally XX one BasicType, BasicType unconditionally YY one LoopSpec;
    //!type
    my_type : iBasicType;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(1017);
  object ObjectServiceInvocation is
  end object; pragma id(1018);
  object PragmaStatement is
  end object; pragma id(1019);
  object RaiseStatement is
    position : Position;
    //!relationship R1025 is RaiseStatement unconditionally XX one Expression, Expression unconditionally YY one RaiseStatement;
    message : iExpression;
    //!relationship R1026 is RaiseStatement unconditionally XX one ExceptionReference, ExceptionReference unconditionally YY one RaiseStatement;
    //!exception
    my_exception : iExceptionReference;
  end object; pragma id(1020);
  object ReturnStatement is
    position : Position;
    //!relationship R1027 is ReturnStatement unconditionally XX one Service, Service unconditionally YY one ReturnStatement;
    currentService : iService;
    //!relationship R1028 is ReturnStatement unconditionally XX one Expression, Expression unconditionally YY one ReturnStatement;
    returnValue : iExpression;
  end object; pragma id(1021);
  object ScheduleStatement is
    isAbsolute : boolean;
    //!relationship R1029 is ScheduleStatement unconditionally XX one GenerateStatement, GenerateStatement unconditionally YY one ScheduleStatement;
    //!generate
    my_generate : iGenerateStatement;
    //!relationship R1030 is ScheduleStatement unconditionally XX one Expression, Expression unconditionally YY one ScheduleStatement;
    time : iExpression;
    //!relationship R1031 is ScheduleStatement unconditionally XX one Expression, Expression unconditionally YY one ScheduleStatement;
    period : iExpression;
    position : Position;
    //!relationship R1032 is ScheduleStatement unconditionally XX one Expression, Expression unconditionally YY one ScheduleStatement;
    timerId : iExpression;
  end object; pragma id(1022);
  object ServiceInvocation is
    position : Position;
    //!relationship R1034 is ServiceInvocation unconditionally XX many Expression, Expression unconditionally YY one ServiceInvocation;
    List_arguments : iExpression;
    //!service
    my_service : ServiceType;
  end object; pragma id(1023);
  object Statement is
    position : Position;
  end object; pragma id(1024);
  object TerminatorServiceInvocation is
  end object; pragma id(1025);
  object TypeRange is
    //!relationship R1036 is TypeRange unconditionally XX one BasicType, BasicType unconditionally YY one TypeRange;
    //!type
    my_type : iBasicType;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(1026);
  object VariableDefinition is
    //!relationship R1037 is VariableDefinition unconditionally XX one BasicType, BasicType unconditionally YY one VariableDefinition;
    //!type
    my_type : iBasicType;
    //!relationship R1038 is VariableDefinition unconditionally XX one Expression, Expression unconditionally YY one VariableDefinition;
    initialValue : iExpression;
    name : String;
    pragmas : PragmaList;
    //!readonly
    my_readonly : boolean;
  end object; pragma id(1027);
  object VariableElements is
    //!relationship R1039 is VariableElements unconditionally XX one Expression, Expression unconditionally YY one VariableElements;
    variable : iExpression;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(1028);
  object VariableRange is
    //!relationship R1040 is VariableRange unconditionally XX one Expression, Expression unconditionally YY one VariableRange;
    variable : iExpression;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(1029);
  object WhileStatement is
    position : Position;
    //!relationship R1041 is WhileStatement unconditionally XX many Statement, Statement unconditionally YY one WhileStatement;
    List_statements : iStatement;
    //!relationship R1042 is WhileStatement unconditionally XX one Expression, Expression unconditionally YY one WhileStatement;
    condition : iExpression;
  end object; pragma id(1030);

  //!imported
  object EventExpression is
    IMPORTED: integer;
  end object; pragma id(1031);

  //!imported
  object ObjectService is
    IMPORTED: integer;
  end object; pragma id(1032);

  //!imported
  object Service is
    IMPORTED: integer;
  end object; pragma id(1033);

  //!imported
  object BasicType is
    IMPORTED: integer;
  end object; pragma id(1034);

  //!imported
  object RelationshipSpecification is
    IMPORTED: integer;
  end object; pragma id(1035);

  //!imported
  object MinMaxRange is
    IMPORTED: integer;
  end object; pragma id(1036);

  //!imported
  object ExceptionReference is
    IMPORTED: integer;
  end object; pragma id(1037);

  //!imported
  object Expression is
    IMPORTED: integer;
  end object; pragma id(1038);
end domain;
