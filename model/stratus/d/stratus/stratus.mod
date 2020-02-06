domain stratus is
  object WCharacterType;
  object DurationType;
  object WStringType;
  object TimerType;
  object ByteType;
  object CharacterType;
  object AnyInstanceType;
  object NumericType;
  object DeviceType;
  object StringType;
  object RealType;
  object BooleanType;
  object TimestampType;
  object BuiltinType;
  object IntegerType;
  object EventType;
  object SmallIntegerType;
  object BuiltinException;
  object ServiceOverload;
  object DomainTerminatorService;
  object ExceptionDeclaration;
  object ParameterDefinition;
  object DomainService;
  object DomainTerminator;
  object Service;
  object Domain;
  object ExceptionReference;
  object EofExpression;
  object AttributeInitialization;
  object CallExpression;
  object InstanceOrderingExpression;
  object StructureOrderingExpression;
  object ParameterNameExpression;
  object IndexedNameExpression;
  object DictionaryValuesExpression;
  object FindAttributeNameExpression;
  object LinkUnlinkExpression;
  object AnyExpression;
  object RangeExpression;
  object ElementsExpression;
  object NavigationExpression;
  object CorrelatedNavExpression;
  object CharacteristicExpression;
  object OrderingExpression;
  object ServiceExpression;
  object TimestampDeltaExpression;
  object TimerFieldExpression;
  object SliceExpression;
  object MinMaxRange;
  object ParseExpression;
  object DictionaryAccessExpression;
  object CreateDurationExpression;
  object SelectedAttributeExpression;
  object SplitExpression;
  object CastExpression;
  object TypeNameExpression;
  object Expression;
  object FindParameterExpression;
  object DictionaryKeysExpression;
  object EventExpression;
  object DotExpression;
  object TerminatorNameExpression;
  object TimeFieldExpression;
  object StructureAggregate;
  object VariableNameExpression;
  object UnaryExpression;
  object CharacteristicRange;
  object SelectedComponentExpression;
  object CreateExpression;
  object FindExpression;
  object DictionaryContainsExpression;
  object ObjectNameExpression;
  object BinaryComparisonExpression;
  object BinaryAdditiveExpression;
  object BinaryMultiplicativeExpression;
  object BinaryCollectionExpression;
  object BinaryExpression;
  object BinaryLogicalExpression;
  object AttributeDeclaration;
  object ObjectDeclaration;
  object ReferentialAttributeDefinition;
  object ObjectService;
  object IdentifierDeclaration;
  object UnconstrainedArraySubtype;
  object RangeType;
  object ConstrainedType;
  object CollectionType;
  object StructureElement;
  object BasicType;
  object BagType;
  object TypeDeclaration;
  object DigitsConstraint;
  object SetType;
  object StructureType;
  object RangeConstraint;
  object UserDefinedType;
  object UnconstrainedArrayType;
  object AnonymousStructure;
  object SequenceType;
  object ArrayType;
  object InternalType;
  object TypeConstraint;
  object EnumerateItem;
  object DeltaConstraint;
  object InstanceType;
  object DictionaryType;
  object FullTypeDefinition;
  object TypeDefinition;
  object EnumerateType;
  object RelationshipDeclaration;
  object SubtypeRelationshipDeclaration;
  object HalfRelationship;
  object AssociativeRelationshipDeclaration;
  object NormalRelationshipDeclaration;
  object RelationshipSpecification;
  object ProjectDomain;
  object Project;
  object ProjectTerminatorService;
  object ProjectTerminator;
  object State;
  object TransitionTable;
  object TransitionRow;
  object TransitionOption;
  object EventDeclaration;
  object Alternative;
  object RaiseStatement;
  object ObjectServiceInvocation;
  object ExitStatement;
  object CodeBlock;
  object ServiceInvocation;
  object ReturnStatement;
  object IOStreamStatement;
  object CaseStatement;
  object CancelTimerStatement;
  object AssignmentStatement;
  object DeleteStatement;
  object FromToRange;
  object VariableRange;
  object GenerateStatement;
  object Statement;
  object DomainServiceInvocation;
  object VariableDefinition;
  object PragmaStatement;
  object IfStatement;
  object InstanceServiceInvocation;
  object EraseStatement;
  object ScheduleStatement;
  object ForStatement;
  object WhileStatement;
  object TerminatorServiceInvocation;
  object LinkUnlinkStatement;
  object ExceptionHandler;
  object DelayStatement;
  object LoopSpec;
  object VariableElements;
  object TypeRange;
  object BooleanLiteral;
  object RealLiteral;
  object CharacterLiteral;
  object FlushLiteral;
  object StringLiteral;
  object IntegerLiteral;
  object EndlLiteral;
  object NullLiteral;
  object ThisLiteral;
  object NumericLiteral;
  object TimestampLiteral;
  object DurationLiteral;
  object EnumerateLiteral;
  object LiteralExpression;
  object ConsoleLiteral;
  object DomainFunctionInvocation;
  object FunctionInvocation;
  object TerminatorFunctionInvocation;
  object ObjectFunctionInvocation;
  object InstanceFunctionInvocation;
  private type Name is string
  ;
  private type myString is string
  ;
  private type Visibility is enum (isprivate, ispublic)
  ;
  private type ParameterMode is enum (isin, isout)
  ;
  private type IOop is enum (isin, isout, linein, lineout)
  ;
  private type EventType is enum (isnormal, isassigner, iscreation)
  ;
  private type Operator is enum (isabs, isand)
  ;
  private type FindType is enum (isfind, isfind_one, isfind_only)
  ;
    private service init (
    );
    private service select_any_TypeDeclaration_where_name (
        name : in Name    ) return instance of TypeDeclaration;
    private service select_any_ExceptionDeclaration_where_name (
        mydomain : in Name,        name : in Name    ) return instance of ExceptionDeclaration;
    private service select_any_ObjectDeclaration_where_name (
        mydomain : in Name,        name : in Name    ) return instance of ObjectDeclaration;
    private service select_any_BasicType_where_name (
        mydomain : in Name,        name : in Name    ) return instance of BasicType;
  relationship R6206 is BuiltinType is_a ( WStringType, WCharacterType, TimestampType, TimerType, StringType, NumericType, EventType, DurationType, DeviceType, CharacterType, BooleanType, AnyInstanceType );
  relationship R6221 is NumericType is_a ( SmallIntegerType, RealType, IntegerType, ByteType );
  relationship R6222 is NumericType unconditionally has_max one Expression,
    Expression conditionally is_max_of one NumericType;
  relationship R6223 is NumericType unconditionally has_min one Expression,
    Expression conditionally is_min_of one NumericType;
  relationship R5200 is ParameterDefinition unconditionally is_typed_by one BasicType,
    BasicType conditionally types many ParameterDefinition;
  relationship R5203 is Service is_a ( DomainTerminatorService, DomainService, ObjectService, ProjectTerminatorService );
  relationship R5204 is Service conditionally passes_first one ParameterDefinition,
    ParameterDefinition conditionally is_first_passed_by one Service;
  relationship R5205 is Service conditionally returns one BasicType,
    BasicType conditionally is_returned_by many Service;
  relationship R5206 is Service conditionally raises many ExceptionReference,
    ExceptionReference conditionally is_raised_by many Service;
  relationship R5303 is DomainService unconditionally is_service_provision_for one Domain,
    Domain conditionally provides many DomainService;
  relationship R5304 is DomainTerminator unconditionally is_requirement_of one Domain,
    Domain conditionally requires many DomainTerminator;
  relationship R5306 is DomainTerminatorService unconditionally is_message_for one DomainTerminator,
    DomainTerminator conditionally passes_messages_through many DomainTerminatorService;
  relationship R5400 is ExceptionDeclaration unconditionally catches_errors_in one Domain,
    Domain conditionally has_errors_caught_by many ExceptionDeclaration;
  relationship R5401 is ExceptionReference is_a ( BuiltinException );
  relationship R5402 is ExceptionReference unconditionally refers_to one ExceptionDeclaration,
    ExceptionDeclaration conditionally is_referenced_by many ExceptionReference;
  relationship R5207 is ServiceOverload unconditionally overloads one Service,
    Service conditionally is_overloaded_by many ServiceOverload;
  relationship R5208 is ParameterDefinition conditionally precedes one ParameterDefinition,
    ParameterDefinition conditionally succeeds one ParameterDefinition;
  relationship R5500 is CallExpression is_a ( CastExpression, FunctionInvocation );
  relationship R5501 is CastExpression unconditionally coerses_to one TypeNameExpression,
    TypeNameExpression conditionally is_coercion_of one CastExpression;
  relationship R5502 is CastExpression unconditionally casts one Expression,
    Expression conditionally is_cast_by one CastExpression;
  relationship R5503 is CharacteristicExpression conditionally passes many Expression,
    Expression conditionally are_passed_on one CharacteristicExpression;
  relationship R5504 is CharacteristicExpression unconditionally has_base one Expression,
    Expression conditionally is_base_of one CharacteristicExpression;
  relationship R5505 is CharacteristicRange unconditionally spans one CharacteristicExpression,
    CharacteristicExpression conditionally is_spanned_by one CharacteristicRange;
  relationship R5506 is CorrelatedNavExpression unconditionally correlates_lhs_instance one Expression,
    Expression conditionally is_lhs_instance_of one CorrelatedNavExpression;
  relationship R5507 is CorrelatedNavExpression unconditionally specifies one RelationshipSpecification,
    RelationshipSpecification conditionally is_specified_in one CorrelatedNavExpression;
  relationship R5508 is CorrelatedNavExpression unconditionally with_rhs_instance one Expression,
    Expression conditionally is_rhs_instance_of one CorrelatedNavExpression;
  relationship R5509 is CreateDurationExpression unconditionally is_typed_by one BasicType,
    BasicType conditionally types one CreateDurationExpression;
  relationship R5510 is CreateDurationExpression unconditionally results_in one Expression,
    Expression conditionally is_result_of one CreateDurationExpression;
  relationship R5511 is CreateExpression unconditionally creates_instance_of one ObjectDeclaration,
    ObjectDeclaration conditionally is_created_by one CreateExpression;
  relationship R5512 is DictionaryAccessExpression unconditionally is_indexed_by one Expression,
    Expression conditionally indexes one DictionaryAccessExpression;
  relationship R5513 is DictionaryAccessExpression unconditionally is_prefixed_by one Expression,
    Expression conditionally prefixes one DictionaryAccessExpression;
  relationship R5514 is DictionaryContainsExpression unconditionally is_indexed_by one Expression,
    Expression conditionally indexes one DictionaryContainsExpression;
  relationship R5515 is DictionaryContainsExpression unconditionally is_prefixed_by one Expression,
    Expression conditionally prefixes one DictionaryContainsExpression;
  relationship R5516 is EventExpression unconditionally is_use_of one EventDeclaration,
    EventDeclaration conditionally is_used_by many EventExpression;
  relationship R5517 is Expression is_a ( VariableNameExpression, UnaryExpression, TypeNameExpression, TimestampDeltaExpression, TimerFieldExpression, TimeFieldExpression, TerminatorNameExpression, StructureAggregate, SplitExpression, SliceExpression, SelectedComponentExpression, SelectedAttributeExpression, RangeExpression, ParameterNameExpression, OrderingExpression, ObjectNameExpression, NavigationExpression, LinkUnlinkExpression, IndexedNameExpression, FindParameterExpression, FindExpression, FindAttributeNameExpression, EventExpression, EofExpression, ElementsExpression, DictionaryValuesExpression, DictionaryKeysExpression, DictionaryContainsExpression, DictionaryAccessExpression, CreateExpression, CreateDurationExpression, CorrelatedNavExpression, CharacteristicExpression, CallExpression, AnyExpression, BinaryExpression, LiteralExpression, ParseExpression, DotExpression );
  relationship R5518 is FindAttributeNameExpression unconditionally names one AttributeDeclaration,
    AttributeDeclaration conditionally is_named_in many FindAttributeNameExpression;
  relationship R5519 is FindExpression unconditionally searches one Expression,
    Expression conditionally is_searched_by one FindExpression;
  relationship R5520 is FindExpression unconditionally is_conditioned_by one Expression,
    Expression conditionally conditions one FindExpression;
  relationship R5521 is FindParameterExpression unconditionally is_typed_by one BasicType,
    BasicType conditionally types one FindParameterExpression;
  relationship R5522 is IndexedNameExpression unconditionally is_indexed_by one Expression,
    Expression conditionally indexes one IndexedNameExpression;
  relationship R5523 is IndexedNameExpression unconditionally is_prefixed_by one Expression,
    Expression conditionally prefixes one IndexedNameExpression;
  relationship R5525 is LinkUnlinkExpression unconditionally operates_across one RelationshipSpecification,
    RelationshipSpecification conditionally is_operated_across one LinkUnlinkExpression;
  relationship R5526 is LinkUnlinkExpression unconditionally has_lhs_instance one Expression,
    Expression conditionally is_lhs_instance one LinkUnlinkExpression;
  relationship R5527 is LinkUnlinkExpression unconditionally has_rhs_instance one Expression,
    Expression conditionally is_rhs_instance one LinkUnlinkExpression;
  relationship R5528 is MinMaxRange unconditionally has_max one Expression,
    Expression conditionally is_max_of one MinMaxRange;
  relationship R5529 is MinMaxRange unconditionally has_min one Expression,
    Expression conditionally is_min_of one MinMaxRange;
  relationship R5530 is NavigationExpression unconditionally is_conditioned_by one Expression,
    Expression conditionally conditions one NavigationExpression;
  relationship R5531 is NavigationExpression unconditionally operates_across one RelationshipSpecification,
    RelationshipSpecification conditionally is_operated_across one NavigationExpression;
  relationship R5532 is NavigationExpression unconditionally has_lhs_instance one Expression,
    Expression conditionally is_lhs_instance one NavigationExpression;
  relationship R5533 is ObjectNameExpression unconditionally names one ObjectDeclaration,
    ObjectDeclaration conditionally is_named_by many ObjectNameExpression;
  relationship R5534 is OrderingExpression is_a ( StructureOrderingExpression, InstanceOrderingExpression );
  relationship R5535 is OrderingExpression unconditionally orders one Expression,
    Expression conditionally is_ordered_by one OrderingExpression;
  relationship R5536 is ParameterNameExpression unconditionally names one ParameterDefinition,
    ParameterDefinition conditionally is_named_by many ParameterNameExpression;
  relationship R5540 is RangeExpression is_a ( MinMaxRange, CharacteristicRange );
  relationship R5541 is SelectedAttributeExpression unconditionally names one AttributeDeclaration,
    AttributeDeclaration conditionally is_named_in one SelectedAttributeExpression;
  relationship R5542 is SelectedAttributeExpression unconditionally has_instance_prefix one Expression,
    Expression conditionally is_instance_prefix one SelectedAttributeExpression;
  relationship R5543 is SelectedComponentExpression unconditionally names one StructureElement,
    StructureElement conditionally is_named_in one SelectedComponentExpression;
  relationship R5544 is SelectedComponentExpression unconditionally has_navigation_prefix one Expression,
    Expression conditionally is_navigation_prefix one SelectedComponentExpression;
  relationship R5545 is ServiceExpression unconditionally invokes one ServiceOverload,
    ServiceOverload conditionally is_invoked_by one ServiceExpression;
  relationship R5546 is SliceExpression unconditionally is_spanned_by one RangeExpression,
    RangeExpression conditionally spans one SliceExpression;
  relationship R5547 is SliceExpression unconditionally is_prefixed_by one Expression,
    Expression conditionally prefixes one SliceExpression;
  relationship R5548 is SplitExpression unconditionally has_resulting_type one BasicType,
    BasicType conditionally types one SplitExpression;
  relationship R5549 is SplitExpression unconditionally passes many Expression,
    Expression conditionally are_passed_by one SplitExpression;
  relationship R5550 is SplitExpression unconditionally has_lhs one Expression,
    Expression conditionally is_lhs_of one SplitExpression;
  relationship R5551 is StructureAggregate unconditionally structures many Expression,
    Expression conditionally is_structured_by one StructureAggregate;
  relationship R5553 is StructureAggregate unconditionally is_typed_by one BasicType,
    BasicType conditionally types one StructureAggregate;
  relationship R5555 is TerminatorNameExpression unconditionally names one DomainTerminator,
    DomainTerminator conditionally is_named_by many TerminatorNameExpression;
  relationship R5556 is TimeFieldExpression unconditionally has_lhs one Expression,
    Expression conditionally is_lhs_of one TimeFieldExpression;
  relationship R5557 is TimerFieldExpression unconditionally has_lhs one Expression,
    Expression conditionally is_lhs_of one TimerFieldExpression;
  relationship R5558 is TimestampDeltaExpression unconditionally takes_arg one Expression,
    Expression conditionally is_arg_of one TimestampDeltaExpression;
  relationship R5559 is TimestampDeltaExpression unconditionally has_lhs one Expression,
    Expression conditionally is_lhs_of one TimestampDeltaExpression;
  relationship R5560 is TypeNameExpression unconditionally is_typed_by one BasicType,
    BasicType conditionally types many TypeNameExpression;
  relationship R5561 is UnaryExpression unconditionally operates_upon one Expression,
    Expression conditionally is_operated_upon_by one UnaryExpression;
  relationship R5562 is VariableNameExpression unconditionally has_as_definition one VariableDefinition,
    VariableDefinition conditionally defines one VariableNameExpression;
  relationship R5563 is InstanceOrderingExpression conditionally is_keyed_by many AttributeDeclaration,
    AttributeDeclaration conditionally keys many InstanceOrderingExpression;
  relationship R5564 is StructureElement conditionally keys many StructureOrderingExpression,
    StructureOrderingExpression conditionally is_keyed_by many StructureElement;
  relationship R5565 is AttributeInitialization unconditionally sets one AttributeDeclaration,
    AttributeDeclaration conditionally is_set_by many AttributeInitialization;
  relationship R5566 is CreateExpression conditionally flows many AttributeInitialization,
    AttributeInitialization unconditionally flows one CreateExpression;
  relationship R5567 is AttributeInitialization conditionally sets_current one State,
    State conditionally is_set_by many AttributeInitialization;
  relationship R5568 is AttributeInitialization unconditionally assigns one Expression,
    Expression conditionally is_value_for one AttributeInitialization;
  relationship R5569 is Expression conditionally is_lhs_of one DotExpression,
    DotExpression unconditionally has_lhs one Expression;
  relationship R5000 is BinaryExpression is_a ( BinaryMultiplicativeExpression, BinaryLogicalExpression, BinaryComparisonExpression, BinaryCollectionExpression, BinaryAdditiveExpression );
  relationship R5002 is BinaryExpression unconditionally is_rhs_of one Expression,
    Expression conditionally has_rhs one BinaryExpression;
  relationship R5001 is BinaryExpression unconditionally is_lhs_of one Expression,
    Expression conditionally has_lhs one BinaryExpression;
  relationship R5003 is BinaryMultiplicativeExpression unconditionally is_type_of one BasicType,
    BasicType conditionally types one BinaryMultiplicativeExpression;
  relationship R5801 is AttributeDeclaration conditionally is_initialized_by one Expression,
    Expression conditionally initializes one AttributeDeclaration;
  relationship R5802 is AttributeDeclaration unconditionally characterizes one ObjectDeclaration,
    ObjectDeclaration conditionally is_characterized_by many AttributeDeclaration;
  relationship R5803 is AttributeDeclaration unconditionally is_typed_by one BasicType,
    BasicType conditionally types many AttributeDeclaration;
  relationship R5804 is IdentifierDeclaration unconditionally identifies one ObjectDeclaration,
    ObjectDeclaration conditionally is_identified_by one IdentifierDeclaration;
  relationship R5805 is ObjectDeclaration unconditionally is_abstracted_in one Domain,
    Domain conditionally has_abstract many ObjectDeclaration;
  relationship R5806 is ObjectService conditionally defers_to one SubtypeRelationshipDeclaration,
    SubtypeRelationshipDeclaration conditionally is_deferred_by one ObjectService;
  relationship R5807 is AttributeDeclaration conditionally composes many IdentifierDeclaration,
    IdentifierDeclaration unconditionally is_composed_of many AttributeDeclaration;
  relationship R5808 is ObjectService unconditionally transforms one ObjectDeclaration,
    ObjectDeclaration conditionally is_transformed_by many ObjectService;
  relationship R5809 is AttributeDeclaration conditionally succeeds one AttributeDeclaration,
    AttributeDeclaration conditionally precedes one AttributeDeclaration;
  relationship R5811 is ReferentialAttributeDefinition unconditionally refers_to one RelationshipSpecification,
    RelationshipSpecification conditionally is_referenced_by many ReferentialAttributeDefinition;
  relationship R5800 is AttributeDeclaration conditionally refers_to many AttributeDeclaration,
    AttributeDeclaration conditionally is_referenced_by many AttributeDeclaration
    using ReferentialAttributeDefinition;
