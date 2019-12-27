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
  relationship R6200 is AnonymousStructure unconditionally XX many BasicType, BasicType unconditionally YY one AnonymousStructure;
  relationship R6201 is ArrayType unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one ArrayType;
  relationship R6202 is ArrayType unconditionally XX one BasicType, BasicType unconditionally YY one ArrayType;
  relationship R6203 is ArrayType unconditionally XX one Z_RangeExpression_type, Z_RangeExpression_type unconditionally YY one ArrayType;
  relationship R6204 is BagType unconditionally XX one BasicType, BasicType unconditionally YY one BagType;
  relationship R6205 is BasicType is_a ( AnonymousStructure, BuiltinType, CollectionType, DictionaryType, InstanceType, InternalType, UnconstrainedArraySubtype, UserDefinedType );
  relationship R6206 is BuiltinType is_a ( AnyInstanceType, BooleanType, CharacterType, DeviceType, DurationType, EventType, NumericType, StringType, TimerType, TimestampType, WCharacterType, WStringType );
  relationship R6207 is CollectionType is_a ( ArrayType, BagType, RangeType, SequenceType, SetType );
  relationship R6208 is CollectionType unconditionally XX one BasicType, BasicType unconditionally YY one CollectionType;
  relationship R6209 is ConstrainedType unconditionally XX one TypeConstraint, TypeConstraint unconditionally YY one ConstrainedType;
  relationship R6210 is ConstrainedType unconditionally XX one BasicType, BasicType unconditionally YY one ConstrainedType;
  relationship R6211 is DeltaConstraint unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one DeltaConstraint;
  relationship R6212 is DeltaConstraint unconditionally XX one RangeConstraint, RangeConstraint unconditionally YY one DeltaConstraint;
  relationship R6213 is DictionaryType unconditionally XX one BasicType, BasicType unconditionally YY one DictionaryType;
  relationship R6214 is DictionaryType unconditionally XX one BasicType, BasicType unconditionally YY one DictionaryType;
  relationship R6215 is DigitsConstraint unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one DigitsConstraint;
  relationship R6216 is DigitsConstraint unconditionally XX one RangeConstraint, RangeConstraint unconditionally YY one DigitsConstraint;
  relationship R6217 is EnumerateItem unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one EnumerateItem;
  relationship R6218 is EnumerateType unconditionally XX many EnumerateItem, EnumerateItem unconditionally YY one EnumerateType;
  relationship R6219 is FullTypeDefinition is_a ( ConstrainedType, EnumerateType, StructureType, UnconstrainedArrayType );
  relationship R6220 is InstanceType unconditionally XX one Z_ObjectDeclaration_type, Z_ObjectDeclaration_type unconditionally YY one InstanceType;
  relationship R6221 is NumericType is_a ( ByteType, IntegerType, RealType, SmallIntegerType );
  relationship R6222 is NumericType unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one NumericType;
  relationship R6223 is NumericType unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one NumericType;
  relationship R6224 is RangeConstraint unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one RangeConstraint;
  relationship R6225 is RangeType unconditionally XX one BasicType, BasicType unconditionally YY one RangeType;
  relationship R6226 is SequenceType unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one SequenceType;
  relationship R6227 is SequenceType unconditionally XX one BasicType, BasicType unconditionally YY one SequenceType;
  relationship R6228 is SetType unconditionally XX one BasicType, BasicType unconditionally YY one SetType;
  relationship R6229 is StructureElement unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one StructureElement;
  relationship R6230 is StructureElement unconditionally XX one BasicType, BasicType unconditionally YY one StructureElement;
  relationship R6231 is StructureType unconditionally XX many StructureElement, StructureElement unconditionally YY one StructureType;
  relationship R6232 is TypeConstraint is_a ( DeltaConstraint, DigitsConstraint, RangeConstraint );
  relationship R6233 is TypeConstraint unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one TypeConstraint;
  relationship R6234 is TypeDeclaration unconditionally XX one TypeDefinition, TypeDefinition unconditionally YY one TypeDeclaration;
  relationship R6235 is TypeDeclaration unconditionally XX one Z_Domain_type, Z_Domain_type unconditionally YY one TypeDeclaration;
  relationship R6236 is TypeDefinition is_a ( BasicType, FullTypeDefinition );
  relationship R6237 is UnconstrainedArraySubtype unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one UnconstrainedArraySubtype;
  relationship R6238 is UnconstrainedArraySubtype unconditionally XX one UserDefinedType, UserDefinedType unconditionally YY one UnconstrainedArraySubtype;
  relationship R6239 is UnconstrainedArrayType unconditionally XX one BasicType, BasicType unconditionally YY one UnconstrainedArrayType;
  relationship R6240 is UnconstrainedArrayType unconditionally XX one BasicType, BasicType unconditionally YY one UnconstrainedArrayType;
  relationship R6241 is UserDefinedType unconditionally XX one TypeDeclaration, TypeDeclaration unconditionally YY one UserDefinedType;
  relationship R6242 is UserDefinedType unconditionally XX one TypeDeclaration, TypeDeclaration unconditionally YY one UserDefinedType;
  object AnonymousStructure is
    //!relationship R6200 is AnonymousStructure unconditionally XX many BasicType, BasicType unconditionally YY one AnonymousStructure;
    List_elements : iBasicType;
  end object; pragma id(6200);
  object AnyInstanceType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6201);
  object ArrayType is
    //!relationship R6201 is ArrayType unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one ArrayType;
    //!range
    my_range : iExpression;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R6202 is ArrayType unconditionally XX one BasicType, BasicType unconditionally YY one ArrayType;
    containedType : iBasicType;
    //!relationship R6203 is ArrayType unconditionally XX one Z_RangeExpression_type, Z_RangeExpression_type unconditionally YY one ArrayType;
    //!range
    my_range1 : iRangeExpression;
  end object; pragma id(6202);
  object BagType is
    //!anonymous
    my_anonymous : boolean;
    //!relationship R6204 is BagType unconditionally XX one BasicType, BasicType unconditionally YY one BagType;
    containedType : iBasicType;
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
    //!relationship R6208 is CollectionType unconditionally XX one BasicType, BasicType unconditionally YY one CollectionType;
    containedType : iBasicType;
  end object; pragma id(6209);
  object ConstrainedType is
    //!relationship R6209 is ConstrainedType unconditionally XX one TypeConstraint, TypeConstraint unconditionally YY one ConstrainedType;
    constraint : iTypeConstraint;
    //!relationship R6210 is ConstrainedType unconditionally XX one BasicType, BasicType unconditionally YY one ConstrainedType;
    fullType : iBasicType;
  end object; pragma id(6210);
  object DeltaConstraint is
    //!relationship R6211 is DeltaConstraint unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one DeltaConstraint;
    //!delta
    my_delta : iExpression;
    //!relationship R6212 is DeltaConstraint unconditionally XX one RangeConstraint, RangeConstraint unconditionally YY one DeltaConstraint;
    //!range
    my_range : iRangeConstraint;
  end object; pragma id(6211);
  object DeviceType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6212);
  object DictionaryType is
    //!relationship R6213 is DictionaryType unconditionally XX one BasicType, BasicType unconditionally YY one DictionaryType;
    keyType : iBasicType;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R6214 is DictionaryType unconditionally XX one BasicType, BasicType unconditionally YY one DictionaryType;
    valueType : iBasicType;
  end object; pragma id(6213);
  object DigitsConstraint is
    //!relationship R6215 is DigitsConstraint unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one DigitsConstraint;
    //!digits
    my_digits : iExpression;
    //!relationship R6216 is DigitsConstraint unconditionally XX one RangeConstraint, RangeConstraint unconditionally YY one DigitsConstraint;
    //!range
    my_range : iRangeConstraint;
  end object; pragma id(6214);
  object DurationType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6215);
  object EnumerateItem is
    name : String;
    //!relationship R6217 is EnumerateItem unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one EnumerateItem;
    value : iExpression;
    name1 : String;
  end object; pragma id(6216);
  object EnumerateType is
    //!relationship R6218 is EnumerateType unconditionally XX many EnumerateItem, EnumerateItem unconditionally YY one EnumerateType;
    List_items : iEnumerateItem;
  end object; pragma id(6217);
  object EventType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6218);
  object FullTypeDefinition is
  end object; pragma id(6219);
  object InstanceType is
    //!relationship R6220 is InstanceType unconditionally XX one Z_ObjectDeclaration_type, Z_ObjectDeclaration_type unconditionally YY one InstanceType;
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
    name : String;
  end object; pragma id(6222);
  object NumericType is
    bits : int;
    signed : boolean;
    name : String;
    //!relationship R6222 is NumericType unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one NumericType;
    max : iExpression;
    //!relationship R6223 is NumericType unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one NumericType;
    min : iExpression;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6223);
  object RangeConstraint is
    //!relationship R6224 is RangeConstraint unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one RangeConstraint;
    //!range
    my_range : iExpression;
  end object; pragma id(6224);
  object RangeType is
    //!relationship R6225 is RangeType unconditionally XX one BasicType, BasicType unconditionally YY one RangeType;
    containedType : iBasicType;
  end object; pragma id(6225);
  object RealType is
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6226);
  object SequenceType is
    //!anonymous
    my_anonymous : boolean;
    //!relationship R6226 is SequenceType unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one SequenceType;
    bound : iExpression;
    //!relationship R6227 is SequenceType unconditionally XX one BasicType, BasicType unconditionally YY one SequenceType;
    containedType : iBasicType;
  end object; pragma id(6227);
  object SetType is
    //!anonymous
    my_anonymous : boolean;
    //!relationship R6228 is SetType unconditionally XX one BasicType, BasicType unconditionally YY one SetType;
    containedType : iBasicType;
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
    //!relationship R6229 is StructureElement unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one StructureElement;
    defaultValue : iExpression;
    //!relationship R6230 is StructureElement unconditionally XX one BasicType, BasicType unconditionally YY one StructureElement;
    //!type
    my_type : iBasicType;
    name : String;
  end object; pragma id(6231);
  object StructureType is
    //!relationship R6231 is StructureType unconditionally XX many StructureElement, StructureElement unconditionally YY one StructureType;
    List_elements : iStructureElement;
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
    //!relationship R6233 is TypeConstraint unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one TypeConstraint;
    //!range
    my_range : iExpression;
  end object; pragma id(6235);
  object TypeDeclaration is
    name : String;
    //!relationship R6234 is TypeDeclaration unconditionally XX one TypeDefinition, TypeDefinition unconditionally YY one TypeDeclaration;
    typeDefinition : iTypeDefinition;
    //!relationship R6235 is TypeDeclaration unconditionally XX one Z_Domain_type, Z_Domain_type unconditionally YY one TypeDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(6236);
  object TypeDefinition is
  end object; pragma id(6237);
  object UnconstrainedArraySubtype is
    //!relationship R6237 is UnconstrainedArraySubtype unconditionally XX one Z_Expression_type, Z_Expression_type unconditionally YY one UnconstrainedArraySubtype;
    //!range
    my_range : iExpression;
    //!relationship R6238 is UnconstrainedArraySubtype unconditionally XX one UserDefinedType, UserDefinedType unconditionally YY one UnconstrainedArraySubtype;
    fullType : iUserDefinedType;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(6238);
  object UnconstrainedArrayType is
    //!relationship R6239 is UnconstrainedArrayType unconditionally XX one BasicType, BasicType unconditionally YY one UnconstrainedArrayType;
    indexType : iBasicType;
    //!relationship R6240 is UnconstrainedArrayType unconditionally XX one BasicType, BasicType unconditionally YY one UnconstrainedArrayType;
    containedType : iBasicType;
  end object; pragma id(6239);
  object UserDefinedType is
    //!relationship R6241 is UserDefinedType unconditionally XX one TypeDeclaration, TypeDeclaration unconditionally YY one UserDefinedType;
    //!type
    my_type : iTypeDeclaration;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R6242 is UserDefinedType unconditionally XX one TypeDeclaration, TypeDeclaration unconditionally YY one UserDefinedType;
    //!type
    my_type1 : iTypeDeclaration;
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
