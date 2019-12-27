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
  object Z_EventExpression_code;
  object Z_ObjectService_code;
  object Z_Service_code;
  object Z_BasicType_code;
  object Z_RelationshipSpecification_code;
  object Z_MinMaxRange_code;
  object Z_ExceptionReference_code;
  object Z_Expression_code;
  relationship R5100 is AssignmentStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one AssignmentStatement;
  relationship R5101 is AssignmentStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one AssignmentStatement;
  relationship R5102 is CancelTimerStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one CancelTimerStatement;
  relationship R5103 is CaseStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one CaseStatement;
  relationship R5104 is DelayStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one DelayStatement;
  relationship R5105 is DeleteStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one DeleteStatement;
  relationship R5106 is EraseStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one EraseStatement;
  relationship R5107 is EraseStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one EraseStatement;
  relationship R5108 is ExceptionHandler unconditionally XX one Z_ExceptionReference_code, Z_ExceptionReference_code unconditionally YY one ExceptionHandler;
  relationship R5109 is ExitStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ExitStatement;
  relationship R5110 is ForStatement unconditionally XX one LoopSpec, LoopSpec unconditionally YY one ForStatement;
  relationship R5111 is FromToRange unconditionally XX one Z_MinMaxRange_code, Z_MinMaxRange_code unconditionally YY one FromToRange;
  relationship R5112 is GenerateStatement unconditionally XX one Z_EventExpression_code, Z_EventExpression_code unconditionally YY one GenerateStatement;
  relationship R5113 is GenerateStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one GenerateStatement;
  relationship R5114 is GenerateStatement unconditionally XX many Z_Expression_code, Z_Expression_code unconditionally YY one GenerateStatement;
  relationship R5115 is IOStreamStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one IOStreamStatement;
  relationship R5116 is InstanceServiceInvocation unconditionally XX one Z_ObjectService_code, Z_ObjectService_code unconditionally YY one InstanceServiceInvocation;
  relationship R5117 is InstanceServiceInvocation unconditionally XX many Z_Expression_code, Z_Expression_code unconditionally YY one InstanceServiceInvocation;
  relationship R5118 is InstanceServiceInvocation unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one InstanceServiceInvocation;
  relationship R5119 is LinkUnlinkStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one LinkUnlinkStatement;
  relationship R5120 is LinkUnlinkStatement unconditionally XX one Z_RelationshipSpecification_code, Z_RelationshipSpecification_code unconditionally YY one LinkUnlinkStatement;
  relationship R5121 is LinkUnlinkStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one LinkUnlinkStatement;
  relationship R5122 is LinkUnlinkStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one LinkUnlinkStatement;
  relationship R5123 is LoopSpec is_a ( FromToRange, TypeRange, VariableElements, VariableRange );
  relationship R5124 is LoopSpec unconditionally XX one Z_BasicType_code, Z_BasicType_code unconditionally YY one LoopSpec;
  relationship R5125 is RaiseStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one RaiseStatement;
  relationship R5126 is RaiseStatement unconditionally XX one Z_ExceptionReference_code, Z_ExceptionReference_code unconditionally YY one RaiseStatement;
  relationship R5127 is ReturnStatement unconditionally XX one Z_Service_code, Z_Service_code unconditionally YY one ReturnStatement;
  relationship R5128 is ReturnStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ReturnStatement;
  relationship R5129 is ScheduleStatement unconditionally XX one GenerateStatement, GenerateStatement unconditionally YY one ScheduleStatement;
  relationship R5130 is ScheduleStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ScheduleStatement;
  relationship R5131 is ScheduleStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ScheduleStatement;
  relationship R5132 is ScheduleStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ScheduleStatement;
  relationship R5133 is ServiceInvocation is_a ( DomainServiceInvocation, InstanceServiceInvocation, ObjectServiceInvocation, TerminatorServiceInvocation );
  relationship R5134 is ServiceInvocation unconditionally XX many Z_Expression_code, Z_Expression_code unconditionally YY one ServiceInvocation;
  relationship R5135 is Statement is_a ( AssignmentStatement, CancelTimerStatement, CaseStatement, CodeBlock, DelayStatement, DeleteStatement, EraseStatement, ExitStatement, ForStatement, GenerateStatement, IOStreamStatement, IfStatement, LinkUnlinkStatement, PragmaStatement, RaiseStatement, ReturnStatement, ScheduleStatement, WhileStatement );
  relationship R5136 is TypeRange unconditionally XX one Z_BasicType_code, Z_BasicType_code unconditionally YY one TypeRange;
  relationship R5137 is VariableDefinition unconditionally XX one Z_BasicType_code, Z_BasicType_code unconditionally YY one VariableDefinition;
  relationship R5138 is VariableDefinition unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one VariableDefinition;
  relationship R5139 is VariableElements unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one VariableElements;
  relationship R5140 is VariableRange unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one VariableRange;
  relationship R5141 is WhileStatement unconditionally XX many Statement, Statement unconditionally YY one WhileStatement;
  relationship R5142 is WhileStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one WhileStatement;
  object AssignmentStatement is
    //!relationship R5100 is AssignmentStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one AssignmentStatement;
    value : iExpression;
    //!relationship R5101 is AssignmentStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one AssignmentStatement;
    target : iExpression;
  end object; pragma id(5100);
  object CancelTimerStatement is
    //!relationship R5102 is CancelTimerStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one CancelTimerStatement;
    timerId : iExpression;
  end object; pragma id(5101);
  object CaseStatement is
    //!relationship R5103 is CaseStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one CaseStatement;
    discriminator : iExpression;
    List_alternatives : Alternative;
  end object; pragma id(5102);
  object CodeBlock is
    topLevel : boolean;
  end object; pragma id(5103);
  object DelayStatement is
    //!relationship R5104 is DelayStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one DelayStatement;
    duration : iExpression;
  end object; pragma id(5104);
  object DeleteStatement is
    //!relationship R5105 is DeleteStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one DeleteStatement;
    //!instance
    my_instance : iExpression;
  end object; pragma id(5105);
  object DomainServiceInvocation is
  end object; pragma id(5106);
  object EraseStatement is
    //!relationship R5106 is EraseStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one EraseStatement;
    //!dictionary
    my_dictionary : iExpression;
    //!relationship R5107 is EraseStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one EraseStatement;
    key : iExpression;
  end object; pragma id(5107);
  object ExceptionHandler is
    //!relationship R5108 is ExceptionHandler unconditionally XX one Z_ExceptionReference_code, Z_ExceptionReference_code unconditionally YY one ExceptionHandler;
    //!exception
    my_exception : iExceptionReference;
  end object; pragma id(5108);
  object ExitStatement is
    //!relationship R5109 is ExitStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ExitStatement;
    condition : iExpression;
  end object; pragma id(5109);
  object ForStatement is
    //!relationship R5110 is ForStatement unconditionally XX one LoopSpec, LoopSpec unconditionally YY one ForStatement;
    loopSpec : iLoopSpec;
  end object; pragma id(5110);
  object FromToRange is
    //!relationship R5111 is FromToRange unconditionally XX one Z_MinMaxRange_code, Z_MinMaxRange_code unconditionally YY one FromToRange;
    //!range
    my_range : iMinMaxRange;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(5111);
  object GenerateStatement is
    //!relationship R5112 is GenerateStatement unconditionally XX one Z_EventExpression_code, Z_EventExpression_code unconditionally YY one GenerateStatement;
    eventRef : iEventExpression;
    //!relationship R5113 is GenerateStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one GenerateStatement;
    toInstance : iExpression;
    //!relationship R5114 is GenerateStatement unconditionally XX many Z_Expression_code, Z_Expression_code unconditionally YY one GenerateStatement;
    List_arguments : iExpression;
  end object; pragma id(5112);
  object IOStreamStatement is
    //!relationship R5115 is IOStreamStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one IOStreamStatement;
    streamName : iExpression;
    List_arguments : IOExpression;
  end object; pragma id(5113);
  object IfStatement is
    List_branches : Branch;
  end object; pragma id(5114);
  object InstanceServiceInvocation is
    //!relationship R5116 is InstanceServiceInvocation unconditionally XX one Z_ObjectService_code, Z_ObjectService_code unconditionally YY one InstanceServiceInvocation;
    //!service
    my_service : iObjectService;
    //!relationship R5117 is InstanceServiceInvocation unconditionally XX many Z_Expression_code, Z_Expression_code unconditionally YY one InstanceServiceInvocation;
    List_arguments : iExpression;
    //!relationship R5118 is InstanceServiceInvocation unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one InstanceServiceInvocation;
    //!instance
    my_instance : iExpression;
  end object; pragma id(5115);
  object LinkUnlinkStatement is
    //!relationship R5119 is LinkUnlinkStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one LinkUnlinkStatement;
    rhs : iExpression;
    //!relationship R5120 is LinkUnlinkStatement unconditionally XX one Z_RelationshipSpecification_code, Z_RelationshipSpecification_code unconditionally YY one LinkUnlinkStatement;
    relRef : iRelationshipSpecification;
    //!relationship R5121 is LinkUnlinkStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one LinkUnlinkStatement;
    assoc : iExpression;
    //!type
    my_type : Type;
    //!relationship R5122 is LinkUnlinkStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one LinkUnlinkStatement;
    lhs : iExpression;
  end object; pragma id(5116);
  object LoopSpec is
    //!relationship R5124 is LoopSpec unconditionally XX one Z_BasicType_code, Z_BasicType_code unconditionally YY one LoopSpec;
    //!type
    my_type : iBasicType;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(5117);
  object ObjectServiceInvocation is
  end object; pragma id(5118);
  object PragmaStatement is
  end object; pragma id(5119);
  object RaiseStatement is
    //!relationship R5125 is RaiseStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one RaiseStatement;
    message : iExpression;
    //!relationship R5126 is RaiseStatement unconditionally XX one Z_ExceptionReference_code, Z_ExceptionReference_code unconditionally YY one RaiseStatement;
    //!exception
    my_exception : iExceptionReference;
  end object; pragma id(5120);
  object ReturnStatement is
    //!relationship R5127 is ReturnStatement unconditionally XX one Z_Service_code, Z_Service_code unconditionally YY one ReturnStatement;
    currentService : iService;
    //!relationship R5128 is ReturnStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ReturnStatement;
    returnValue : iExpression;
  end object; pragma id(5121);
  object ScheduleStatement is
    isAbsolute : boolean;
    //!relationship R5129 is ScheduleStatement unconditionally XX one GenerateStatement, GenerateStatement unconditionally YY one ScheduleStatement;
    //!generate
    my_generate : iGenerateStatement;
    //!relationship R5130 is ScheduleStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ScheduleStatement;
    time : iExpression;
    //!relationship R5131 is ScheduleStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ScheduleStatement;
    period : iExpression;
    //!relationship R5132 is ScheduleStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one ScheduleStatement;
    timerId : iExpression;
  end object; pragma id(5122);
  object ServiceInvocation is
    //!relationship R5134 is ServiceInvocation unconditionally XX many Z_Expression_code, Z_Expression_code unconditionally YY one ServiceInvocation;
    List_arguments : iExpression;
    //!service
    my_service : ServiceType;
  end object; pragma id(5123);
  object Statement is
  end object; pragma id(5124);
  object TerminatorServiceInvocation is
  end object; pragma id(5125);
  object TypeRange is
    //!relationship R5136 is TypeRange unconditionally XX one Z_BasicType_code, Z_BasicType_code unconditionally YY one TypeRange;
    //!type
    my_type : iBasicType;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(5126);
  object VariableDefinition is
    //!relationship R5137 is VariableDefinition unconditionally XX one Z_BasicType_code, Z_BasicType_code unconditionally YY one VariableDefinition;
    //!type
    my_type : iBasicType;
    //!relationship R5138 is VariableDefinition unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one VariableDefinition;
    initialValue : iExpression;
    name : String;
    //!readonly
    my_readonly : boolean;
  end object; pragma id(5127);
  object VariableElements is
    //!relationship R5139 is VariableElements unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one VariableElements;
    variable : iExpression;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(5128);
  object VariableRange is
    //!relationship R5140 is VariableRange unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one VariableRange;
    variable : iExpression;
    //!reverse
    my_reverse : boolean;
    loopVariable : String;
  end object; pragma id(5129);
  object WhileStatement is
    //!relationship R5141 is WhileStatement unconditionally XX many Statement, Statement unconditionally YY one WhileStatement;
    List_statements : iStatement;
    //!relationship R5142 is WhileStatement unconditionally XX one Z_Expression_code, Z_Expression_code unconditionally YY one WhileStatement;
    condition : iExpression;
  end object; pragma id(5130);

  //!IMPORTED
  object Z_EventExpression_code is
  end object; pragma id(5131);

  //!IMPORTED
  object Z_ObjectService_code is
  end object; pragma id(5132);

  //!IMPORTED
  object Z_Service_code is
  end object; pragma id(5133);

  //!IMPORTED
  object Z_BasicType_code is
  end object; pragma id(5134);

  //!IMPORTED
  object Z_RelationshipSpecification_code is
  end object; pragma id(5135);

  //!IMPORTED
  object Z_MinMaxRange_code is
  end object; pragma id(5136);

  //!IMPORTED
  object Z_ExceptionReference_code is
  end object; pragma id(5137);

  //!IMPORTED
  object Z_Expression_code is
  end object; pragma id(5138);
end domain;