//!associations
  relationship R6200 is AnonymousStructure unconditionally structures many BasicType,
    BasicType conditionally is_structured_by many AnonymousStructure;
  relationship R6201 is ArrayType unconditionally is_bounded_by one RangeExpression,
    RangeExpression conditionally bounds one ArrayType;
  relationship R6205 is BasicType is_a ( UserDefinedType, UnconstrainedArraySubtype, InternalType, InstanceType, DictionaryType, CollectionType, AnonymousStructure, BuiltinType );
  relationship R6207 is CollectionType is_a ( SetType, SequenceType, RangeType, BagType, ArrayType );
  relationship R6208 is CollectionType unconditionally collects one BasicType,
    BasicType conditionally is_collected_by many CollectionType;
  relationship R6209 is ConstrainedType unconditionally is_defined_by one TypeConstraint,
    TypeConstraint conditionally defines many ConstrainedType;
  relationship R6210 is ConstrainedType unconditionally constrains one BasicType,
    BasicType conditionally is_constrained_by many ConstrainedType;
  relationship R6211 is DeltaConstraint unconditionally has_resolution one Expression,
    Expression conditionally is_resolution_of one DeltaConstraint;
  relationship R6212 is DeltaConstraint unconditionally is_spanned_by one RangeConstraint,
    RangeConstraint conditionally spans one DeltaConstraint;
  relationship R6213 is DictionaryType unconditionally pairs_key_on one BasicType,
    BasicType conditionally is_keyed_by one DictionaryType;
  relationship R6214 is DictionaryType unconditionally pairs_value_on one BasicType,
    BasicType conditionally is_valued_by one DictionaryType;
  relationship R6215 is DigitsConstraint unconditionally is_limited_by one Expression,
    Expression conditionally limits one DigitsConstraint;
  relationship R6216 is DigitsConstraint unconditionally is_spanned_by one RangeConstraint,
    RangeConstraint conditionally spans one DigitsConstraint;
  relationship R6217 is EnumerateItem conditionally is_set_by one Expression,
    Expression conditionally sets one EnumerateItem;
  relationship R6218 is EnumerateType conditionally defines_first one EnumerateItem,
    EnumerateItem conditionally is_first_value_of one EnumerateType;
  relationship R6219 is FullTypeDefinition is_a ( UnconstrainedArrayType, StructureType, EnumerateType, ConstrainedType );
  relationship R6220 is InstanceType unconditionally references one ObjectDeclaration,
    ObjectDeclaration conditionally is_referenced_by one InstanceType;
  relationship R6224 is RangeConstraint unconditionally is_bounded_by one RangeExpression,
    RangeExpression conditionally bounds one RangeConstraint;
  relationship R6226 is SequenceType conditionally has_max_size one Expression,
    Expression conditionally is_max_size_of one SequenceType;
  relationship R6229 is StructureElement conditionally is_initialized_by one Expression,
    Expression conditionally initializes one StructureElement;
  relationship R6230 is StructureElement unconditionally is_type_of one BasicType,
    BasicType conditionally types many StructureElement;
  relationship R6232 is TypeConstraint is_a ( RangeConstraint, DigitsConstraint, DeltaConstraint );
  relationship R6233 is TypeConstraint unconditionally is_bounded_by one RangeExpression,
    RangeExpression conditionally bounds one TypeConstraint;
  relationship R6234 is TypeDeclaration conditionally is_defined_by one TypeDefinition,
    TypeDefinition unconditionally defines one TypeDeclaration;
  relationship R6235 is TypeDeclaration unconditionally is_defined_in one Domain,
    Domain conditionally defines many TypeDeclaration;
  relationship R6236 is TypeDefinition is_a ( FullTypeDefinition, BasicType );
  relationship R6237 is UnconstrainedArraySubtype unconditionally has_span one RangeExpression,
    RangeExpression conditionally spans one UnconstrainedArraySubtype;
  relationship R6238 is UnconstrainedArraySubtype unconditionally arrays one UserDefinedType,
    UserDefinedType conditionally is_arrayed_by many UnconstrainedArraySubtype;
  relationship R6239 is UnconstrainedArrayType unconditionally indexes_with one BasicType,
    BasicType conditionally indexes many UnconstrainedArrayType;
  relationship R6240 is UnconstrainedArrayType unconditionally arrays one BasicType,
    BasicType conditionally is_arrayed_by many UnconstrainedArrayType;
  relationship R6241 is UserDefinedType unconditionally is_shaped_by one TypeDeclaration,
    TypeDeclaration conditionally is_shaped_by one UserDefinedType;
  relationship R6242 is EnumerateItem conditionally precedes one EnumerateItem,
    EnumerateItem conditionally succeeds one EnumerateItem;
  relationship R6243 is StructureElement conditionally precedes one StructureElement,
    StructureElement conditionally succeeds one StructureElement;
  relationship R6244 is StructureType conditionally structures_first one StructureElement,
    StructureElement conditionally is_first_in one StructureType;
  relationship R6000 is AssociativeRelationshipDeclaration unconditionally engages_ltr one HalfRelationship,
    HalfRelationship conditionally participates one AssociativeRelationshipDeclaration;
  relationship R6001 is AssociativeRelationshipDeclaration unconditionally uses one ObjectDeclaration,
    ObjectDeclaration conditionally is_used_by many AssociativeRelationshipDeclaration;
  relationship R6002 is AssociativeRelationshipDeclaration unconditionally engages_rtl one HalfRelationship,
    HalfRelationship conditionally participates one AssociativeRelationshipDeclaration;
  relationship R6003 is RelationshipDeclaration unconditionally relates_objects_in one Domain,
    Domain conditionally has_objects_related_by many RelationshipDeclaration;
  relationship R6004 is HalfRelationship unconditionally names_to one ObjectNameExpression,
    ObjectNameExpression unconditionally is_named_to one HalfRelationship;
  relationship R6006 is HalfRelationship unconditionally names_from one ObjectNameExpression,
    ObjectNameExpression unconditionally is_named_from one HalfRelationship;
  relationship R6007 is NormalRelationshipDeclaration unconditionally engages_ltr one HalfRelationship,
    HalfRelationship conditionally participates one NormalRelationshipDeclaration;
  relationship R6008 is NormalRelationshipDeclaration unconditionally engages_rtl one HalfRelationship,
    HalfRelationship conditionally participates one NormalRelationshipDeclaration;
  relationship R6010 is RelationshipDeclaration is_a ( SubtypeRelationshipDeclaration, NormalRelationshipDeclaration, AssociativeRelationshipDeclaration );
  relationship R6011 is RelationshipSpecification unconditionally names_to one ObjectDeclaration,
    ObjectDeclaration conditionally is_named_to many RelationshipSpecification;
  relationship R6013 is RelationshipSpecification unconditionally is_use_of one HalfRelationship,
    HalfRelationship conditionally is_used_in many RelationshipSpecification;
  relationship R6014 is RelationshipSpecification unconditionally names_from one ObjectDeclaration,
    ObjectDeclaration conditionally is_named_to many RelationshipSpecification;
  relationship R6015 is RelationshipSpecification unconditionally is_use_of one RelationshipDeclaration,
    RelationshipDeclaration conditionally is_used_in many RelationshipSpecification;
  relationship R6016 is SubtypeRelationshipDeclaration unconditionally relates_as_subtypes many ObjectDeclaration,
    ObjectDeclaration conditionally is_subtype_in many SubtypeRelationshipDeclaration;
  relationship R6017 is SubtypeRelationshipDeclaration unconditionally relates_as_supertype one ObjectDeclaration,
    ObjectDeclaration conditionally is_supertype_for many SubtypeRelationshipDeclaration;
  relationship R5900 is ProjectDomain unconditionally is_configured_by one Project,
    Project conditionally configures many ProjectDomain;
  relationship R5902 is ProjectTerminator unconditionally is_requirement_of one ProjectDomain,
    ProjectDomain conditionally requires many ProjectTerminator;
  relationship R5903 is ProjectTerminatorService unconditionally is_message_for one ProjectTerminator,
    ProjectTerminator unconditionally messages_through many ProjectTerminatorService;
  relationship R5901 is Domain conditionally is_represented_by many ProjectDomain,
    ProjectDomain unconditionally represents one Domain;
  relationship R6100 is EventDeclaration conditionally carries many ParameterDefinition,
    ParameterDefinition conditionally is_carried_by one EventDeclaration;
  relationship R6101 is EventDeclaration unconditionally triggers one ObjectDeclaration,
    ObjectDeclaration conditionally is_triggered_by many EventDeclaration;
  relationship R6104 is State conditionally carries many ParameterDefinition,
    ParameterDefinition conditionally is_carried_by one State;
  relationship R6105 is State unconditionally defines_lifecycle_of one ObjectDeclaration,
    ObjectDeclaration conditionally cycles_through many State;
  relationship R6108 is TransitionOption unconditionally defines_input_stimulus one EventExpression,
    EventExpression conditionally stimulates one TransitionOption;
  relationship R6109 is TransitionOption unconditionally defines_output_response one State,
    State unconditionally responds one TransitionOption;
  relationship R6111 is TransitionRow unconditionally directs_events_for one State,
    State conditionally has_events_directed_by one TransitionRow;
  relationship R6112 is TransitionRow unconditionally provides many TransitionOption,
    TransitionOption unconditionally is_provided_by one TransitionRow;
  relationship R6113 is TransitionTable unconditionally occupies one ObjectDeclaration,
    ObjectDeclaration conditionally contains many TransitionTable;
  relationship R6114 is TransitionTable unconditionally contains many TransitionRow,
    TransitionRow unconditionally occupies one TransitionTable;
  relationship R5100 is AssignmentStatement unconditionally has_rhs_value one Expression,
    Expression conditionally is_rhs_value one AssignmentStatement;
  relationship R5101 is AssignmentStatement unconditionally has_lhs_target one Expression,
    Expression conditionally is_lhs_target one AssignmentStatement;
  relationship R5102 is CancelTimerStatement unconditionally cancels one Expression,
    Expression conditionally is_cancelled_by one CancelTimerStatement;
  relationship R5103 is CaseStatement unconditionally discriminates one Expression,
    Expression conditionally is_discriminated_by one CaseStatement;
  relationship R5104 is DelayStatement unconditionally delays one Expression,
    Expression conditionally is_duration_of one DelayStatement;
  relationship R5105 is DeleteStatement unconditionally deletes_instance one Expression,
    Expression conditionally is_deleted_instance_of one DeleteStatement;
  relationship R5107 is EraseStatement unconditionally erases one Expression,
    Expression conditionally is_erased_by one EraseStatement;
  relationship R5108 is ExceptionHandler unconditionally catches one ExceptionReference,
    ExceptionReference conditionally is_caught_by one ExceptionHandler;
  relationship R5109 is ExitStatement unconditionally exits_on_condition one Expression,
    Expression conditionally is_condition_of one ExitStatement;
  relationship R5110 is ForStatement unconditionally iterates one LoopSpec,
    LoopSpec conditionally is_iteration_of one ForStatement;
  relationship R5111 is FromToRange unconditionally has_span one MinMaxRange,
    MinMaxRange conditionally spans one FromToRange;
  relationship R5112 is GenerateStatement unconditionally sends one EventExpression,
    EventExpression conditionally is_sent_by one GenerateStatement;
  relationship R5113 is GenerateStatement unconditionally targets one Expression,
    Expression conditionally is_target_instance_of one GenerateStatement;
  relationship R5114 is GenerateStatement unconditionally passes many Expression,
    Expression conditionally are_passed_by one GenerateStatement;
  relationship R5115 is IOStreamStatement unconditionally streams many Expression,
    Expression conditionally is_streamed_by one IOStreamStatement;
  relationship R5116 is InstanceServiceInvocation unconditionally invokes one ObjectService,
    ObjectService conditionally is_invoked_by one InstanceServiceInvocation;
  relationship R5117 is InstanceServiceInvocation unconditionally passes many Expression,
    Expression conditionally are_passed_by one InstanceServiceInvocation;
  relationship R5118 is InstanceServiceInvocation unconditionally has_instance one Expression,
    Expression conditionally is_instance_of one InstanceServiceInvocation;
  relationship R5119 is LinkUnlinkStatement conditionally has_rhs_instance one Expression,
    Expression conditionally is_rhs_instance one LinkUnlinkStatement;
  relationship R5120 is LinkUnlinkStatement unconditionally operates_across one RelationshipSpecification,
    RelationshipSpecification conditionally is_operated_across one LinkUnlinkStatement;
  relationship R5121 is LinkUnlinkStatement conditionally uses_associative one Expression,
    Expression conditionally is_used_in one LinkUnlinkStatement;
  relationship R5122 is LinkUnlinkStatement unconditionally has_lhs_instance one Expression,
    Expression conditionally is_lhs_instance one LinkUnlinkStatement;
  relationship R5123 is LoopSpec is_a ( VariableRange, VariableElements, TypeRange, FromToRange );
  relationship R5124 is LoopSpec unconditionally is_typed one BasicType,
    BasicType conditionally types one LoopSpec;
  relationship R5125 is RaiseStatement conditionally provides_message one Expression,
    Expression conditionally is_message_of one RaiseStatement;
  relationship R5126 is RaiseStatement unconditionally raises one ExceptionReference,
    ExceptionReference conditionally is_raised_by one RaiseStatement;
  relationship R5127 is ReturnStatement unconditionally exits_from one Service,
    Service conditionally is_exited_by one ReturnStatement;
  relationship R5128 is ReturnStatement unconditionally returns one Expression,
    Expression conditionally is_return_value_of one ReturnStatement;
  relationship R5129 is ScheduleStatement unconditionally schedules one GenerateStatement,
    GenerateStatement conditionally is_scheduled_by one ScheduleStatement;
  relationship R5130 is ScheduleStatement unconditionally is_calendared_by one Expression,
    Expression conditionally calendars one ScheduleStatement;
  relationship R5131 is ScheduleStatement unconditionally has_delta one Expression,
    Expression conditionally is_delta_of one ScheduleStatement;
  relationship R5132 is ScheduleStatement unconditionally using_timer one Expression,
    Expression conditionally is_timer_of one ScheduleStatement;
  relationship R5133 is ServiceInvocation is_a ( TerminatorServiceInvocation, ObjectServiceInvocation, InstanceServiceInvocation, DomainServiceInvocation );
  relationship R5134 is ServiceInvocation conditionally passes many Expression,
    Expression conditionally are_passed_by one ServiceInvocation;
  relationship R5135 is Statement is_a ( WhileStatement, ScheduleStatement, ReturnStatement, RaiseStatement, PragmaStatement, LinkUnlinkStatement, IfStatement, IOStreamStatement, GenerateStatement, ForStatement, ExitStatement, EraseStatement, DeleteStatement, DelayStatement, CodeBlock, CaseStatement, CancelTimerStatement, AssignmentStatement, ServiceInvocation );
  relationship R5136 is TypeRange conditionally has_type one BasicType,
    BasicType conditionally types one TypeRange;
  relationship R5137 is VariableDefinition unconditionally has_type one BasicType,
    BasicType conditionally types one VariableDefinition;
  relationship R5138 is VariableDefinition conditionally is_initialized_by one Expression,
    Expression conditionally initializes one VariableDefinition;
  relationship R5139 is VariableElements unconditionally has_iterator one Expression,
    Expression conditionally is_iterator_of one VariableElements;
  relationship R5140 is VariableRange unconditionally has_iterator one Expression,
    Expression conditionally is_iterator_of one VariableRange;
  relationship R5141 is WhileStatement conditionally iterates_over one Statement,
    Statement conditionally is_iterated_by one WhileStatement;
  relationship R5142 is WhileStatement unconditionally has_condition one Expression,
    Expression conditionally conditions one WhileStatement;
  relationship R5143 is IfStatement unconditionally has_condition one Expression,
    Expression conditionally conditions one IfStatement;
  relationship R5144 is IfStatement conditionally may_execute_first one Statement,
    Statement conditionally may_be_executed_by one IfStatement;
  relationship R5145 is IfStatement conditionally provides many Alternative,
    Alternative conditionally selected_by one IfStatement;
  relationship R5146 is CaseStatement conditionally provides many Alternative,
    Alternative conditionally selected_by one CaseStatement;
  relationship R5147 is Alternative conditionally has_condition one Expression,
    Expression conditionally conditions one Alternative;
  relationship R5148 is Alternative unconditionally may_execute_first one Statement,
    Statement conditionally may_be_executed_by one Alternative;
  relationship R5149 is CodeBlock conditionally may_execute many ExceptionHandler,
    ExceptionHandler conditionally may_be_executed_by one CodeBlock;
  relationship R5150 is CodeBlock unconditionally contains_first one Statement,
    Statement conditionally is_first_in one CodeBlock;
  relationship R5151 is CodeBlock conditionally scopes many VariableDefinition,
    VariableDefinition unconditionally is_scoped_in one CodeBlock;
  relationship R5152 is ExceptionHandler unconditionally contains_first one Statement,
    Statement conditionally is_first_in one ExceptionHandler;
  relationship R5153 is ForStatement conditionally contains_first one Statement,
    Statement conditionally is_first_in one ForStatement;
  relationship R5154 is LoopSpec conditionally defines one VariableDefinition,
    VariableDefinition conditionally is_defined_in one LoopSpec;
  relationship R5155 is Statement conditionally precedes one Statement,
    Statement conditionally succeeds one Statement;
  relationship R5156 is IOStreamStatement unconditionally streams_through one Expression,
    Expression conditionally is_streamed_through one IOStreamStatement;
  relationship R5157 is ServiceInvocation unconditionally has_caller one Expression,
    Expression conditionally is_caller_for many ServiceInvocation;
  relationship R5158 is Alternative conditionally precedes one Alternative,
    Alternative conditionally succeeds one Alternative;
  relationship R5700 is LiteralExpression is_a ( TimestampLiteral, ThisLiteral, StringLiteral, NumericLiteral, NullLiteral, FlushLiteral, EnumerateLiteral, EndlLiteral, DurationLiteral, ConsoleLiteral, CharacterLiteral, BooleanLiteral );
  relationship R5701 is EnumerateLiteral unconditionally is_use_of one EnumerateItem,
    EnumerateItem conditionally is_used_by many EnumerateLiteral;
  relationship R5702 is NullLiteral unconditionally is_of_type one BasicType,
    BasicType conditionally types many NullLiteral;
  relationship R5703 is NumericLiteral is_a ( RealLiteral, IntegerLiteral );
  relationship R5704 is ThisLiteral conditionally is_scoped_by one Service,
    Service conditionally scopes many ThisLiteral;
  relationship R5705 is ThisLiteral conditionally is_scoped_by one ObjectDeclaration,
    ObjectDeclaration conditionally scopes many ThisLiteral;
  relationship R5706 is ThisLiteral conditionally is_scoped_by one State,
    State conditionally scopes many ThisLiteral;
  relationship R5600 is FunctionInvocation is_a ( TerminatorFunctionInvocation, ObjectFunctionInvocation, InstanceFunctionInvocation, DomainFunctionInvocation );
  relationship R5601 is DomainFunctionInvocation unconditionally invokes one DomainService,
    DomainService conditionally is_invoked_as many DomainFunctionInvocation;
  relationship R5603 is FunctionInvocation conditionally passes many Expression,
    Expression conditionally are_passed_on one FunctionInvocation;
  relationship R5604 is InstanceFunctionInvocation unconditionally invokes one ObjectService,
    ObjectService conditionally is_invoked_as many InstanceFunctionInvocation;
  relationship R5606 is InstanceFunctionInvocation unconditionally is_accessed_via one Expression,
    Expression conditionally accesses one InstanceFunctionInvocation;
  relationship R5607 is ObjectFunctionInvocation unconditionally invokes one ObjectService,
    ObjectService conditionally is_invoked_as many ObjectFunctionInvocation;
  relationship R5609 is TerminatorFunctionInvocation unconditionally invokes one DomainTerminatorService,
    DomainTerminatorService conditionally is_invoked_as many TerminatorFunctionInvocation;
  object ServiceOverload is
    alreadyDefined :   SemanticErrorCode;
    name :   Name;
  end object;
  object ExceptionDeclaration is
    name :   Name;
    visibility :   Visibility;
  end object;
  object ParameterDefinition is
    name :   Name;
