domain masl_statemodel is
  object EventDeclaration;
  object State;
  object TransitionOption;
  object TransitionRow;
  object TransitionTable;
  object Z_EventExpression_statemodel;
  object Z_ObjectDeclaration_statemodel;
  object Z_ParameterDefinition_statemodel;
  relationship R6100 is EventDeclaration conditionally carries many Z_ParameterDefinition_statemodel, Z_ParameterDefinition_statemodel conditionally is_carried_by many EventDeclaration;
  relationship R6101 is EventDeclaration unconditionally triggers one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel conditionally is_triggered_by many EventDeclaration;
  relationship R6104 is State conditionally carries many Z_ParameterDefinition_statemodel, Z_ParameterDefinition_statemodel conditionally is_carried_by one State;
  relationship R6105 is State unconditionally defines_lifecycle_of one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel conditionally cycles_through many State;
  relationship R6108 is TransitionOption unconditionally defines_input_stimulus one Z_EventExpression_statemodel, Z_EventExpression_statemodel conditionally stimulates one TransitionOption;
  relationship R6109 is TransitionOption unconditionally defines_output_response one State, State unconditionally responds one TransitionOption;
  relationship R6111 is TransitionRow unconditionally directs_events_for one State, State conditionally has_events_directed_by one TransitionRow;
  relationship R6112 is TransitionRow unconditionally provides many TransitionOption, TransitionOption unconditionally is_provided_by one TransitionRow;
  relationship R6113 is TransitionTable unconditionally occupies one Z_ObjectDeclaration_statemodel, Z_ObjectDeclaration_statemodel conditionally contains many TransitionTable;
  relationship R6114 is TransitionTable unconditionally contains many TransitionRow, TransitionRow unconditionally occupies one TransitionTable;
  object EventDeclaration is
    //!R6100
    List_parameters : iParameterDefinition;
    name : Name;
    //!R6101
    //!object
    my_object : iObjectDeclaration;
    //!type
    my_type : enumeratedEventType;
  end object; pragma id(6100);
  object State is
    //!R6104
    List_parameters : iParameterDefinition;
    name : Name;
    //!R6105
    //!object
    my_object : iObjectDeclaration;
    //!type
    my_type : enumeratedStateType;
  end object; pragma id(6102);
  object TransitionOption is
    //!R6108
    //!event
    my_event : iEventExpression;
    //!R6109
    destinationState : iState;
    //!type
    my_type : enumeratedTransitionType;
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
