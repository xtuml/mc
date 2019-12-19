domain masl_statemodel is
  object EventDeclaration;
  object EventType;
  object State;
  object StateType;
  object TransitionOption;
  object TransitionRow;
  object TransitionTable;
  object TransitionType;
  object EventExpression;
  object ObjectDeclaration;
  object ParameterDefinition;
  private type iEventDeclaration is instance of EventDeclaration;
  private type iEventType is instance of EventType;
  private type iState is instance of State;
  private type iStateType is instance of StateType;
  private type iTransitionOption is instance of TransitionOption;
  private type iTransitionRow is instance of TransitionRow;
  private type iTransitionTable is instance of TransitionTable;
  private type iTransitionType is instance of TransitionType;
  relationship R1800 is EventDeclaration unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one EventDeclaration;
  relationship R1801 is EventDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one EventDeclaration;
  relationship R1802 is EventDeclaration unconditionally XX one EventType, EventType unconditionally YY one EventDeclaration;
  relationship R1803 is EventType unconditionally XX one EventDeclaration, EventDeclaration unconditionally YY one EventType;
  relationship R1804 is State unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one State;
  relationship R1805 is State unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one State;
  relationship R1806 is State unconditionally XX one StateType, StateType unconditionally YY one State;
  relationship R1807 is StateType unconditionally XX one State, State unconditionally YY one StateType;
  relationship R1808 is TransitionOption unconditionally XX one EventExpression, EventExpression unconditionally YY one TransitionOption;
  relationship R1809 is TransitionOption unconditionally XX one State, State unconditionally YY one TransitionOption;
  relationship R1810 is TransitionOption unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionOption;
  relationship R1811 is TransitionRow unconditionally XX one State, State unconditionally YY one TransitionRow;
  relationship R1812 is TransitionRow unconditionally XX many TransitionOption, TransitionOption unconditionally YY one TransitionRow;
  relationship R1813 is TransitionTable unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one TransitionTable;
  relationship R1814 is TransitionTable unconditionally XX many TransitionRow, TransitionRow unconditionally YY one TransitionTable;
  relationship R1815 is TransitionType unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionType;
  object EventDeclaration is
    //!relationship R1800 is EventDeclaration unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one EventDeclaration;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R1801 is EventDeclaration unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one EventDeclaration;
    //!object
    my_object : iObjectDeclaration;
    pragmas : PragmaList;
    //!relationship R1802 is EventDeclaration unconditionally XX one EventType, EventType unconditionally YY one EventDeclaration;
    //!type
    my_type : iEventType;
    position : Position;
  end object; pragma id(1800);
  object EventType is
    text : String;
    //!relationship R1803 is EventType unconditionally XX one EventDeclaration, EventDeclaration unconditionally YY one EventType;
    //!type
    my_type : iEventDeclaration;
  end object; pragma id(1801);
  object State is
    //!relationship R1804 is State unconditionally XX many ParameterDefinition, ParameterDefinition unconditionally YY one State;
    List_parameters : iParameterDefinition;
    name : String;
    //!relationship R1805 is State unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one State;
    //!object
    my_object : iObjectDeclaration;
    pragmas : PragmaList;
    position : Position;
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
    //!relationship R1808 is TransitionOption unconditionally XX one EventExpression, EventExpression unconditionally YY one TransitionOption;
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
    pragmas : PragmaList;
    //!relationship R1812 is TransitionRow unconditionally XX many TransitionOption, TransitionOption unconditionally YY one TransitionRow;
    List_options : iTransitionOption;
  end object; pragma id(1805);
  object TransitionTable is
    position : Position;
    //!relationship R1813 is TransitionTable unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one TransitionTable;
    //!object
    my_object : iObjectDeclaration;
    //!relationship R1814 is TransitionTable unconditionally XX many TransitionRow, TransitionRow unconditionally YY one TransitionTable;
    List_rows : iTransitionRow;
    pragmas : PragmaList;
    isAssigner : boolean;
  end object; pragma id(1806);
  object TransitionType is
    text : String;
    //!relationship R1815 is TransitionType unconditionally XX one TransitionType, TransitionType unconditionally YY one TransitionType;
    //!type
    my_type : iTransitionType;
  end object; pragma id(1807);

  //!imported
  object EventExpression is
    IMPORTED: integer;
  end object; pragma id(1808);

  //!imported
  object ObjectDeclaration is
    IMPORTED: integer;
  end object; pragma id(1809);

  //!imported
  object ParameterDefinition is
    IMPORTED: integer;
  end object; pragma id(1810);
end domain;