//!R5201
    mode :   ParameterMode;
  end object;
  object DomainTerminator is
    name :   Name;
  end object;
  object Service is
    name :   Name;
    visibility :   Visibility;
  end object;
  object Domain is
    name :   Name;
  end object;
  object ExceptionReference is
  end object;
  object AttributeInitialization is
  end object;
  object ServiceExpression is
//!R5545
    overload :   iServiceOverload;
  end object;
  object Expression is
  end object;
  object AttributeDeclaration is
    isPreferredIdentifier :   boolean;
    isUnique :   boolean;
    name :   Name;
  end object;
  object ObjectDeclaration is
    name :   Name;
  end object;
  object ReferentialAttributeDefinition is
    refAttrName :   Name;
  end object;
  object IdentifierDeclaration is
//!preferred
    ispreferred :   boolean;
  end object;
  object StructureElement is
    name :   Name;
  end object;
  object TypeDeclaration is
    name :   Name;
    visibility :   Visibility;
  end object;
  object TypeConstraint is
  end object;
  object EnumerateItem is
    name :   Name;
    index :   integer;
  end object;
  object TypeDefinition is
  end object;
  object RelationshipDeclaration is
    name :   Name;
//!R6003
//!domain
    my_domain :   iDomain;
  end object;
  object HalfRelationship is
    conditional :   boolean;
    role :   myString;
