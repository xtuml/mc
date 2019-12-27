domain masl_expression is
  object AnyExpression;
  object CallExpression;
  object CastExpression;
  object CharacteristicExpression;
  object CharacteristicRange;
  object CorrelatedNavExpression;
  object CreateDurationExpression;
  object CreateExpression;
  object DictionaryAccessExpression;
  object DictionaryContainsExpression;
  object DictionaryKeysExpression;
  object DictionaryValuesExpression;
  object DotExpression;
  object ElementsExpression;
  object EofExpression;
  object EventExpression;
  object Expression;
  object FindAttributeNameExpression;
  object FindExpression;
  object FindParameterExpression;
  object IndexedNameExpression;
  object InstanceOrderingExpression;
  object LinkUnlinkExpression;
  object MinMaxRange;
  object NavigationExpression;
  object ObjectNameExpression;
  object OrderingExpression;
  object ParameterNameExpression;
  object ParseExpression;
  object RangeExpression;
  object SelectedAttributeExpression;
  object SelectedComponentExpression;
  object ServiceExpression;
  object SliceExpression;
  object SplitExpression;
  object StructureAggregate;
  object StructureOrderingExpression;
  object TerminatorNameExpression;
  object TimeFieldExpression;
  object TimerFieldExpression;
  object TimestampDeltaExpression;
  object TypeNameExpression;
  object UnaryExpression;
  object VariableNameExpression;
  object Z_ServiceOverload_expression;
  object Z_AttributeDeclaration_expression;
  object Z_VariableDefinition_expression;
  object Z_ObjectDeclaration_expression;
  object Z_BasicType_expression;
  object Z_StructureElement_expression;
  object Z_DomainTerminator_expression;
  object Z_EventDeclaration_expression;
  object Z_ParameterDefinition_expression;
  object Z_BinaryExpression_expression;
  object Z_RelationshipSpecification_expression;
  object Z_LiteralExpression_expression;
  relationship R5500 is CallExpression is_a ( CastExpression );
  relationship R5501 is CastExpression unconditionally XX one TypeNameExpression, TypeNameExpression unconditionally YY one CastExpression;
  relationship R5502 is CastExpression unconditionally XX one Expression, Expression unconditionally YY one CastExpression;
  relationship R5503 is CharacteristicExpression unconditionally XX many Expression, Expression unconditionally YY one CharacteristicExpression;
  relationship R5504 is CharacteristicExpression unconditionally XX one Expression, Expression unconditionally YY one CharacteristicExpression;
  relationship R5505 is CharacteristicRange unconditionally XX one CharacteristicExpression, CharacteristicExpression unconditionally YY one CharacteristicRange;
  relationship R5506 is CorrelatedNavExpression unconditionally XX one Expression, Expression unconditionally YY one CorrelatedNavExpression;
  relationship R5507 is CorrelatedNavExpression unconditionally XX one Z_RelationshipSpecification_expression, Z_RelationshipSpecification_expression unconditionally YY one CorrelatedNavExpression;
  relationship R5508 is CorrelatedNavExpression unconditionally XX one Expression, Expression unconditionally YY one CorrelatedNavExpression;
  relationship R5509 is CreateDurationExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one CreateDurationExpression;
  relationship R5510 is CreateDurationExpression unconditionally XX one Expression, Expression unconditionally YY one CreateDurationExpression;
  relationship R5511 is CreateExpression unconditionally XX one Z_ObjectDeclaration_expression, Z_ObjectDeclaration_expression unconditionally YY one CreateExpression;
  relationship R5512 is DictionaryAccessExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryAccessExpression;
  relationship R5513 is DictionaryAccessExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryAccessExpression;
  relationship R5514 is DictionaryContainsExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryContainsExpression;
  relationship R5515 is DictionaryContainsExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryContainsExpression;
  relationship R5516 is EventExpression unconditionally XX one Z_EventDeclaration_expression, Z_EventDeclaration_expression unconditionally YY one EventExpression;
  relationship R5517 is Expression is_a ( AnyExpression, Z_BinaryExpression_expression, CallExpression, CharacteristicExpression, CorrelatedNavExpression, CreateDurationExpression, CreateExpression, DictionaryAccessExpression, DictionaryContainsExpression, DictionaryKeysExpression, DictionaryValuesExpression, ElementsExpression, EofExpression, EventExpression, FindAttributeNameExpression, FindExpression, FindParameterExpression, IndexedNameExpression, LinkUnlinkExpression, Z_LiteralExpression_expression, NavigationExpression, ObjectNameExpression, OrderingExpression, ParameterNameExpression, ParseExpression, RangeExpression, SelectedAttributeExpression, SelectedComponentExpression, SliceExpression, SplitExpression, StructureAggregate, TerminatorNameExpression, TimeFieldExpression, TimerFieldExpression, TimestampDeltaExpression, TypeNameExpression, UnaryExpression, VariableNameExpression );
  relationship R5518 is FindAttributeNameExpression unconditionally XX one Z_AttributeDeclaration_expression, Z_AttributeDeclaration_expression unconditionally YY one FindAttributeNameExpression;
  relationship R5519 is FindExpression unconditionally XX one Expression, Expression unconditionally YY one FindExpression;
  relationship R5520 is FindExpression unconditionally XX one Expression, Expression unconditionally YY one FindExpression;
  relationship R5521 is FindParameterExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one FindParameterExpression;
  relationship R5522 is IndexedNameExpression unconditionally XX one Expression, Expression unconditionally YY one IndexedNameExpression;
  relationship R5523 is IndexedNameExpression unconditionally XX one Expression, Expression unconditionally YY one IndexedNameExpression;
  relationship R5524 is InstanceOrderingExpression unconditionally XX one Expression, Expression unconditionally YY one InstanceOrderingExpression;
  relationship R5525 is LinkUnlinkExpression unconditionally XX one Z_RelationshipSpecification_expression, Z_RelationshipSpecification_expression unconditionally YY one LinkUnlinkExpression;
  relationship R5526 is LinkUnlinkExpression unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkExpression;
  relationship R5527 is LinkUnlinkExpression unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkExpression;
  relationship R5528 is MinMaxRange unconditionally XX one Expression, Expression unconditionally YY one MinMaxRange;
  relationship R5529 is MinMaxRange unconditionally XX one Expression, Expression unconditionally YY one MinMaxRange;
  relationship R5530 is NavigationExpression unconditionally XX one Expression, Expression unconditionally YY one NavigationExpression;
  relationship R5531 is NavigationExpression unconditionally XX one Z_RelationshipSpecification_expression, Z_RelationshipSpecification_expression unconditionally YY one NavigationExpression;
  relationship R5532 is NavigationExpression unconditionally XX one Expression, Expression unconditionally YY one NavigationExpression;
  relationship R5533 is ObjectNameExpression unconditionally XX one Z_ObjectDeclaration_expression, Z_ObjectDeclaration_expression unconditionally YY one ObjectNameExpression;
  relationship R5534 is OrderingExpression is_a ( InstanceOrderingExpression, StructureOrderingExpression );
  relationship R5535 is OrderingExpression unconditionally XX one Expression, Expression unconditionally YY one OrderingExpression;
  relationship R5536 is ParameterNameExpression unconditionally XX one Z_ParameterDefinition_expression, Z_ParameterDefinition_expression unconditionally YY one ParameterNameExpression;
  relationship R5537 is ParseExpression unconditionally XX one Expression, Expression unconditionally YY one ParseExpression;
  relationship R5538 is ParseExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one ParseExpression;
  relationship R5539 is ParseExpression unconditionally XX one Expression, Expression unconditionally YY one ParseExpression;
  relationship R5540 is RangeExpression is_a ( CharacteristicRange, MinMaxRange );
  relationship R5541 is SelectedAttributeExpression unconditionally XX one Z_AttributeDeclaration_expression, Z_AttributeDeclaration_expression unconditionally YY one SelectedAttributeExpression;
  relationship R5542 is SelectedAttributeExpression unconditionally XX one Expression, Expression unconditionally YY one SelectedAttributeExpression;
  relationship R5543 is SelectedComponentExpression unconditionally XX one Z_StructureElement_expression, Z_StructureElement_expression unconditionally YY one SelectedComponentExpression;
  relationship R5544 is SelectedComponentExpression unconditionally XX one Expression, Expression unconditionally YY one SelectedComponentExpression;
  relationship R5545 is ServiceExpression unconditionally XX one Z_ServiceOverload_expression, Z_ServiceOverload_expression unconditionally YY one ServiceExpression;
  relationship R5546 is SliceExpression unconditionally XX one RangeExpression, RangeExpression unconditionally YY one SliceExpression;
  relationship R5547 is SliceExpression unconditionally XX one Expression, Expression unconditionally YY one SliceExpression;
  relationship R5548 is SplitExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one SplitExpression;
  relationship R5549 is SplitExpression unconditionally XX many Expression, Expression unconditionally YY one SplitExpression;
  relationship R5550 is SplitExpression unconditionally XX one Expression, Expression unconditionally YY one SplitExpression;
  relationship R5551 is StructureAggregate unconditionally XX many Expression, Expression unconditionally YY one StructureAggregate;
  relationship R5552 is StructureAggregate unconditionally XX many Expression, Expression unconditionally YY one StructureAggregate;
  relationship R5553 is StructureAggregate unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one StructureAggregate;
  relationship R5554 is StructureOrderingExpression unconditionally XX one Expression, Expression unconditionally YY one StructureOrderingExpression;
  relationship R5555 is TerminatorNameExpression unconditionally XX one Z_DomainTerminator_expression, Z_DomainTerminator_expression unconditionally YY one TerminatorNameExpression;
  relationship R5556 is TimeFieldExpression unconditionally XX one Expression, Expression unconditionally YY one TimeFieldExpression;
  relationship R5557 is TimerFieldExpression unconditionally XX one Expression, Expression unconditionally YY one TimerFieldExpression;
  relationship R5558 is TimestampDeltaExpression unconditionally XX one Expression, Expression unconditionally YY one TimestampDeltaExpression;
  relationship R5559 is TimestampDeltaExpression unconditionally XX one Expression, Expression unconditionally YY one TimestampDeltaExpression;
  relationship R5560 is TypeNameExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one TypeNameExpression;
  relationship R5561 is UnaryExpression unconditionally XX one Expression, Expression unconditionally YY one UnaryExpression;
  relationship R5562 is VariableNameExpression unconditionally XX one Z_VariableDefinition_expression, Z_VariableDefinition_expression unconditionally YY one VariableNameExpression;
  object AnyExpression is
  end object; pragma id(5500);
  object CallExpression is
  end object; pragma id(5501);
  object CastExpression is
    //!relationship R5501 is CastExpression unconditionally XX one TypeNameExpression, TypeNameExpression unconditionally YY one CastExpression;
    //!type
    my_type : iTypeNameExpression;
    //!relationship R5502 is CastExpression unconditionally XX one Expression, Expression unconditionally YY one CastExpression;
    rhs : iExpression;
  end object; pragma id(5502);
  object CharacteristicExpression is
    //!relationship R5503 is CharacteristicExpression unconditionally XX many Expression, Expression unconditionally YY one CharacteristicExpression;
    List_arguments : iExpression;
    characteristic : Type;
    //!relationship R5504 is CharacteristicExpression unconditionally XX one Expression, Expression unconditionally YY one CharacteristicExpression;
    lhs : iExpression;
  end object; pragma id(5503);
  object CharacteristicRange is
    //!relationship R5505 is CharacteristicRange unconditionally XX one CharacteristicExpression, CharacteristicExpression unconditionally YY one CharacteristicRange;
    //!range
    my_range : iCharacteristicExpression;
  end object; pragma id(5504);
  object CorrelatedNavExpression is
    //!relationship R5506 is CorrelatedNavExpression unconditionally XX one Expression, Expression unconditionally YY one CorrelatedNavExpression;
    rhs : iExpression;
    //!relationship R5507 is CorrelatedNavExpression unconditionally XX one Z_RelationshipSpecification_expression, Z_RelationshipSpecification_expression unconditionally YY one CorrelatedNavExpression;
    //!relationship
    my_relationship : iRelationshipSpecification;
    //!relationship R5508 is CorrelatedNavExpression unconditionally XX one Expression, Expression unconditionally YY one CorrelatedNavExpression;
    lhs : iExpression;
  end object; pragma id(5505);
  object CreateDurationExpression is
    characteristic : String;
    //!relationship R5509 is CreateDurationExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one CreateDurationExpression;
    lhs : iBasicType;
    field : Field;
    //!relationship R5510 is CreateDurationExpression unconditionally XX one Expression, Expression unconditionally YY one CreateDurationExpression;
    argument : iExpression;
  end object; pragma id(5506);
  object CreateExpression is
    //!relationship R5511 is CreateExpression unconditionally XX one Z_ObjectDeclaration_expression, Z_ObjectDeclaration_expression unconditionally YY one CreateExpression;
    //!object
    my_object : iObjectDeclaration;
    List_aggregate : CreateAggregateValue;
  end object; pragma id(5507);
  object DictionaryAccessExpression is
    //!relationship R5512 is DictionaryAccessExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryAccessExpression;
    index : iExpression;
    //!relationship R5513 is DictionaryAccessExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryAccessExpression;
    prefix : iExpression;
  end object; pragma id(5508);
  object DictionaryContainsExpression is
    //!relationship R5514 is DictionaryContainsExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryContainsExpression;
    index : iExpression;
    //!relationship R5515 is DictionaryContainsExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryContainsExpression;
    prefix : iExpression;
  end object; pragma id(5509);
  object DictionaryKeysExpression is
  end object; pragma id(5510);
  object DictionaryValuesExpression is
  end object; pragma id(5511);
  object DotExpression is
  end object; pragma id(5512);
  object ElementsExpression is
  end object; pragma id(5513);
  object EofExpression is
  end object; pragma id(5514);
  object EventExpression is
    //!relationship R5516 is EventExpression unconditionally XX one Z_EventDeclaration_expression, Z_EventDeclaration_expression unconditionally YY one EventExpression;
    //!event
    my_event : iEventDeclaration;
  end object; pragma id(5515);
  object Expression is
  end object; pragma id(5516);
  object FindAttributeNameExpression is
    //!relationship R5518 is FindAttributeNameExpression unconditionally XX one Z_AttributeDeclaration_expression, Z_AttributeDeclaration_expression unconditionally YY one FindAttributeNameExpression;
    attribute : iAttributeDeclaration;
  end object; pragma id(5517);
  object FindExpression is
    //!relationship R5519 is FindExpression unconditionally XX one Expression, Expression unconditionally YY one FindExpression;
    collection : iExpression;
    findType : ImplType;
    //!relationship R5520 is FindExpression unconditionally XX one Expression, Expression unconditionally YY one FindExpression;
    condition : iExpression;
  end object; pragma id(5518);
  object FindParameterExpression is
    //!relationship R5521 is FindParameterExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one FindParameterExpression;
    //!type
    my_type : iBasicType;
  end object; pragma id(5519);
  object IndexedNameExpression is
    //!relationship R5522 is IndexedNameExpression unconditionally XX one Expression, Expression unconditionally YY one IndexedNameExpression;
    index : iExpression;
    //!relationship R5523 is IndexedNameExpression unconditionally XX one Expression, Expression unconditionally YY one IndexedNameExpression;
    prefix : iExpression;
  end object; pragma id(5520);
  object InstanceOrderingExpression is
    List_components : OrderComponent;
    //!relationship R5524 is InstanceOrderingExpression unconditionally XX one Expression, Expression unconditionally YY one InstanceOrderingExpression;
    collection : iExpression;
    //!reverse
    my_reverse : boolean;
  end object; pragma id(5521);
  object LinkUnlinkExpression is
    //!type
    my_type : Type;
    //!relationship R5525 is LinkUnlinkExpression unconditionally XX one Z_RelationshipSpecification_expression, Z_RelationshipSpecification_expression unconditionally YY one LinkUnlinkExpression;
    relRef : iRelationshipSpecification;
    //!relationship R5526 is LinkUnlinkExpression unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkExpression;
    lhs : iExpression;
    //!relationship R5527 is LinkUnlinkExpression unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkExpression;
    rhs : iExpression;
  end object; pragma id(5522);
  object MinMaxRange is
    //!relationship R5528 is MinMaxRange unconditionally XX one Expression, Expression unconditionally YY one MinMaxRange;
    max : iExpression;
    //!relationship R5529 is MinMaxRange unconditionally XX one Expression, Expression unconditionally YY one MinMaxRange;
    min : iExpression;
  end object; pragma id(5523);
  object NavigationExpression is
    //!relationship R5530 is NavigationExpression unconditionally XX one Expression, Expression unconditionally YY one NavigationExpression;
    whereClause : iExpression;
    //!relationship R5531 is NavigationExpression unconditionally XX one Z_RelationshipSpecification_expression, Z_RelationshipSpecification_expression unconditionally YY one NavigationExpression;
    //!relationship
    my_relationship : iRelationshipSpecification;
    //!relationship R5532 is NavigationExpression unconditionally XX one Expression, Expression unconditionally YY one NavigationExpression;
    lhs : iExpression;
  end object; pragma id(5524);
  object ObjectNameExpression is
    //!relationship R5533 is ObjectNameExpression unconditionally XX one Z_ObjectDeclaration_expression, Z_ObjectDeclaration_expression unconditionally YY one ObjectNameExpression;
    //!object
    my_object : iObjectDeclaration;
  end object; pragma id(5525);
  object OrderingExpression is
    //!reverse
    my_reverse : boolean;
    //!relationship R5535 is OrderingExpression unconditionally XX one Expression, Expression unconditionally YY one OrderingExpression;
    collection : iExpression;
  end object; pragma id(5526);
  object ParameterNameExpression is
    //!relationship R5536 is ParameterNameExpression unconditionally XX one Z_ParameterDefinition_expression, Z_ParameterDefinition_expression unconditionally YY one ParameterNameExpression;
    param : iParameterDefinition;
  end object; pragma id(5527);
  object ParseExpression is
    //!relationship R5537 is ParseExpression unconditionally XX one Expression, Expression unconditionally YY one ParseExpression;
    base : iExpression;
    //!relationship R5538 is ParseExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one ParseExpression;
    lhs : iBasicType;
    //!relationship R5539 is ParseExpression unconditionally XX one Expression, Expression unconditionally YY one ParseExpression;
    argument : iExpression;
  end object; pragma id(5528);
  object RangeExpression is
  end object; pragma id(5529);
  object SelectedAttributeExpression is
    //!relationship R5541 is SelectedAttributeExpression unconditionally XX one Z_AttributeDeclaration_expression, Z_AttributeDeclaration_expression unconditionally YY one SelectedAttributeExpression;
    attribute : iAttributeDeclaration;
    //!relationship R5542 is SelectedAttributeExpression unconditionally XX one Expression, Expression unconditionally YY one SelectedAttributeExpression;
    prefix : iExpression;
  end object; pragma id(5530);
  object SelectedComponentExpression is
    //!relationship R5543 is SelectedComponentExpression unconditionally XX one Z_StructureElement_expression, Z_StructureElement_expression unconditionally YY one SelectedComponentExpression;
    component : iStructureElement;
    //!relationship R5544 is SelectedComponentExpression unconditionally XX one Expression, Expression unconditionally YY one SelectedComponentExpression;
    prefix : iExpression;
  end object; pragma id(5531);
  object ServiceExpression is
    //!relationship R5545 is ServiceExpression unconditionally XX one Z_ServiceOverload_expression, Z_ServiceOverload_expression unconditionally YY one ServiceExpression;
    overload : iServiceOverload;
  end object; pragma id(5532);
  object SliceExpression is
    //!relationship R5546 is SliceExpression unconditionally XX one RangeExpression, RangeExpression unconditionally YY one SliceExpression;
    //!range
    my_range : iRangeExpression;
    //!relationship R5547 is SliceExpression unconditionally XX one Expression, Expression unconditionally YY one SliceExpression;
    prefix : iExpression;
  end object; pragma id(5533);
  object SplitExpression is
    fields : Set;
    //!relationship R5548 is SplitExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one SplitExpression;
    resultType : iBasicType;
    characteristic : String;
    //!relationship R5549 is SplitExpression unconditionally XX many Expression, Expression unconditionally YY one SplitExpression;
    List_args : iExpression;
    //!relationship R5550 is SplitExpression unconditionally XX one Expression, Expression unconditionally YY one SplitExpression;
    lhs : iExpression;
    splitType : Type;
  end object; pragma id(5534);
  object StructureAggregate is
    //!relationship R5551 is StructureAggregate unconditionally XX many Expression, Expression unconditionally YY one StructureAggregate;
    List_elements : iExpression;
    //!relationship R5552 is StructureAggregate unconditionally XX many Expression, Expression unconditionally YY one StructureAggregate;
    List_elements1 : iExpression;
    //!relationship R5553 is StructureAggregate unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one StructureAggregate;
    //!type
    my_type : iBasicType;
  end object; pragma id(5535);
  object StructureOrderingExpression is
    List_components : OrderComponent;
    //!relationship R5554 is StructureOrderingExpression unconditionally XX one Expression, Expression unconditionally YY one StructureOrderingExpression;
    collection : iExpression;
    //!reverse
    my_reverse : boolean;
  end object; pragma id(5536);
  object TerminatorNameExpression is
    //!relationship R5555 is TerminatorNameExpression unconditionally XX one Z_DomainTerminator_expression, Z_DomainTerminator_expression unconditionally YY one TerminatorNameExpression;
    //!terminator
    my_terminator : iDomainTerminator;
  end object; pragma id(5537);
  object TimeFieldExpression is
    characteristic : String;
    field : Field;
    //!relationship R5556 is TimeFieldExpression unconditionally XX one Expression, Expression unconditionally YY one TimeFieldExpression;
    lhs : iExpression;
  end object; pragma id(5538);
  object TimerFieldExpression is
    field : Field;
    //!relationship R5557 is TimerFieldExpression unconditionally XX one Expression, Expression unconditionally YY one TimerFieldExpression;
    lhs : iExpression;
  end object; pragma id(5539);
  object TimestampDeltaExpression is
    characteristic : String;
    //!relationship R5558 is TimestampDeltaExpression unconditionally XX one Expression, Expression unconditionally YY one TimestampDeltaExpression;
    arg : iExpression;
    //!relationship R5559 is TimestampDeltaExpression unconditionally XX one Expression, Expression unconditionally YY one TimestampDeltaExpression;
    lhs : iExpression;
    splitType : Type;
  end object; pragma id(5540);
  object TypeNameExpression is
    //!relationship R5560 is TypeNameExpression unconditionally XX one Z_BasicType_expression, Z_BasicType_expression unconditionally YY one TypeNameExpression;
    //!type
    my_type : iBasicType;
  end object; pragma id(5541);
  object UnaryExpression is
    operator : OperatorRef;
    //!relationship R5561 is UnaryExpression unconditionally XX one Expression, Expression unconditionally YY one UnaryExpression;
    rhs : iExpression;
  end object; pragma id(5542);
  object VariableNameExpression is
    //!relationship R5562 is VariableNameExpression unconditionally XX one Z_VariableDefinition_expression, Z_VariableDefinition_expression unconditionally YY one VariableNameExpression;
    definition : iVariableDefinition;
  end object; pragma id(5543);

  //!IMPORTED
  object Z_ServiceOverload_expression is
  end object; pragma id(5544);

  //!IMPORTED
  object Z_AttributeDeclaration_expression is
  end object; pragma id(5545);

  //!IMPORTED
  object Z_VariableDefinition_expression is
  end object; pragma id(5546);

  //!IMPORTED
  object Z_ObjectDeclaration_expression is
  end object; pragma id(5547);

  //!IMPORTED
  object Z_BasicType_expression is
  end object; pragma id(5548);

  //!IMPORTED
  object Z_StructureElement_expression is
  end object; pragma id(5549);

  //!IMPORTED
  object Z_DomainTerminator_expression is
  end object; pragma id(5550);

  //!IMPORTED
  object Z_EventDeclaration_expression is
  end object; pragma id(5551);

  //!IMPORTED
  object Z_ParameterDefinition_expression is
  end object; pragma id(5552);

  //!IMPORTED
  object Z_BinaryExpression_expression is
  end object; pragma id(5553);

  //!IMPORTED
  object Z_RelationshipSpecification_expression is
  end object; pragma id(5554);

  //!IMPORTED
  object Z_LiteralExpression_expression is
  end object; pragma id(5555);
end domain;
