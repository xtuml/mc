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
  relationship R1800 is EventDeclaration unconditionally XX many Z_ParameterDefinition_statemodel, Z_ParameterDefinition_statemodel unconditionally YY one EventDeclaration;
  relationship R1801 is EventDeclaration unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one EventDeclaration;
  relationship R1802 is EventDeclaration unconditionally XX one EventType, EventType unconditionally YY one EventDeclaration;
  relationship R1803 is EventType unconditionally XX one EventDeclaration, EventDeclaration unconditionally YY one EventType;
  relationship R1804 is State unconditionally XX many Z_ParameterDefinition_statemodel, Z_ParameterDefinition_statemodel unconditionally YY one State;
  relationship R1805 is State unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one State;
  relationship R1806 is State unconditionally XX one StateType, StateType unconditionally YY one State;
  relationship R1807 is StateType unconditionally XX one State, State unconditionally YY one StateType;
  relationship R1808 is TransitionOption unconditionally XX one Z_EventExpression_statemodel, Z_EventExpression_statemodel unconditionally YY one TransitionOption;
  relationship R1809 is TransitionOption unconditionally XX one State, State unconditionally YY one TransitionOption;
  relationship R1810 is TransitionOption unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionOption;
  relationship R1811 is TransitionRow unconditionally XX one State, State unconditionally YY one TransitionRow;
  relationship R1812 is TransitionRow unconditionally XX many TransitionOption, TransitionOption unconditionally YY one TransitionRow;
  relationship R1813 is TransitionTable unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one TransitionTable;
  relationship R1814 is TransitionTable unconditionally XX many TransitionRow, TransitionRow unconditionally YY one TransitionTable;
  relationship R1815 is TransitionType unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionType;
  object EventDeclaration is
    //!relationship R1800 is EventDeclaration unconditionally XX many Z_ParameterDefinition_statemodel, Z_ParameterDefinition_statemodel unconditionally YY one EventDeclaration;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R1801 is EventDeclaration unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one EventDeclaration;
    //!object
    my_object : iObjectDeclaration;
    //!relationship R1802 is EventDeclaration unconditionally XX one EventType, EventType unconditionally YY one EventDeclaration;
    //!type
    my_type : iEventType;
  end object; pragma id(1800);
  object EventType is
    text : String;
    //!relationship R1803 is EventType unconditionally XX one EventDeclaration, EventDeclaration unconditionally YY one EventType;
    //!type
    my_type : iEventDeclaration;
  end object; pragma id(1801);
  object State is
    //!relationship R1804 is State unconditionally XX many Z_ParameterDefinition_statemodel, Z_ParameterDefinition_statemodel unconditionally YY one State;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R1805 is State unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one State;
    //!object
    my_object : iObjectDeclaration;
    //!relationship R1806 is State unconditionally XX one StateType, StateType unconditionally YY one State;
    //!type
    my_type : iStateType;
  end object; pragma id(1802);
  object StateType is
    text : String;
    //!relationship R1807 is StateType unconditionally XX one State, State unconditionally YY one StateType;
    //!type
    my_type : iState;
  end object; pragma id(1803);
  object TransitionOption is
    //!relationship R1808 is TransitionOption unconditionally XX one Z_EventExpression_statemodel, Z_EventExpression_statemodel unconditionally YY one TransitionOption;
    //!event
    my_event : iEventExpression;
    //!relationship R1809 is TransitionOption unconditionally XX one State, State unconditionally YY one TransitionOption;
    destinationState : iState;
    //!relationship R1810 is TransitionOption unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionOption;
    //!type
    my_type : iTransitionType;
  end object; pragma id(1804);
  object TransitionRow is
    //!relationship R1811 is TransitionRow unconditionally XX one State, State unconditionally YY one TransitionRow;
    initialState : iState;
    //!relationship R1812 is TransitionRow unconditionally XX many TransitionOption, TransitionOption unconditionally YY one TransitionRow;
    List_options : iTransitionOption;
  end object; pragma id(1805);
  object TransitionTable is
    //!relationship R1813 is TransitionTable unconditionally XX one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel unconditionally YY one TransitionTable;
    //!object
    my_object : iObjectDeclaration;
    //!relationship R1814 is TransitionTable unconditionally XX many TransitionRow, TransitionRow unconditionally YY one TransitionTable;
    List_rows : iTransitionRow;
    isAssigner : boolean;
  end object; pragma id(1806);
  object TransitionType is
    text : String;
    //!relationship R1815 is TransitionType unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionType;
    //!type
    my_type : iTransitionType;
  end object; pragma id(1807);

  //!IMPORTED
  object Z_EventExpression_statemodel is
  end object; pragma id(1808);

  //!IMPORTED
  object Z_ObjectDeclaration_statemodel is
  end object; pragma id(1809);

  //!IMPORTED
  object Z_ParameterDefinition_statemodel is
  end object; pragma id(1810);
end domain;