//!R6004
    toObject :   iObjectNameExpression;
    mult :   enumeratedMultiplicityType;
//!R6006
    fromObject :   iObjectNameExpression;
  end object;
  object RelationshipSpecification is
//!R6011
    toObject :   Name;
    mult :   enumeratedMultiplicityType;
//!R6013
    half :   iHalfRelationship;
    role :   myString;
    conditional :   boolean;
//!R6014
    fromObject :   Name;
//!R6015
//!relationship
    my_relationship :   iRelationshipDeclaration;
  end object;
  object ProjectDomain is
  end object;
  object Project is
    projectName :   myString;
  end object;
  object ProjectTerminator is
    name :   Name;
  end object;
  object State is
//!R6104
    List_parameters :   iParameterDefinition;
    name :   Name;
//!R6105
//!object
    my_object :   iObjectDeclaration;
//!type
    my_type :   enumeratedStateType;
  end object;
  object TransitionTable is
//!R6113
//!object
    my_object :   iObjectDeclaration;
//!R6114
    List_rows :   iTransitionRow;
    isAssigner :   boolean;
  end object;
  object TransitionRow is
//!R6111
    initialState :   iState;
//!R6112
    List_options :   iTransitionOption;
  end object;
  object TransitionOption is
//!R6108
//!event
    my_event :   iEventExpression;
