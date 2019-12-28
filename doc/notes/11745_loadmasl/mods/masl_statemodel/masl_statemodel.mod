domain masl_statemodel is
  object EventDeclaration;
  object EventType;
  object State;
  object StateType;
  object TransitionOption;
  object TransitionRow;
  object TransitionTable;
  object TransitionType;
  object Z_EventExpression_statemodel;
  object Z_ObjectDeclaration_statemodel;
  object Z_ParameterDefinition_statemodel;
  relationship R6100 is EventDeclaration unconditionally XX many Z_ParameterDefinition_statemodel, Z_ParameterDefinition_statemodel unconditionally YY one EventDeclaration;
  relationship R6101 is EventDeclaration unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one EventDeclaration;
  relationship R6102 is EventDeclaration unconditionally XX one EventType, EventType unconditionally YY one EventDeclaration;
  relationship R6103 is EventType unconditionally XX one EventDeclaration, EventDeclaration unconditionally YY one EventType;
  relationship R6104 is State unconditionally XX many Z_ParameterDefinition_statemodel, Z_ParameterDefinition_statemodel unconditionally YY one State;
  relationship R6105 is State unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one State;
  relationship R6106 is State unconditionally XX one StateType, StateType unconditionally YY one State;
  relationship R6107 is StateType unconditionally XX one State, State unconditionally YY one StateType;
  relationship R6108 is TransitionOption unconditionally XX one Z_EventExpression_statemodel, Z_EventExpression_statemodel unconditionally YY one TransitionOption;
  relationship R6109 is TransitionOption unconditionally XX one State, State unconditionally YY one TransitionOption;
  relationship R6110 is TransitionOption unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionOption;
  relationship R6111 is TransitionRow unconditionally XX one State, State unconditionally YY one TransitionRow;
  relationship R6112 is TransitionRow unconditionally XX many TransitionOption, TransitionOption unconditionally YY one TransitionRow;
  relationship R6113 is TransitionTable unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one TransitionTable;
  relationship R6114 is TransitionTable unconditionally XX many TransitionRow, TransitionRow unconditionally YY one TransitionTable;
  relationship R6115 is TransitionType unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionType;
  object EventDeclaration is
    //!R6100
    List_parameters : iParameterDefinition;
    name : Name;
    //!R6101
    //!object
    my_object : iObjectDeclaration;
    //!R6102
    //!type
    my_type : iEventType;
  end object; pragma id(6100);
  object EventType is
    text : String;
    //!R6103
    //!type
    my_type : iEventDeclaration;
  end object; pragma id(6101);
  object State is
    //!R6104
    List_parameters : iParameterDefinition;
    name : Name;
    //!R6105
    //!object
    my_object : iObjectDeclaration;
    //!R6106
    //!type
    my_type : iStateType;
  end object; pragma id(6102);
  object StateType is
    text : String;
    //!R6107
    //!type
    my_type : iState;
  end object; pragma id(6103);
  object TransitionOption is
    //!R6108
    //!event
    my_event : iEventExpression;
    //!R6109
    destinationState : iState;
    //!R6110
    //!type
    my_type : iTransitionType;
  end object; pragma id(6104);
  object TransitionRow is
    //!R6111
    initialState : iState;
    //!R6112
    List_options : iTransitionOption;
  end object; pragma id(6105);
  object TransitionTable is
    //!R6113
    //!object
    my_object : iObjectDeclaration;
    //!R6114
    List_rows : iTransitionRow;
    isAssigner : boolean;
  end object; pragma id(6106);
  object TransitionType is
    text : String;
    //!R6115
    //!type
    my_type : iTransitionType;
  end object; pragma id(6107);

  //!IMPORTED
  object Z_EventExpression_statemodel is
  end object; pragma id(6108);

  //!IMPORTED
  object Z_ObjectDeclaration_statemodel is
  end object; pragma id(6109);

  //!IMPORTED
  object Z_ParameterDefinition_statemodel is
  end object; pragma id(6110);
end domain;
