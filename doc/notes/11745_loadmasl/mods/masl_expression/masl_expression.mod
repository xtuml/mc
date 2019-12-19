domain masl_expression is
  object AnyExpression;
  object BinaryAdditiveExpression;
  object BinaryCollectionExpression;
  object BinaryComparisonExpression;
  object BinaryExpression;
  object BinaryLogicalExpression;
  object BinaryMultiplicativeExpression;
  object BooleanLiteral;
  object CallExpression;
  object CastExpression;
  object CharacterLiteral;
  object CharacteristicExpression;
  object CharacteristicRange;
  object ConsoleLiteral;
  object CorrelatedNavExpression;
  object CreateDurationExpression;
  object CreateExpression;
  object DictionaryAccessExpression;
  object DictionaryContainsExpression;
  object DictionaryKeysExpression;
  object DictionaryValuesExpression;
  object DomainFunctionInvocation;
  object DotExpression;
  object DurationLiteral;
  object ElementsExpression;
  object EndlLiteral;
  object EnumerateLiteral;
  object EofExpression;
  object EventExpression;
  object Expression;
  object FindAttributeNameExpression;
  object FindExpression;
  object FindParameterExpression;
  object FlushLiteral;
  object FunctionInvocation;
  object IndexedNameExpression;
  object InstanceFunctionInvocation;
  object InstanceOrderingExpression;
  object IntegerLiteral;
  object LinkUnlinkExpression;
  object LiteralExpression;
  object MinMaxRange;
  object NavigationExpression;
  object NullLiteral;
  object NumericLiteral;
  object ObjectFunctionInvocation;
  object ObjectNameExpression;
  object OrderingExpression;
  object ParameterNameExpression;
  object ParseExpression;
  object RangeExpression;
  object RealLiteral;
  object SelectedAttributeExpression;
  object SelectedComponentExpression;
  object ServiceExpression;
  object SliceExpression;
  object SplitExpression;
  object StringLiteral;
  object StructureAggregate;
  object StructureOrderingExpression;
  object TerminatorFunctionInvocation;
  object TerminatorNameExpression;
  object ThisLiteral;
  object TimeFieldExpression;
  object TimerFieldExpression;
  object TimestampDeltaExpression;
  object TimestampLiteral;
  object TypeNameExpression;
  object UnaryExpression;
  object VariableNameExpression;
  object ServiceOverload;
  object ObjectService;
  object Service;
  object EnumerateItem;
  object DomainService;
  object VariableDefinition;
  object ObjectDeclaration;
  object BasicType;
  object StructureElement;
  object AttributeDeclaration;
  object State;
  object DomainTerminator;
  object EventDeclaration;
  object ParameterDefinition;
  object RelationshipSpecification;
  object DomainTerminatorService;
  private type iAnyExpression is instance of AnyExpression;
  private type iBinaryAdditiveExpression is instance of BinaryAdditiveExpression;
  private type iBinaryCollectionExpression is instance of BinaryCollectionExpression;
  private type iBinaryComparisonExpression is instance of BinaryComparisonExpression;
  private type iBinaryExpression is instance of BinaryExpression;
  private type iBinaryLogicalExpression is instance of BinaryLogicalExpression;
  private type iBinaryMultiplicativeExpression is instance of BinaryMultiplicativeExpression;
  private type iBooleanLiteral is instance of BooleanLiteral;
  private type iCallExpression is instance of CallExpression;
  private type iCastExpression is instance of CastExpression;
  private type iCharacterLiteral is instance of CharacterLiteral;
  private type iCharacteristicExpression is instance of CharacteristicExpression;
  private type iCharacteristicRange is instance of CharacteristicRange;
  private type iConsoleLiteral is instance of ConsoleLiteral;
  private type iCorrelatedNavExpression is instance of CorrelatedNavExpression;
  private type iCreateDurationExpression is instance of CreateDurationExpression;
  private type iCreateExpression is instance of CreateExpression;
  private type iDictionaryAccessExpression is instance of DictionaryAccessExpression;
  private type iDictionaryContainsExpression is instance of DictionaryContainsExpression;
  private type iDictionaryKeysExpression is instance of DictionaryKeysExpression;
  private type iDictionaryValuesExpression is instance of DictionaryValuesExpression;
  private type iDomainFunctionInvocation is instance of DomainFunctionInvocation;
  private type iDotExpression is instance of DotExpression;
  private type iDurationLiteral is instance of DurationLiteral;
  private type iElementsExpression is instance of ElementsExpression;
  private type iEndlLiteral is instance of EndlLiteral;
  private type iEnumerateLiteral is instance of EnumerateLiteral;
  private type iEofExpression is instance of EofExpression;
  private type iEventExpression is instance of EventExpression;
  private type iExpression is instance of Expression;
  private type iFindAttributeNameExpression is instance of FindAttributeNameExpression;
  private type iFindExpression is instance of FindExpression;
  private type iFindParameterExpression is instance of FindParameterExpression;
  private type iFlushLiteral is instance of FlushLiteral;
  private type iFunctionInvocation is instance of FunctionInvocation;
  private type iIndexedNameExpression is instance of IndexedNameExpression;
  private type iInstanceFunctionInvocation is instance of InstanceFunctionInvocation;
  private type iInstanceOrderingExpression is instance of InstanceOrderingExpression;
  private type iIntegerLiteral is instance of IntegerLiteral;
  private type iLinkUnlinkExpression is instance of LinkUnlinkExpression;
  private type iLiteralExpression is instance of LiteralExpression;
  private type iMinMaxRange is instance of MinMaxRange;
  private type iNavigationExpression is instance of NavigationExpression;
  private type iNullLiteral is instance of NullLiteral;
  private type iNumericLiteral is instance of NumericLiteral;
  private type iObjectFunctionInvocation is instance of ObjectFunctionInvocation;
  private type iObjectNameExpression is instance of ObjectNameExpression;
  private type iOrderingExpression is instance of OrderingExpression;
  private type iParameterNameExpression is instance of ParameterNameExpression;
  private type iParseExpression is instance of ParseExpression;
  private type iRangeExpression is instance of RangeExpression;
  private type iRealLiteral is instance of RealLiteral;
  private type iSelectedAttributeExpression is instance of SelectedAttributeExpression;
  private type iSelectedComponentExpression is instance of SelectedComponentExpression;
  private type iServiceExpression is instance of ServiceExpression;
  private type iSliceExpression is instance of SliceExpression;
  private type iSplitExpression is instance of SplitExpression;
  private type iStringLiteral is instance of StringLiteral;
  private type iStructureAggregate is instance of StructureAggregate;
  private type iStructureOrderingExpression is instance of StructureOrderingExpression;
  private type iTerminatorFunctionInvocation is instance of TerminatorFunctionInvocation;
  private type iTerminatorNameExpression is instance of TerminatorNameExpression;
  private type iThisLiteral is instance of ThisLiteral;
  private type iTimeFieldExpression is instance of TimeFieldExpression;
  private type iTimerFieldExpression is instance of TimerFieldExpression;
  private type iTimestampDeltaExpression is instance of TimestampDeltaExpression;
  private type iTimestampLiteral is instance of TimestampLiteral;
  private type iTypeNameExpression is instance of TypeNameExpression;
  private type iUnaryExpression is instance of UnaryExpression;
  private type iVariableNameExpression is instance of VariableNameExpression;
  relationship R1400 is BinaryAdditiveExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryAdditiveExpression;
  relationship R1401 is BinaryAdditiveExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryAdditiveExpression;
  relationship R1402 is BinaryCollectionExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryCollectionExpression;
  relationship R1403 is BinaryCollectionExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryCollectionExpression;
  relationship R1404 is BinaryComparisonExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryComparisonExpression;
  relationship R1405 is BinaryComparisonExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryComparisonExpression;
  relationship R1406 is BinaryExpression is_a ( BinaryAdditiveExpression, BinaryCollectionExpression, BinaryComparisonExpression, BinaryLogicalExpression, BinaryMultiplicativeExpression );
  relationship R1407 is BinaryLogicalExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryLogicalExpression;
  relationship R1408 is BinaryLogicalExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryLogicalExpression;
  relationship R1409 is BinaryMultiplicativeExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryMultiplicativeExpression;
  relationship R1410 is BinaryMultiplicativeExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryMultiplicativeExpression;
  relationship R1411 is CallExpression is_a ( CastExpression );
  relationship R1412 is CastExpression unconditionally XX one TypeNameExpression, TypeNameExpression unconditionally YY one CastExpression;
  relationship R1413 is CastExpression unconditionally XX one Expression, Expression unconditionally YY one CastExpression;
  relationship R1414 is CharacteristicExpression unconditionally XX many Expression, Expression unconditionally YY one CharacteristicExpression;
  relationship R1415 is CharacteristicExpression unconditionally XX one Expression, Expression unconditionally YY one CharacteristicExpression;
  relationship R1416 is CharacteristicRange unconditionally XX one CharacteristicExpression, CharacteristicExpression unconditionally YY one CharacteristicRange;
  relationship R1417 is CorrelatedNavExpression unconditionally XX one Expression, Expression unconditionally YY one CorrelatedNavExpression;
  relationship R1418 is CorrelatedNavExpression unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one CorrelatedNavExpression;
  relationship R1419 is CorrelatedNavExpression unconditionally XX one Expression, Expression unconditionally YY one CorrelatedNavExpression;
  relationship R1420 is CreateDurationExpression unconditionally XX one BasicType, BasicType unconditionally YY one CreateDurationExpression;
  relationship R1421 is CreateDurationExpression unconditionally XX one Expression, Expression unconditionally YY one CreateDurationExpression;
  relationship R1422 is CreateExpression unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one CreateExpression;
  relationship R1423 is DictionaryAccessExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryAccessExpression;
  relationship R1424 is DictionaryAccessExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryAccessExpression;
  relationship R1425 is DictionaryContainsExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryContainsExpression;
  relationship R1426 is DictionaryContainsExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryContainsExpression;
  relationship R1427 is DomainFunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one DomainFunctionInvocation;
  relationship R1428 is DomainFunctionInvocation unconditionally XX one DomainService, DomainService unconditionally YY one DomainFunctionInvocation;
  relationship R1429 is EnumerateLiteral unconditionally XX one EnumerateItem, EnumerateItem unconditionally YY one EnumerateLiteral;
  relationship R1430 is EventExpression unconditionally XX one EventDeclaration, EventDeclaration unconditionally YY one EventExpression;
  relationship R1431 is Expression is_a ( AnyExpression, BinaryExpression, CallExpression, CharacteristicExpression, CorrelatedNavExpression, CreateDurationExpression, CreateExpression, DictionaryAccessExpression, DictionaryContainsExpression, DictionaryKeysExpression, DictionaryValuesExpression, ElementsExpression, EofExpression, EventExpression, FindAttributeNameExpression, FindExpression, FindParameterExpression, IndexedNameExpression, LinkUnlinkExpression, LiteralExpression, NavigationExpression, ObjectNameExpression, OrderingExpression, ParameterNameExpression, ParseExpression, RangeExpression, SelectedAttributeExpression, SelectedComponentExpression, SliceExpression, SplitExpression, StructureAggregate, TerminatorNameExpression, TimeFieldExpression, TimerFieldExpression, TimestampDeltaExpression, TypeNameExpression, UnaryExpression, VariableNameExpression );
  relationship R1432 is FindAttributeNameExpression unconditionally XX one AttributeDeclaration, AttributeDeclaration unconditionally YY one FindAttributeNameExpression;
  relationship R1433 is FindExpression unconditionally XX one Expression, Expression unconditionally YY one FindExpression;
  relationship R1434 is FindExpression unconditionally XX one Expression, Expression unconditionally YY one FindExpression;
  relationship R1435 is FindParameterExpression unconditionally XX one BasicType, BasicType unconditionally YY one FindParameterExpression;
  relationship R1436 is FunctionInvocation is_a ( DomainFunctionInvocation, InstanceFunctionInvocation, ObjectFunctionInvocation, TerminatorFunctionInvocation );
  relationship R1437 is FunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one FunctionInvocation;
  relationship R1438 is IndexedNameExpression unconditionally XX one Expression, Expression unconditionally YY one IndexedNameExpression;
  relationship R1439 is IndexedNameExpression unconditionally XX one Expression, Expression unconditionally YY one IndexedNameExpression;
  relationship R1440 is InstanceFunctionInvocation unconditionally XX one ObjectService, ObjectService unconditionally YY one InstanceFunctionInvocation;
  relationship R1441 is InstanceFunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one InstanceFunctionInvocation;
  relationship R1442 is InstanceFunctionInvocation unconditionally XX one Expression, Expression unconditionally YY one InstanceFunctionInvocation;
  relationship R1443 is InstanceOrderingExpression unconditionally XX one Expression, Expression unconditionally YY one InstanceOrderingExpression;
  relationship R1444 is LinkUnlinkExpression unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one LinkUnlinkExpression;
  relationship R1445 is LinkUnlinkExpression unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkExpression;
  relationship R1446 is LinkUnlinkExpression unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkExpression;
  relationship R1447 is LiteralExpression is_a ( BooleanLiteral, CharacterLiteral, ConsoleLiteral, DurationLiteral, EndlLiteral, EnumerateLiteral, FlushLiteral, NullLiteral, NumericLiteral, StringLiteral, ThisLiteral, TimestampLiteral );
  relationship R1448 is MinMaxRange unconditionally XX one Expression, Expression unconditionally YY one MinMaxRange;
  relationship R1449 is MinMaxRange unconditionally XX one Expression, Expression unconditionally YY one MinMaxRange;
  relationship R1450 is NavigationExpression unconditionally XX one Expression, Expression unconditionally YY one NavigationExpression;
  relationship R1451 is NavigationExpression unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one NavigationExpression;
  relationship R1452 is NavigationExpression unconditionally XX one Expression, Expression unconditionally YY one NavigationExpression;
  relationship R1453 is NullLiteral unconditionally XX one BasicType, BasicType unconditionally YY one NullLiteral;
  relationship R1454 is NumericLiteral is_a ( IntegerLiteral, RealLiteral );
  relationship R1455 is ObjectFunctionInvocation unconditionally XX one ObjectService, ObjectService unconditionally YY one ObjectFunctionInvocation;
  relationship R1456 is ObjectFunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one ObjectFunctionInvocation;
  relationship R1457 is ObjectNameExpression unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ObjectNameExpression;
  relationship R1458 is OrderingExpression is_a ( InstanceOrderingExpression, StructureOrderingExpression );
  relationship R1459 is OrderingExpression unconditionally XX one Expression, Expression unconditionally YY one OrderingExpression;
  relationship R1460 is ParameterNameExpression unconditionally XX one ParameterDefinition, ParameterDefinition unconditionally YY one ParameterNameExpression;
  relationship R1461 is ParseExpression unconditionally XX one Expression, Expression unconditionally YY one ParseExpression;
  relationship R1462 is ParseExpression unconditionally XX one BasicType, BasicType unconditionally YY one ParseExpression;
  relationship R1463 is ParseExpression unconditionally XX one Expression, Expression unconditionally YY one ParseExpression;
  relationship R1464 is RangeExpression is_a ( CharacteristicRange, MinMaxRange );
  relationship R1465 is SelectedAttributeExpression unconditionally XX one AttributeDeclaration, AttributeDeclaration unconditionally YY one SelectedAttributeExpression;
  relationship R1466 is SelectedAttributeExpression unconditionally XX one Expression, Expression unconditionally YY one SelectedAttributeExpression;
  relationship R1467 is SelectedComponentExpression unconditionally XX one StructureElement, StructureElement unconditionally YY one SelectedComponentExpression;
  relationship R1468 is SelectedComponentExpression unconditionally XX one Expression, Expression unconditionally YY one SelectedComponentExpression;
  relationship R1469 is ServiceExpression unconditionally XX one ServiceOverload, ServiceOverload unconditionally YY one ServiceExpression;
  relationship R1470 is SliceExpression unconditionally XX one RangeExpression, RangeExpression unconditionally YY one SliceExpression;
  relationship R1471 is SliceExpression unconditionally XX one Expression, Expression unconditionally YY one SliceExpression;
  relationship R1472 is SplitExpression unconditionally XX one BasicType, BasicType unconditionally YY one SplitExpression;
  relationship R1473 is SplitExpression unconditionally XX many Expression, Expression unconditionally YY one SplitExpression;
  relationship R1474 is SplitExpression unconditionally XX one Expression, Expression unconditionally YY one SplitExpression;
  relationship R1475 is StructureAggregate unconditionally XX many Expression, Expression unconditionally YY one StructureAggregate;
  relationship R1476 is StructureAggregate unconditionally XX many Expression, Expression unconditionally YY one StructureAggregate;
  relationship R1477 is StructureAggregate unconditionally XX one BasicType, BasicType unconditionally YY one StructureAggregate;
  relationship R1478 is StructureOrderingExpression unconditionally XX one Expression, Expression unconditionally YY one StructureOrderingExpression;
  relationship R1479 is TerminatorFunctionInvocation unconditionally XX one DomainTerminatorService, DomainTerminatorService unconditionally YY one TerminatorFunctionInvocation;
  relationship R1480 is TerminatorFunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one TerminatorFunctionInvocation;
  relationship R1481 is TerminatorNameExpression unconditionally XX one DomainTerminator, DomainTerminator unconditionally YY one TerminatorNameExpression;
  relationship R1482 is ThisLiteral unconditionally XX one Service, Service unconditionally YY one ThisLiteral;
  relationship R1483 is ThisLiteral unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ThisLiteral;
  relationship R1484 is ThisLiteral unconditionally XX one State, State unconditionally YY one ThisLiteral;
  relationship R1485 is TimeFieldExpression unconditionally XX one Expression, Expression unconditionally YY one TimeFieldExpression;
  relationship R1486 is TimerFieldExpression unconditionally XX one Expression, Expression unconditionally YY one TimerFieldExpression;
  relationship R1487 is TimestampDeltaExpression unconditionally XX one Expression, Expression unconditionally YY one TimestampDeltaExpression;
  relationship R1488 is TimestampDeltaExpression unconditionally XX one Expression, Expression unconditionally YY one TimestampDeltaExpression;
  relationship R1489 is TypeNameExpression unconditionally XX one BasicType, BasicType unconditionally YY one TypeNameExpression;
  relationship R1490 is UnaryExpression unconditionally XX one Expression, Expression unconditionally YY one UnaryExpression;
  relationship R1491 is VariableNameExpression unconditionally XX one VariableDefinition, VariableDefinition unconditionally YY one VariableNameExpression;
  object AnyExpression is
  end object; pragma id(1400);
  object BinaryAdditiveExpression is
    operator : OperatorRef;
    //!relationship R1400 is BinaryAdditiveExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryAdditiveExpression;
    rhs : iExpression;
    //!relationship R1401 is BinaryAdditiveExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryAdditiveExpression;
    lhs : iExpression;
  end object; pragma id(1401);
  object BinaryCollectionExpression is
    operator : OperatorRef;
    //!relationship R1402 is BinaryCollectionExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryCollectionExpression;
    rhs : iExpression;
    //!relationship R1403 is BinaryCollectionExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryCollectionExpression;
    lhs : iExpression;
  end object; pragma id(1402);
  object BinaryComparisonExpression is
    operator : OperatorRef;
    //!relationship R1404 is BinaryComparisonExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryComparisonExpression;
    rhs : iExpression;
    //!relationship R1405 is BinaryComparisonExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryComparisonExpression;
    lhs : iExpression;
  end object; pragma id(1403);
  object BinaryExpression is
    position : Position;
    operator : OperatorRef;
  end object; pragma id(1404);
  object BinaryLogicalExpression is
    operator : OperatorRef;
    //!relationship R1407 is BinaryLogicalExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryLogicalExpression;
    rhs : iExpression;
    //!relationship R1408 is BinaryLogicalExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryLogicalExpression;
    lhs : iExpression;
  end object; pragma id(1405);
  object BinaryMultiplicativeExpression is
    operator : OperatorRef;
    //!relationship R1409 is BinaryMultiplicativeExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryMultiplicativeExpression;
    rhs : iExpression;
    //!relationship R1410 is BinaryMultiplicativeExpression unconditionally XX one Expression, Expression unconditionally YY one BinaryMultiplicativeExpression;
    lhs : iExpression;
  end object; pragma id(1406);
  object BooleanLiteral is
    position : Position;
    value : boolean;
  end object; pragma id(1407);
  object CallExpression is
  end object; pragma id(1408);
  object CastExpression is
    //!relationship R1412 is CastExpression unconditionally XX one TypeNameExpression, TypeNameExpression unconditionally YY one CastExpression;
    //!type
    my_type : iTypeNameExpression;
    //!relationship R1413 is CastExpression unconditionally XX one Expression, Expression unconditionally YY one CastExpression;
    rhs : iExpression;
  end object; pragma id(1409);
  object CharacterLiteral is
    position : Position;
    literal : String;
  end object; pragma id(1410);
  object CharacteristicExpression is
    position : Position;
    //!relationship R1414 is CharacteristicExpression unconditionally XX many Expression, Expression unconditionally YY one CharacteristicExpression;
    List_arguments : iExpression;
    characteristic : Type;
    //!relationship R1415 is CharacteristicExpression unconditionally XX one Expression, Expression unconditionally YY one CharacteristicExpression;
    lhs : iExpression;
  end object; pragma id(1411);
  object CharacteristicRange is
    //!relationship R1416 is CharacteristicRange unconditionally XX one CharacteristicExpression, CharacteristicExpression unconditionally YY one CharacteristicRange;
    //!range
    my_range : iCharacteristicExpression;
  end object; pragma id(1412);
  object ConsoleLiteral is
    position : Position;
  end object; pragma id(1413);
  object CorrelatedNavExpression is
    position : Position;
    //!relationship R1417 is CorrelatedNavExpression unconditionally XX one Expression, Expression unconditionally YY one CorrelatedNavExpression;
    rhs : iExpression;
    //!relationship R1418 is CorrelatedNavExpression unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one CorrelatedNavExpression;
    //!relationship
    my_relationship : iRelationshipSpecification;
    //!relationship R1419 is CorrelatedNavExpression unconditionally XX one Expression, Expression unconditionally YY one CorrelatedNavExpression;
    lhs : iExpression;
  end object; pragma id(1414);
  object CreateDurationExpression is
    position : Position;
    characteristic : String;
    //!relationship R1420 is CreateDurationExpression unconditionally XX one BasicType, BasicType unconditionally YY one CreateDurationExpression;
    lhs : iBasicType;
    field : Field;
    //!relationship R1421 is CreateDurationExpression unconditionally XX one Expression, Expression unconditionally YY one CreateDurationExpression;
    argument : iExpression;
  end object; pragma id(1415);
  object CreateExpression is
    position : Position;
    //!relationship R1422 is CreateExpression unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one CreateExpression;
    //!object
    my_object : iObjectDeclaration;
    List_aggregate : CreateAggregateValue;
  end object; pragma id(1416);
  object DictionaryAccessExpression is
    position : Position;
    //!relationship R1423 is DictionaryAccessExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryAccessExpression;
    index : iExpression;
    //!relationship R1424 is DictionaryAccessExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryAccessExpression;
    prefix : iExpression;
  end object; pragma id(1417);
  object DictionaryContainsExpression is
    position : Position;
    //!relationship R1425 is DictionaryContainsExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryContainsExpression;
    index : iExpression;
    //!relationship R1426 is DictionaryContainsExpression unconditionally XX one Expression, Expression unconditionally YY one DictionaryContainsExpression;
    prefix : iExpression;
  end object; pragma id(1418);
  object DictionaryKeysExpression is
  end object; pragma id(1419);
  object DictionaryValuesExpression is
  end object; pragma id(1420);
  object DomainFunctionInvocation is
    position : Position;
    //!relationship R1427 is DomainFunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one DomainFunctionInvocation;
    List_arguments : iExpression;
    //!relationship R1428 is DomainFunctionInvocation unconditionally XX one DomainService, DomainService unconditionally YY one DomainFunctionInvocation;
    //!service
    my_service : iDomainService;
  end object; pragma id(1421);
  object DotExpression is
  end object; pragma id(1422);
  object DurationLiteral is
    position : Position;
    literal : String;
  end object; pragma id(1423);
  object ElementsExpression is
  end object; pragma id(1424);
  object EndlLiteral is
    position : Position;
  end object; pragma id(1425);
  object EnumerateLiteral is
    position : Position;
    //!relationship R1429 is EnumerateLiteral unconditionally XX one EnumerateItem, EnumerateItem unconditionally YY one EnumerateLiteral;
    value : iEnumerateItem;
  end object; pragma id(1426);
  object EofExpression is
  end object; pragma id(1427);
  object EventExpression is
    position : Position;
    //!relationship R1430 is EventExpression unconditionally XX one EventDeclaration, EventDeclaration unconditionally YY one EventExpression;
    //!event
    my_event : iEventDeclaration;
  end object; pragma id(1428);
  object Expression is
  end object; pragma id(1429);
  object FindAttributeNameExpression is
    position : Position;
    //!relationship R1432 is FindAttributeNameExpression unconditionally XX one AttributeDeclaration, AttributeDeclaration unconditionally YY one FindAttributeNameExpression;
    attribute : iAttributeDeclaration;
  end object; pragma id(1430);
  object FindExpression is
    position : Position;
    //!relationship R1433 is FindExpression unconditionally XX one Expression, Expression unconditionally YY one FindExpression;
    collection : iExpression;
    findType : ImplType;
    //!relationship R1434 is FindExpression unconditionally XX one Expression, Expression unconditionally YY one FindExpression;
    condition : iExpression;
  end object; pragma id(1431);
  object FindParameterExpression is
    position : Position;
    //!relationship R1435 is FindParameterExpression unconditionally XX one BasicType, BasicType unconditionally YY one FindParameterExpression;
    //!type
    my_type : iBasicType;
  end object; pragma id(1432);
  object FlushLiteral is
    position : Position;
  end object; pragma id(1433);
  object FunctionInvocation is
    position : Position;
    //!relationship R1437 is FunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one FunctionInvocation;
    List_arguments : iExpression;
    //!service
    my_service : ServiceType;
  end object; pragma id(1434);
  object IndexedNameExpression is
    position : Position;
    //!relationship R1438 is IndexedNameExpression unconditionally XX one Expression, Expression unconditionally YY one IndexedNameExpression;
    index : iExpression;
    //!relationship R1439 is IndexedNameExpression unconditionally XX one Expression, Expression unconditionally YY one IndexedNameExpression;
    prefix : iExpression;
  end object; pragma id(1435);
  object InstanceFunctionInvocation is
    position : Position;
    //!relationship R1440 is InstanceFunctionInvocation unconditionally XX one ObjectService, ObjectService unconditionally YY one InstanceFunctionInvocation;
    //!service
    my_service : iObjectService;
    //!relationship R1441 is InstanceFunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one InstanceFunctionInvocation;
    List_arguments : iExpression;
    //!relationship R1442 is InstanceFunctionInvocation unconditionally XX one Expression, Expression unconditionally YY one InstanceFunctionInvocation;
    //!instance
    my_instance : iExpression;
  end object; pragma id(1436);
  object InstanceOrderingExpression is
    position : Position;
    List_components : OrderComponent;
    //!relationship R1443 is InstanceOrderingExpression unconditionally XX one Expression, Expression unconditionally YY one InstanceOrderingExpression;
    collection : iExpression;
    //!reverse
    my_reverse : boolean;
  end object; pragma id(1437);
  object IntegerLiteral is
    position : Position;
    text : String;
    value : Long;
  end object; pragma id(1438);
  object LinkUnlinkExpression is
    position : Position;
    //!type
    my_type : Type;
    //!relationship R1444 is LinkUnlinkExpression unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one LinkUnlinkExpression;
    relRef : iRelationshipSpecification;
    //!relationship R1445 is LinkUnlinkExpression unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkExpression;
    lhs : iExpression;
    //!relationship R1446 is LinkUnlinkExpression unconditionally XX one Expression, Expression unconditionally YY one LinkUnlinkExpression;
    rhs : iExpression;
  end object; pragma id(1439);
  object LiteralExpression is
  end object; pragma id(1440);
  object MinMaxRange is
    //!relationship R1448 is MinMaxRange unconditionally XX one Expression, Expression unconditionally YY one MinMaxRange;
    max : iExpression;
    //!relationship R1449 is MinMaxRange unconditionally XX one Expression, Expression unconditionally YY one MinMaxRange;
    min : iExpression;
  end object; pragma id(1441);
  object NavigationExpression is
    position : Position;
    //!relationship R1450 is NavigationExpression unconditionally XX one Expression, Expression unconditionally YY one NavigationExpression;
    whereClause : iExpression;
    //!relationship R1451 is NavigationExpression unconditionally XX one RelationshipSpecification, RelationshipSpecification unconditionally YY one NavigationExpression;
    //!relationship
    my_relationship : iRelationshipSpecification;
    //!relationship R1452 is NavigationExpression unconditionally XX one Expression, Expression unconditionally YY one NavigationExpression;
    lhs : iExpression;
  end object; pragma id(1442);
  object NullLiteral is
    position : Position;
    //!relationship R1453 is NullLiteral unconditionally XX one BasicType, BasicType unconditionally YY one NullLiteral;
    //!type
    my_type : iBasicType;
    position1 : Position;
  end object; pragma id(1443);
  object NumericLiteral is
  end object; pragma id(1444);
  object ObjectFunctionInvocation is
    position : Position;
    //!relationship R1455 is ObjectFunctionInvocation unconditionally XX one ObjectService, ObjectService unconditionally YY one ObjectFunctionInvocation;
    //!service
    my_service : iObjectService;
    //!relationship R1456 is ObjectFunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one ObjectFunctionInvocation;
    List_arguments : iExpression;
  end object; pragma id(1445);
  object ObjectNameExpression is
    position : Position;
    //!relationship R1457 is ObjectNameExpression unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ObjectNameExpression;
    //!object
    my_object : iObjectDeclaration;
  end object; pragma id(1446);
  object OrderingExpression is
    position : Position;
    //!reverse
    my_reverse : boolean;
    //!relationship R1459 is OrderingExpression unconditionally XX one Expression, Expression unconditionally YY one OrderingExpression;
    collection : iExpression;
  end object; pragma id(1447);
  object ParameterNameExpression is
    position : Position;
    //!relationship R1460 is ParameterNameExpression unconditionally XX one ParameterDefinition, ParameterDefinition unconditionally YY one ParameterNameExpression;
    param : iParameterDefinition;
  end object; pragma id(1448);
  object ParseExpression is
    position : Position;
    //!relationship R1461 is ParseExpression unconditionally XX one Expression, Expression unconditionally YY one ParseExpression;
    base : iExpression;
    //!relationship R1462 is ParseExpression unconditionally XX one BasicType, BasicType unconditionally YY one ParseExpression;
    lhs : iBasicType;
    //!relationship R1463 is ParseExpression unconditionally XX one Expression, Expression unconditionally YY one ParseExpression;
    argument : iExpression;
  end object; pragma id(1449);
  object RangeExpression is
  end object; pragma id(1450);
  object RealLiteral is
    position : Position;
    text : String;
    value : double;
  end object; pragma id(1451);
  object SelectedAttributeExpression is
    position : Position;
    //!relationship R1465 is SelectedAttributeExpression unconditionally XX one AttributeDeclaration, AttributeDeclaration unconditionally YY one SelectedAttributeExpression;
    attribute : iAttributeDeclaration;
    //!relationship R1466 is SelectedAttributeExpression unconditionally XX one Expression, Expression unconditionally YY one SelectedAttributeExpression;
    prefix : iExpression;
  end object; pragma id(1452);
  object SelectedComponentExpression is
    position : Position;
    //!relationship R1467 is SelectedComponentExpression unconditionally XX one StructureElement, StructureElement unconditionally YY one SelectedComponentExpression;
    component : iStructureElement;
    //!relationship R1468 is SelectedComponentExpression unconditionally XX one Expression, Expression unconditionally YY one SelectedComponentExpression;
    prefix : iExpression;
  end object; pragma id(1453);
  object ServiceExpression is
    position : Position;
    //!relationship R1469 is ServiceExpression unconditionally XX one ServiceOverload, ServiceOverload unconditionally YY one ServiceExpression;
    overload : iServiceOverload;
  end object; pragma id(1454);
  object SliceExpression is
    position : Position;
    //!relationship R1470 is SliceExpression unconditionally XX one RangeExpression, RangeExpression unconditionally YY one SliceExpression;
    //!range
    my_range : iRangeExpression;
    //!relationship R1471 is SliceExpression unconditionally XX one Expression, Expression unconditionally YY one SliceExpression;
    prefix : iExpression;
  end object; pragma id(1455);
  object SplitExpression is
    fields : Set;
    //!relationship R1472 is SplitExpression unconditionally XX one BasicType, BasicType unconditionally YY one SplitExpression;
    resultType : iBasicType;
    characteristic : String;
    position : Position;
    //!relationship R1473 is SplitExpression unconditionally XX many Expression, Expression unconditionally YY one SplitExpression;
    List_args : iExpression;
    //!relationship R1474 is SplitExpression unconditionally XX one Expression, Expression unconditionally YY one SplitExpression;
    lhs : iExpression;
    splitType : Type;
  end object; pragma id(1456);
  object StringLiteral is
    position : Position;
    rhs : String;
    literal : String;
    lhs : String;
  end object; pragma id(1457);
  object StructureAggregate is
    position : Position;
    //!relationship R1475 is StructureAggregate unconditionally XX many Expression, Expression unconditionally YY one StructureAggregate;
    List_elements : iExpression;
    //!relationship R1476 is StructureAggregate unconditionally XX many Expression, Expression unconditionally YY one StructureAggregate;
    List_elements1 : iExpression;
    //!relationship R1477 is StructureAggregate unconditionally XX one BasicType, BasicType unconditionally YY one StructureAggregate;
    //!type
    my_type : iBasicType;
  end object; pragma id(1458);
  object StructureOrderingExpression is
    position : Position;
    List_components : OrderComponent;
    //!relationship R1478 is StructureOrderingExpression unconditionally XX one Expression, Expression unconditionally YY one StructureOrderingExpression;
    collection : iExpression;
    //!reverse
    my_reverse : boolean;
  end object; pragma id(1459);
  object TerminatorFunctionInvocation is
    position : Position;
    //!relationship R1479 is TerminatorFunctionInvocation unconditionally XX one DomainTerminatorService, DomainTerminatorService unconditionally YY one TerminatorFunctionInvocation;
    //!service
    my_service : iDomainTerminatorService;
    //!relationship R1480 is TerminatorFunctionInvocation unconditionally XX many Expression, Expression unconditionally YY one TerminatorFunctionInvocation;
    List_arguments : iExpression;
  end object; pragma id(1460);
  object TerminatorNameExpression is
    position : Position;
    //!relationship R1481 is TerminatorNameExpression unconditionally XX one DomainTerminator, DomainTerminator unconditionally YY one TerminatorNameExpression;
    //!terminator
    my_terminator : iDomainTerminator;
  end object; pragma id(1461);
  object ThisLiteral is
    position : Position;
    //!relationship R1482 is ThisLiteral unconditionally XX one Service, Service unconditionally YY one ThisLiteral;
    //!service
    my_service : iService;
    //!relationship R1483 is ThisLiteral unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one ThisLiteral;
    //!object
    my_object : iObjectDeclaration;
    //!relationship R1484 is ThisLiteral unconditionally XX one State, State unconditionally YY one ThisLiteral;
    //!state
    my_state : iState;
  end object; pragma id(1462);
  object TimeFieldExpression is
    position : Position;
    characteristic : String;
    field : Field;
    //!relationship R1485 is TimeFieldExpression unconditionally XX one Expression, Expression unconditionally YY one TimeFieldExpression;
    lhs : iExpression;
  end object; pragma id(1463);
  object TimerFieldExpression is
    position : Position;
    field : Field;
    //!relationship R1486 is TimerFieldExpression unconditionally XX one Expression, Expression unconditionally YY one TimerFieldExpression;
    lhs : iExpression;
  end object; pragma id(1464);
  object TimestampDeltaExpression is
    position : Position;
    characteristic : String;
    //!relationship R1487 is TimestampDeltaExpression unconditionally XX one Expression, Expression unconditionally YY one TimestampDeltaExpression;
    arg : iExpression;
    //!relationship R1488 is TimestampDeltaExpression unconditionally XX one Expression, Expression unconditionally YY one TimestampDeltaExpression;
    lhs : iExpression;
    splitType : Type;
  end object; pragma id(1465);
  object TimestampLiteral is
    position : Position;
    literal : String;
  end object; pragma id(1466);
  object TypeNameExpression is
    position : Position;
    //!relationship R1489 is TypeNameExpression unconditionally XX one BasicType, BasicType unconditionally YY one TypeNameExpression;
    //!type
    my_type : iBasicType;
  end object; pragma id(1467);
  object UnaryExpression is
    operator : OperatorRef;
    //!relationship R1490 is UnaryExpression unconditionally XX one Expression, Expression unconditionally YY one UnaryExpression;
    rhs : iExpression;
  end object; pragma id(1468);
  object VariableNameExpression is
    position : Position;
    //!relationship R1491 is VariableNameExpression unconditionally XX one VariableDefinition, VariableDefinition unconditionally YY one VariableNameExpression;
    definition : iVariableDefinition;
  end object; pragma id(1469);

  //!imported
  object ServiceOverload is
    IMPORTED: integer;
  end object; pragma id(1470);

  //!imported
  object ObjectService is
    IMPORTED: integer;
  end object; pragma id(1471);

  //!imported
  object Service is
    IMPORTED: integer;
  end object; pragma id(1472);

  //!imported
  object EnumerateItem is
    IMPORTED: integer;
  end object; pragma id(1473);

  //!imported
  object DomainService is
    IMPORTED: integer;
  end object; pragma id(1474);

  //!imported
  object VariableDefinition is
    IMPORTED: integer;
  end object; pragma id(1475);

  //!imported
  object ObjectDeclaration is
    IMPORTED: integer;
  end object; pragma id(1476);

  //!imported
  object BasicType is
    IMPORTED: integer;
  end object; pragma id(1477);

  //!imported
  object StructureElement is
    IMPORTED: integer;
  end object; pragma id(1478);

  //!imported
  object AttributeDeclaration is
    IMPORTED: integer;
  end object; pragma id(1479);

  //!imported
  object State is
    IMPORTED: integer;
  end object; pragma id(1480);

  //!imported
  object DomainTerminator is
    IMPORTED: integer;
  end object; pragma id(1481);

  //!imported
  object EventDeclaration is
    IMPORTED: integer;
  end object; pragma id(1482);

  //!imported
  object ParameterDefinition is
    IMPORTED: integer;
  end object; pragma id(1483);

  //!imported
  object RelationshipSpecification is
    IMPORTED: integer;
  end object; pragma id(1484);

  //!imported
  object DomainTerminatorService is
    IMPORTED: integer;
  end object; pragma id(1485);
end domain;