//!R6109
    destinationState :   iState;
//!type
    my_type :   enumeratedTransitionType;
  end object;
  object EventDeclaration is
    name :   Name;
//!type
    flavor :   EventType;
  end object;
  object Alternative is
    else_otherwise :   boolean;
  end object;
  object Statement is
  end object;
  object VariableDefinition is
    name :   Name;
//!readonly
    isreadonly :   boolean;
  end object;
  object ExceptionHandler is
    isother :   boolean;
  end object;
  object LoopSpec is
//!reverse
    isreverse :   boolean;
    loopVariable :   Name;
  end object;
  object BuiltinException is
//!type
    my_type :   ImplType;
  end object;
  object DomainTerminatorService is
  end object;
  object DomainService is
    fileExtension :   myString;
  end object;
  object EofExpression is
//!relationship?
    device :   iExpression;
  end object;
  object CallExpression is
  end object;
  object ParameterNameExpression is
//!R5536
    param :   iParameterDefinition;
  end object;
  object IndexedNameExpression is
//!R5522
    index :   iExpression;
//!R5523
    prefix :   iExpression;
  end object;
  object DictionaryValuesExpression is
//!relationship?
    my_dictionary :   iExpression;
    my_type :   iBagType;
  end object;
  object FindAttributeNameExpression is
  end object;
  object LinkUnlinkExpression is
    mainText :   myString;
    isCollection :   boolean;
