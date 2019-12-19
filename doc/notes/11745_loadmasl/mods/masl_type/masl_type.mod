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
  object ObjectDeclaration;
  object Expression;
  object Domain;
  object RangeExpression;
  private type iAnonymousStructure is instance of AnonymousStructure;
  private type iAnyInstanceType is instance of AnyInstanceType;
  private type iArrayType is instance of ArrayType;
  private type iBagType is instance of BagType;
  private type iBasicType is instance of BasicType;
  private type iBooleanType is instance of BooleanType;
  private type iBuiltinType is instance of BuiltinType;
  private type iByteType is instance of ByteType;
  private type iCharacterType is instance of CharacterType;
  private type iCollectionType is instance of CollectionType;
  private type iConstrainedType is instance of ConstrainedType;
  private type iDeltaConstraint is instance of DeltaConstraint;
  private type iDeviceType is instance of DeviceType;
  private type iDictionaryType is instance of DictionaryType;
  private type iDigitsConstraint is instance of DigitsConstraint;
  private type iDurationType is instance of DurationType;
  private type iEnumerateItem is instance of EnumerateItem;
  private type iEnumerateType is instance of EnumerateType;
  private type iEventType is instance of EventType;
  private type iFullTypeDefinition is instance of FullTypeDefinition;
  private type iInstanceType is instance of InstanceType;
  private type iIntegerType is instance of IntegerType;
  private type iInternalType is instance of InternalType;
  private type iNumericType is instance of NumericType;
  private type iRangeConstraint is instance of RangeConstraint;
  private type iRangeType is instance of RangeType;
  private type iRealType is instance of RealType;
  private type iSequenceType is instance of SequenceType;
  private type iSetType is instance of SetType;
  private type iSmallIntegerType is instance of SmallIntegerType;
  private type iStringType is instance of StringType;
  private type iStructureElement is instance of StructureElement;
  private type iStructureType is instance of StructureType;
  private type iTimerType is instance of TimerType;
  private type iTimestampType is instance of TimestampType;
  private type iTypeConstraint is instance of TypeConstraint;
  private type iTypeDeclaration is instance of TypeDeclaration;
  private type iTypeDefinition is instance of TypeDefinition;
  private type iUnconstrainedArraySubtype is instance of UnconstrainedArraySubtype;
  private type iUnconstrainedArrayType is instance of UnconstrainedArrayType;
  private type iUserDefinedType is instance of UserDefinedType;
  private type iWCharacterType is instance of WCharacterType;
  private type iWStringType is instance of WStringType;
  relationship R1900 is AnonymousStructure unconditionally XX many BasicType, BasicType unconditionally YY one AnonymousStructure;
  relationship R1901 is ArrayType unconditionally XX one Expression, Expression unconditionally YY one ArrayType;
  relationship R1902 is ArrayType unconditionally XX one BasicType, BasicType unconditionally YY one ArrayType;
  relationship R1903 is ArrayType unconditionally XX one RangeExpression, RangeExpression unconditionally YY one ArrayType;
  relationship R1904 is BagType unconditionally XX one BasicType, BasicType unconditionally YY one BagType;
  relationship R1905 is BasicType is_a ( AnonymousStructure, BuiltinType, CollectionType, DictionaryType, InstanceType, InternalType, UnconstrainedArraySubtype, UserDefinedType );
  relationship R1906 is BuiltinType is_a ( AnyInstanceType, BooleanType, CharacterType, DeviceType, DurationType, EventType, NumericType, StringType, TimerType, TimestampType, WCharacterType, WStringType );
  relationship R1907 is CollectionType is_a ( ArrayType, BagType, RangeType, SequenceType, SetType );
  relationship R1908 is CollectionType unconditionally XX one BasicType, BasicType unconditionally YY one CollectionType;
  relationship R1909 is ConstrainedType unconditionally XX one TypeConstraint, TypeConstraint unconditionally YY one ConstrainedType;
  relationship R1910 is ConstrainedType unconditionally XX one BasicType, BasicType unconditionally YY one ConstrainedType;
  relationship R1911 is DeltaConstraint unconditionally XX one Expression, Expression unconditionally YY one DeltaConstraint;
  relationship R1912 is DeltaConstraint unconditionally XX one RangeConstraint, RangeConstraint unconditionally YY one DeltaConstraint;
  relationship R1913 is DictionaryType unconditionally XX one BasicType, BasicType unconditionally YY one DictionaryType;
  relationship R1914 is DictionaryType unconditionally XX one BasicType, BasicType unconditionally YY one DictionaryType;
  relationship R1915 is DigitsConstraint unconditionally XX one Expression, Expression unconditionally YY one DigitsConstraint;
  relationship R1916 is DigitsConstraint unconditionally XX one RangeConstraint, RangeConstraint unconditionally YY one DigitsConstraint;
  relationship R1917 is EnumerateItem unconditionally XX one Expression, Expression unconditionally YY one EnumerateItem;
  relationship R1918 is EnumerateType unconditionally XX many EnumerateItem, EnumerateItem unconditionally YY one EnumerateType;
  relationship R1919 is FullTypeDefinition is_a ( ConstrainedType, EnumerateType, StructureType, UnconstrainedArrayType );
  relationship R1920 is InstanceType unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one InstanceType;
  relationship R1921 is NumericType is_a ( ByteType, IntegerType, RealType, SmallIntegerType );
  relationship R1922 is NumericType unconditionally XX one Expression, Expression unconditionally YY one NumericType;
  relationship R1923 is NumericType unconditionally XX one Expression, Expression unconditionally YY one NumericType;
  relationship R1924 is RangeConstraint unconditionally XX one Expression, Expression unconditionally YY one RangeConstraint;
  relationship R1925 is RangeType unconditionally XX one BasicType, BasicType unconditionally YY one RangeType;
  relationship R1926 is SequenceType unconditionally XX one Expression, Expression unconditionally YY one SequenceType;
  relationship R1927 is SequenceType unconditionally XX one BasicType, BasicType unconditionally YY one SequenceType;
  relationship R1928 is SetType unconditionally XX one BasicType, BasicType unconditionally YY one SetType;
  relationship R1929 is StructureElement unconditionally XX one Expression, Expression unconditionally YY one StructureElement;
  relationship R1930 is StructureElement unconditionally XX one BasicType, BasicType unconditionally YY one StructureElement;
  relationship R1931 is StructureType unconditionally XX many StructureElement, StructureElement unconditionally YY one StructureType;
  relationship R1932 is TypeConstraint is_a ( DeltaConstraint, DigitsConstraint, RangeConstraint );
  relationship R1933 is TypeConstraint unconditionally XX one Expression, Expression unconditionally YY one TypeConstraint;
  relationship R1934 is TypeDeclaration unconditionally XX one TypeDefinition, TypeDefinition unconditionally YY one TypeDeclaration;
  relationship R1935 is TypeDeclaration unconditionally XX one Domain, Domain unconditionally YY one TypeDeclaration;
  relationship R1936 is TypeDefinition is_a ( BasicType, FullTypeDefinition );
  relationship R1937 is UnconstrainedArraySubtype unconditionally XX one Expression, Expression unconditionally YY one UnconstrainedArraySubtype;
  relationship R1938 is UnconstrainedArraySubtype unconditionally XX one UserDefinedType, UserDefinedType unconditionally YY one UnconstrainedArraySubtype;
  relationship R1939 is UnconstrainedArrayType unconditionally XX one BasicType, BasicType unconditionally YY one UnconstrainedArrayType;
  relationship R1940 is UnconstrainedArrayType unconditionally XX one BasicType, BasicType unconditionally YY one UnconstrainedArrayType;
  relationship R1941 is UserDefinedType unconditionally XX one TypeDeclaration, TypeDeclaration unconditionally YY one UserDefinedType;
  relationship R1942 is UserDefinedType unconditionally XX one TypeDeclaration, TypeDeclaration unconditionally YY one UserDefinedType;
  object AnonymousStructure is
    //!relationship R1900 is AnonymousStructure unconditionally XX many BasicType, BasicType unconditionally YY one AnonymousStructure;
    List_elements : iBasicType;
  end object; pragma id(1900);
  object AnyInstanceType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1901);
  object ArrayType is
    position : Position;
    //!relationship R1901 is ArrayType unconditionally XX one Expression, Expression unconditionally YY one ArrayType;
    //!range
    my_range : iExpression;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R1902 is ArrayType unconditionally XX one BasicType, BasicType unconditionally YY one ArrayType;
    containedType : iBasicType;
    //!relationship R1903 is ArrayType unconditionally XX one RangeExpression, RangeExpression unconditionally YY one ArrayType;
    //!range
    my_range1 : iRangeExpression;
  end object; pragma id(1902);
  object BagType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R1904 is BagType unconditionally XX one BasicType, BasicType unconditionally YY one BagType;
    containedType : iBasicType;
  end object; pragma id(1903);
  object BasicType is
  end object; pragma id(1904);
  object BooleanType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1905);
  object BuiltinType is
    position : Position;
    text : String;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1906);
  object ByteType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1907);
  object CharacterType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1908);
  object CollectionType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R1908 is CollectionType unconditionally XX one BasicType, BasicType unconditionally YY one CollectionType;
    containedType : iBasicType;
  end object; pragma id(1909);
  object ConstrainedType is
    //!relationship R1909 is ConstrainedType unconditionally XX one TypeConstraint, TypeConstraint unconditionally YY one ConstrainedType;
    constraint : iTypeConstraint;
    //!relationship R1910 is ConstrainedType unconditionally XX one BasicType, BasicType unconditionally YY one ConstrainedType;
    fullType : iBasicType;
  end object; pragma id(1910);
  object DeltaConstraint is
    //!relationship R1911 is DeltaConstraint unconditionally XX one Expression, Expression unconditionally YY one DeltaConstraint;
    //!delta
    my_delta : iExpression;
    //!relationship R1912 is DeltaConstraint unconditionally XX one RangeConstraint, RangeConstraint unconditionally YY one DeltaConstraint;
    //!range
    my_range : iRangeConstraint;
  end object; pragma id(1911);
  object DeviceType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1912);
  object DictionaryType is
    position : Position;
    //!relationship R1913 is DictionaryType unconditionally XX one BasicType, BasicType unconditionally YY one DictionaryType;
    keyType : iBasicType;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R1914 is DictionaryType unconditionally XX one BasicType, BasicType unconditionally YY one DictionaryType;
    valueType : iBasicType;
  end object; pragma id(1913);
  object DigitsConstraint is
    //!relationship R1915 is DigitsConstraint unconditionally XX one Expression, Expression unconditionally YY one DigitsConstraint;
    //!digits
    my_digits : iExpression;
    //!relationship R1916 is DigitsConstraint unconditionally XX one RangeConstraint, RangeConstraint unconditionally YY one DigitsConstraint;
    //!range
    my_range : iRangeConstraint;
  end object; pragma id(1914);
  object DurationType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1915);
  object EnumerateItem is
    name : String;
    //!relationship R1917 is EnumerateItem unconditionally XX one Expression, Expression unconditionally YY one EnumerateItem;
    value : iExpression;
    name1 : String;
  end object; pragma id(1916);
  object EnumerateType is
    position : Position;
    position1 : Position;
    //!relationship R1918 is EnumerateType unconditionally XX many EnumerateItem, EnumerateItem unconditionally YY one EnumerateType;
    List_items : iEnumerateItem;
  end object; pragma id(1917);
  object EventType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1918);
  object FullTypeDefinition is
  end object; pragma id(1919);
  object InstanceType is
    position : Position;
    //!relationship R1920 is InstanceType unconditionally XX one ObjectDeclaration, ObjectDeclaration unconditionally YY one InstanceType;
    //!object
    my_object : iObjectDeclaration;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1920);
  object IntegerType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1921);
  object InternalType is
    name : String;
  end object; pragma id(1922);
  object NumericType is
    bits : int;
    signed : boolean;
    name : String;
    //!relationship R1922 is NumericType unconditionally XX one Expression, Expression unconditionally YY one NumericType;
    max : iExpression;
    position : Position;
    //!relationship R1923 is NumericType unconditionally XX one Expression, Expression unconditionally YY one NumericType;
    min : iExpression;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1923);
  object RangeConstraint is
    //!relationship R1924 is RangeConstraint unconditionally XX one Expression, Expression unconditionally YY one RangeConstraint;
    //!range
    my_range : iExpression;
  end object; pragma id(1924);
  object RangeType is
    position : Position;
    //!relationship R1925 is RangeType unconditionally XX one BasicType, BasicType unconditionally YY one RangeType;
    containedType : iBasicType;
  end object; pragma id(1925);
  object RealType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1926);
  object SequenceType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R1926 is SequenceType unconditionally XX one Expression, Expression unconditionally YY one SequenceType;
    bound : iExpression;
    //!relationship R1927 is SequenceType unconditionally XX one BasicType, BasicType unconditionally YY one SequenceType;
    containedType : iBasicType;
  end object; pragma id(1927);
  object SetType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R1928 is SetType unconditionally XX one BasicType, BasicType unconditionally YY one SetType;
    containedType : iBasicType;
  end object; pragma id(1928);
  object SmallIntegerType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1929);
  object StringType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1930);
  object StructureElement is
    //!relationship R1929 is StructureElement unconditionally XX one Expression, Expression unconditionally YY one StructureElement;
    defaultValue : iExpression;
    //!relationship R1930 is StructureElement unconditionally XX one BasicType, BasicType unconditionally YY one StructureElement;
    //!type
    my_type : iBasicType;
    name : String;
    pragmas : PragmaList;
  end object; pragma id(1931);
  object StructureType is
    position : Position;
    //!relationship R1931 is StructureType unconditionally XX many StructureElement, StructureElement unconditionally YY one StructureType;
    List_elements : iStructureElement;
  end object; pragma id(1932);
  object TimerType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1933);
  object TimestampType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1934);
  object TypeConstraint is
    //!relationship R1933 is TypeConstraint unconditionally XX one Expression, Expression unconditionally YY one TypeConstraint;
    //!range
    my_range : iExpression;
  end object; pragma id(1935);
  object TypeDeclaration is
    name : String;
    visibility : Visibility;
    //!relationship R1934 is TypeDeclaration unconditionally XX one TypeDefinition, TypeDefinition unconditionally YY one TypeDeclaration;
    typeDefinition : iTypeDefinition;
    pragmas : PragmaList;
    position : Position;
    //!relationship R1935 is TypeDeclaration unconditionally XX one Domain, Domain unconditionally YY one TypeDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1936);
  object TypeDefinition is
  end object; pragma id(1937);
  object UnconstrainedArraySubtype is
    //!relationship R1937 is UnconstrainedArraySubtype unconditionally XX one Expression, Expression unconditionally YY one UnconstrainedArraySubtype;
    //!range
    my_range : iExpression;
    //!relationship R1938 is UnconstrainedArraySubtype unconditionally XX one UserDefinedType, UserDefinedType unconditionally YY one UnconstrainedArraySubtype;
    fullType : iUserDefinedType;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1938);
  object UnconstrainedArrayType is
    position : Position;
    //!relationship R1939 is UnconstrainedArrayType unconditionally XX one BasicType, BasicType unconditionally YY one UnconstrainedArrayType;
    indexType : iBasicType;
    //!relationship R1940 is UnconstrainedArrayType unconditionally XX one BasicType, BasicType unconditionally YY one UnconstrainedArrayType;
    containedType : iBasicType;
  end object; pragma id(1939);
  object UserDefinedType is
    position : Position;
    //!relationship R1941 is UserDefinedType unconditionally XX one TypeDeclaration, TypeDeclaration unconditionally YY one UserDefinedType;
    //!type
    my_type : iTypeDeclaration;
    //!anonymous
    my_anonymous : boolean;
    //!relationship R1942 is UserDefinedType unconditionally XX one TypeDeclaration, TypeDeclaration unconditionally YY one UserDefinedType;
    //!type
    my_type1 : iTypeDeclaration;
  end object; pragma id(1940);
  object WCharacterType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1941);
  object WStringType is
    position : Position;
    //!anonymous
    my_anonymous : boolean;
  end object; pragma id(1942);

  //!imported
  object ObjectDeclaration is
    IMPORTED: integer;
  end object; pragma id(1943);

  //!imported
  object Expression is
    IMPORTED: integer;
  end object; pragma id(1944);

  //!imported
  object Domain is
    IMPORTED: integer;
  end object; pragma id(1945);

  //!imported
  object RangeExpression is
    IMPORTED: integer;
  end object; pragma id(1946);
end domain;
