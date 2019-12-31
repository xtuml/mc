domain masl_type is
  object AnonymousStructure;
  object AnyInstanceType;
  object ArrayType;
  object BagType;
  object BasicType;
  object BooleanType;
  object BuiltinType;
  object ByteType;
  object CharacterType;
  object CollectionType;
  object ConstrainedType;
  object DeltaConstraint;
  object DeviceType;
  object DictionaryType;
  object DigitsConstraint;
  object DurationType;
  object EnumerateItem;
  object EnumerateType;
  object EventType;
  object FullTypeDefinition;
  object InstanceType;
  object IntegerType;
  object InternalType;
  object NumericType;
  object RangeConstraint;
  object RangeType;
  object RealType;
  object SequenceType;
  object SetType;
  object SmallIntegerType;
  object StringType;
  object StructureElement;
  object StructureType;
  object TimerType;
  object TimestampType;
  object TypeConstraint;
  object TypeDeclaration;
  object TypeDefinition;
  object UnconstrainedArraySubtype;
  object UnconstrainedArrayType;
  object UserDefinedType;
  object WCharacterType;
  object WStringType;
  object Z_ObjectDeclaration_type;
  object Z_Expression_type;
  object Z_Domain_type;
  object Z_RangeExpression_type;

  //!associations
  relationship R6200 is AnonymousStructure unconditionally structures many BasicType, BasicType conditionally is_structured_by many AnonymousStructure;
  relationship R6201 is ArrayType unconditionally is_bounded_by one Z_RangeExpression_type, Z_RangeExpression_type conditionally bounds one ArrayType;
  relationship R6205 is BasicType is_a ( AnonymousStructure, BuiltinType, CollectionType, DictionaryType, InstanceType, InternalType, UnconstrainedArraySubtype, UserDefinedType );
  relationship R6206 is BuiltinType is_a ( AnyInstanceType, BooleanType, CharacterType, DeviceType, DurationType, EventType, NumericType, StringType, TimerType, TimestampType, WCharacterType, WStringType );
  relationship R6207 is CollectionType is_a ( ArrayType, BagType, RangeType, SequenceType, SetType );
  relationship R6208 is CollectionType unconditionally collects one BasicType, BasicType conditionally is_collected_by many CollectionType;
  relationship R6209 is ConstrainedType unconditionally is_defined_by one TypeConstraint, TypeConstraint conditionally defines many ConstrainedType;
  relationship R6210 is ConstrainedType unconditionally constrains one BasicType, BasicType conditionally is_constrained_by many ConstrainedType;
  relationship R6211 is DeltaConstraint unconditionally has_resolution one Z_Expression_type, Z_Expression_type conditionally is_resolution_of one DeltaConstraint;
  relationship R6212 is DeltaConstraint unconditionally is_spanned_by one RangeConstraint, RangeConstraint conditionally spans one DeltaConstraint;
  relationship R6213 is DictionaryType unconditionally pairs_key_on one BasicType, BasicType conditionally is_keyed_by one DictionaryType;
  relationship R6214 is DictionaryType unconditionally pairs_value_on one BasicType, BasicType conditionally is_valued_by one DictionaryType;
  relationship R6215 is DigitsConstraint unconditionally is_limited_by one Z_Expression_type, Z_Expression_type conditionally limits one DigitsConstraint;
  relationship R6216 is DigitsConstraint unconditionally is_spanned_by one RangeConstraint, RangeConstraint unconditionally spans one DigitsConstraint;
  relationship R6217 is EnumerateItem conditionally is_set_by one Z_Expression_type, Z_Expression_type conditionally sets one EnumerateItem;
  relationship R6218 is EnumerateType unconditionally defines_discrete many EnumerateItem, EnumerateItem unconditionally is_discrete_value_of one EnumerateType;
  relationship R6219 is FullTypeDefinition is_a ( ConstrainedType, EnumerateType, StructureType, UnconstrainedArrayType );
  relationship R6220 is InstanceType unconditionally references one Z_ObjectDeclaration_type, Z_ObjectDeclaration_type conditionally is_referenced_by one InstanceType;
  relationship R6221 is NumericType is_a ( ByteType, IntegerType, RealType, SmallIntegerType );
  relationship R6222 is NumericType unconditionally has_max one Z_Expression_type, Z_Expression_type conditionally is_max_of one NumericType;
  relationship R6223 is NumericType unconditionally has_min one Z_Expression_type, Z_Expression_type unconditionally is_min_of one NumericType;
  relationship R6224 is RangeConstraint unconditionally is_bounded_by one Z_RangeExpression_type, Z_RangeExpression_type conditionally bounds one RangeConstraint;
  relationship R6226 is SequenceType conditionally has_max_size one Z_Expression_type, Z_Expression_type conditionally is_max_size_of one SequenceType;
  relationship R6229 is StructureElement conditionally is_initialized_by one Z_Expression_type, Z_Expression_type conditionally initializes one StructureElement;
  relationship R6230 is StructureElement unconditionally is_type_of one BasicType, BasicType conditionally types many StructureElement;
  relationship R6232 is TypeConstraint is_a ( DeltaConstraint, DigitsConstraint, RangeConstraint );
  relationship R6233 is TypeConstraint unconditionally is_bounded_by one Z_RangeExpression_type, Z_RangeExpression_type conditionally bounds one TypeConstraint;
  relationship R6234 is TypeDeclaration unconditionally is_defined_by one TypeDefinition, TypeDefinition unconditionally defines one TypeDeclaration;
  relationship R6235 is TypeDeclaration unconditionally is_defined_in one Z_Domain_type, Z_Domain_type conditionally defines many TypeDeclaration;
  relationship R6236 is TypeDefinition is_a ( BasicType, FullTypeDefinition );
  relationship R6237 is UnconstrainedArraySubtype unconditionally has_span one Z_RangeExpression_type, Z_RangeExpression_type conditionally spans one UnconstrainedArraySubtype;
  relationship R6238 is UnconstrainedArraySubtype unconditionally arrays one UserDefinedType, UserDefinedType conditionally is_arrayed_by many UnconstrainedArraySubtype;
  relationship R6239 is UnconstrainedArrayType unconditionally indexes_with one BasicType, BasicType conditionally indexes many UnconstrainedArrayType;
  relationship R6240 is UnconstrainedArrayType unconditionally arrays one BasicType, BasicType conditionally is_arrayed_by many UnconstrainedArrayType;
  relationship R6241 is UserDefinedType unconditionally is_shaped_by one TypeDeclaration, TypeDeclaration conditionally is_shaped_by one UserDefinedType;
  object AnonymousStructure is
    //!R6200
    List_elements : iBasicType;
  end object; pragma id(6200);
  object AnyInstanceType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6201);
  object ArrayType is
    //!R6201
    //!range
    my_range : iRangeExpression;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6202);
  object BagType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6203);
  object BasicType is
  end object; pragma id(6204);
  object BooleanType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6205);
  object BuiltinType is
    text : String;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6206);
  object ByteType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6207);
  object CharacterType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6208);
  object CollectionType is
    //!anonymous
    my_anonymous : boolean;
    //!R6208
    containedType : iBasicType;
  end object; pragma id(6209);
  object ConstrainedType is
    //!R6209
    constraint : iTypeConstraint;
    //!R6210
    fullType : iBasicType;
  end object; pragma id(6210);
  object DeltaConstraint is
    //!R6211
    //!delta
    my_delta : iExpression;
    //!R6212
    //!range
    my_range : iRangeConstraint;
  end object; pragma id(6211);
  object DeviceType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6212);
  object DictionaryType is
    //!R6213
    keyType : iBasicType;
    //!anonymous
    my_anonymous : boolean;
    //!R6214
    valueType : iBasicType;
  end object; pragma id(6213);
  object DigitsConstraint is
    //!R6215
    //!digits
    my_digits : iExpression;
    //!R6216
    //!range
    my_range : iRangeConstraint;
  end object; pragma id(6214);
  object DurationType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6215);
  object EnumerateItem is
    name : Name;
    //!R6217
    value : iExpression;
    name1 : String;
  end object; pragma id(6216);
  object EnumerateType is
    //!R6218
    List_items : iEnumerateItem;
  end object; pragma id(6217);
  object EventType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6218);
  object FullTypeDefinition is
  end object; pragma id(6219);
  object InstanceType is
    //!R6220
    //!object
    my_object : iObjectDeclaration;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6220);
  object IntegerType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6221);
  object InternalType is
    name : Name;
  end object; pragma id(6222);
  object NumericType is
    bits : int;
    signed : boolean;
    name : Name;
    //!R6222
    max : iExpression;
    //!R6223
    min : iExpression;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6223);
  object RangeConstraint is
    //!R6224
    //!range
    my_range : iRangeExpression;
  end object; pragma id(6224);
  object RangeType is
  end object; pragma id(6225);
  object RealType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6226);
  object SequenceType is
    //!anonymous
    my_anonymous : boolean;
    //!R6226
    bound : iExpression;
  end object; pragma id(6227);
  object SetType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6228);
  object SmallIntegerType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6229);
  object StringType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6230);
  object StructureElement is
    //!R6229
    defaultValue : iExpression;
    //!R6230
    //!type
    my_type : iBasicType;
    name : Name;
  end object; pragma id(6231);
  object StructureType is
  end object; pragma id(6232);
  object TimerType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6233);
  object TimestampType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6234);
  object TypeConstraint is
    //!R6233
    //!range
    my_range : iRangeExpression;
  end object; pragma id(6235);
  object TypeDeclaration is
    name : Name;
    //!R6234
    typeDefinition : iTypeDefinition;
    //!R6235
    //!domain
    my_domain : iDomain;
  end object; pragma id(6236);
  object TypeDefinition is
  end object; pragma id(6237);
  object UnconstrainedArraySubtype is
    //!R6237
    //!range
    my_range : iRangeExpression;
    //!R6238
    fullType : iUserDefinedType;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6238);
  object UnconstrainedArrayType is
    //!R6239
    indexType : iBasicType;
    //!R6240
    containedType : iBasicType;
  end object; pragma id(6239);
  object UserDefinedType is
    //!R6241
    //!type
    my_type : iTypeDeclaration;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6240);
  object WCharacterType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6241);
  object WStringType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6242);

  //!IMPORTED
  object Z_ObjectDeclaration_type is
  end object; pragma id(6243);

  //!IMPORTED
  object Z_Expression_type is
  end object; pragma id(6244);

  //!IMPORTED
  object Z_Domain_type is
  end object; pragma id(6245);

  //!IMPORTED
  object Z_RangeExpression_type is
  end object; pragma id(6246);
end domain;