//!type
    islink :   boolean;
  end object;
  object AnyExpression is
//!This has to do with characteristics.
    count :   iExpression;
//!This has to do with characteristics.
    collection :   iExpression;
//!This has to do with characteristics.
    my_type :   iBasicType;
  end object;
  object RangeExpression is
  end object;
  object ElementsExpression is
//!relationship?
    collection :   iExpression;
    my_type :   iSequenceType;
  end object;
  object NavigationExpression is
//!R5530
    whereClause :   iExpression;
//!R5531
//!relationship
    my_relationship :   iRelationshipSpecification;
//!R5532
    lhs :   iExpression;
  end object;
  object CorrelatedNavExpression is
//!R5506
    rhs :   iExpression;
//!R5507
//!relationship
    my_relationship :   iRelationshipSpecification;
//!R5508
    lhs :   iExpression;
  end object;
  object CharacteristicExpression is
    characteristic :   Type;
    number_of_arguments :   int;
    allowAsPrefix :   boolean;
  end object;
  object OrderingExpression is
//!probably just a String
    name :   Name;
//!reverse
    isreverse :   boolean;
  end object;
  object TimestampDeltaExpression is
    characteristic :   myString;
//!R5558
    arg :   iExpression;
//!R5559
    lhs :   iExpression;
    splitType :   Type;
  end object;
  object TimerFieldExpression is
    field :   Field;
//!R5557
    lhs :   iExpression;
  end object;
  object SliceExpression is
//!R5546
//!range
    my_range :   iRangeExpression;
//!R5547
    prefix :   iExpression;
  end object;
  object ParseExpression is
  end object;
  object DictionaryAccessExpression is
//!R5512
    index :   iExpression;
//!R5513
    prefix :   iExpression;
  end object;
  object CreateDurationExpression is
    characteristic :   myString;
//!R5509
    lhs :   iBasicType;
    field :   Field;
//!R5510
    argument :   iExpression;
  end object;
  object SelectedAttributeExpression is
  end object;
  object SplitExpression is
    fields :   Set;
//!R5548
    resultType :   iBasicType;
    characteristic :   myString;
//!R5549
    List_args :   iExpression;
//!R5550
    lhs :   iExpression;
    splitType :   Type;
  end object;
  object TypeNameExpression is
//!R5560
//!type
    my_type :   iBasicType;
  end object;
  object FindParameterExpression is
    name :   Name;
//!R5521
//!type
    my_type :   iBasicType;
  end object;
  object DictionaryKeysExpression is
//!relationship?
    my_dictionary :   iExpression;
    my_type :   iSetType;
  end object;
  object EventExpression is
//!R5516
//!event
    my_event :   iEventDeclaration;
  end object;
  object DotExpression is
    name :   Name;
  end object;
  object TerminatorNameExpression is
  end object;
  object TimeFieldExpression is
    characteristic :   myString;
    field :   Field;
//!R5556
    lhs :   iExpression;
  end object;
  object StructureAggregate is
  end object;
  object VariableNameExpression is
//!R5562
    definition :   iVariableDefinition;
  end object;
  object UnaryExpression is
    text :   myString;
    operator :   Operator;
    resultType :   ResultType;
  end object;
  object SelectedComponentExpression is
//!R5543
    component :   iStructureElement;
//!R5544
    prefix :   iExpression;
  end object;
  object CreateExpression is
//!probably need a relationship here
    value :   iExpression;
  end object;
  object FindExpression is
    findType :   FindType;
  end object;
  object DictionaryContainsExpression is
//!R5514
    index :   iExpression;
//!R5515
    prefix :   iExpression;
  end object;
  object ObjectNameExpression is
  end object;
  object BinaryExpression is
    operator :   Operator;
  end object;
  object ObjectService is
    isInstance :   boolean;
  end object;
  object BasicType is
    isanonymous :   boolean;
  end object;
  object DigitsConstraint is
  end object;
  object RangeConstraint is
  end object;
  object DeltaConstraint is
  end object;
  object FullTypeDefinition is
  end object;
  object SubtypeRelationshipDeclaration is
//!R6016
    List_subtypes :   iObjectDeclaration;
    name :   Name;
//!R6017
    supertype :   iObjectDeclaration;
  end object;
  object AssociativeRelationshipDeclaration is
//!R6000
    leftToRight :   iHalfRelationship;
//!R6001
    assocObject :   iObjectDeclaration;
    name :   Name;
//!R6002
    rightToLeft :   iHalfRelationship;
  end object;
  object NormalRelationshipDeclaration is
//!R6007
    leftToRight :   iHalfRelationship;
    name :   Name;
//!R6008
    rightToLeft :   iHalfRelationship;
  end object;
  object ProjectTerminatorService is
  end object;
  object RaiseStatement is
  end object;
  object ExitStatement is
  end object;
  object CodeBlock is
    topLevel :   boolean;
//!R5149
    List_exceptionHandlers :   iExceptionHandler;
//!R5150
    List_statements :   iStatement;
//!R5151
    List_variables :   iVariableDefinition;
  end object;
  object ServiceInvocation is
//!service
    my_service :   ServiceType;
  end object;
  object ReturnStatement is
//!R5127
    currentService :   iService;
  end object;
  object IOStreamStatement is
//!R5115
    streamName :   iExpression;
    operator :   IOop;
  end object;
  object CaseStatement is
  end object;
  object CancelTimerStatement is
//!R5102
    timerId :   iExpression;
  end object;
  object AssignmentStatement is
  end object;
  object DeleteStatement is
  end object;
  object FromToRange is
//!R5111
//!range
    my_range :   iMinMaxRange;
  end object;
  object VariableRange is
//!R5140
    variable :   iExpression;
  end object;
  object GenerateStatement is
//!R5112
    eventRef :   iEventExpression;
//!R5113
    toInstance :   iExpression;
//!R5114
    List_arguments :   iExpression;
  end object;
  object PragmaStatement is
  end object;
  object IfStatement is
  end object;
  object EraseStatement is
  end object;
  object ScheduleStatement is
    isAbsolute :   boolean;
//!R5129
//!generate
    my_generate :   iGenerateStatement;
//!R5130
    time :   iExpression;
//!R5131
    period :   iExpression;
//!R5132
    timerId :   iExpression;
  end object;
  object ForStatement is
  end object;
  object WhileStatement is
  end object;
  object LinkUnlinkStatement is
//!type
    isLink :   boolean;
    assocText :   myString;
    mainText :   myString;
  end object;
  object DelayStatement is
  end object;
  object VariableElements is
//!R5139
    variable :   iExpression;
  end object;
  object TypeRange is
//!R5136
//!type
    my_type :   iBasicType;
  end object;
  object LiteralExpression is
  end object;
  object BuiltinType is
//!maybe this is just String
    name :   Name;
  end object;
  object InstanceOrderingExpression is
  end object;
  object StructureOrderingExpression is
  end object;
  object MinMaxRange is
//!this may be an indicator of subtype
    my_type :   RangeType;
  end object;
  object CastExpression is
//!R5501
//!type
    my_type :   iTypeNameExpression;
//!R5502
    rhs :   iExpression;
  end object;
  object CharacteristicRange is
    min :   iExpression;
    max :   iExpression;
    my_type :   iBasicType;
//!R5505
//!range
    my_range :   iCharacteristicExpression;
    typeName :   iTypeNameExpression;
  end object;
  object BinaryComparisonExpression is
  end object;
  object BinaryAdditiveExpression is
  end object;
  object BinaryMultiplicativeExpression is
  end object;
  object BinaryCollectionExpression is
  end object;
  object BinaryLogicalExpression is
  end object;
  object UnconstrainedArraySubtype is
  end object;
  object ConstrainedType is
  end object;
  object CollectionType is
  end object;
  object StructureType is
  end object;
  object UserDefinedType is
  end object;
  object UnconstrainedArrayType is
  end object;
  object AnonymousStructure is
  end object;
  object InternalType is
    name :   Name;
  end object;
  object InstanceType is
  end object;
  object DictionaryType is
  end object;
  object EnumerateType is
  end object;
  object ObjectServiceInvocation is
  end object;
  object DomainServiceInvocation is
  end object;
  object InstanceServiceInvocation is
//!R5116
//!service
    my_service :   iObjectService;
//!R5117
    List_arguments :   iExpression;
//!R5118
//!instance
    my_instance :   iExpression;
  end object;
  object TerminatorServiceInvocation is
  end object;
  object BooleanLiteral is
    value :   boolean;
  end object;
  object CharacterLiteral is
    original :   myString;
    noQuotes :   myString;
  end object;
  object FlushLiteral is
  end object;
  object StringLiteral is
    original :   myString;
    noQuotes :   myString;
    lhs :   myString;
    rhs :   myString;
    literal :   myString;
  end object;
  object EndlLiteral is
  end object;
  object NullLiteral is
  end object;
  object ThisLiteral is
//!R5704
//!service
    my_service :   iService;
//!R5705
//!object
    my_object :   iObjectDeclaration;
//!R5706
//!state
    my_state :   iState;
  end object;
  object NumericLiteral is
    text :   myString;
  end object;
  object TimestampLiteral is
    datetime :   Date;
    nanos :   int;
    original :   myString;
  end object;
  object DurationLiteral is
    literal :   myString;
  end object;
  object EnumerateLiteral is
//!R5701
    value :   iEnumerateItem;
  end object;
  object ConsoleLiteral is
  end object;
  object FunctionInvocation is
//!service
    my_service :   ServiceType;
  end object;
  object WCharacterType is
  end object;
  object DurationType is
  end object;
  object WStringType is
  end object;
  object TimerType is
  end object;
  object CharacterType is
  end object;
  object AnyInstanceType is
  end object;
  object NumericType is
    bits :   int;
    signed :   boolean;
  end object;
  object DeviceType is
  end object;
  object StringType is
  end object;
  object BooleanType is
  end object;
  object TimestampType is
  end object;
  object EventType is
  end object;
  object RangeType is
  end object;
  object BagType is
//!anonymous
    my_anonymous :   boolean;
  end object;
  object SetType is
  end object;
  object SequenceType is
  end object;
  object ArrayType is
  end object;
  object RealLiteral is
    value :   double;
  end object;
  object IntegerLiteral is
    value :   myLong;
  end object;
  object DomainFunctionInvocation is
  end object;
  object TerminatorFunctionInvocation is
  end object;
  object ObjectFunctionInvocation is
  end object;
  object InstanceFunctionInvocation is
  end object;
  object ByteType is
  end object;
  object RealType is
  end object;
  object IntegerType is
  end object;
  object SmallIntegerType is
  end object;
end domain;
pragma InitFunction ( init ); 
