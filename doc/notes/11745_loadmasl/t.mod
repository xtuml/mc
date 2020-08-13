domain t is

  object AnonymousStructure;
  object ArrayType;
  object BagType;
  object BasicType;
  object BuiltinType;
  object CollectionType;
  object ConstrainedType;
  object DeltaConstraint;
  object DictionaryType;
  object DigitsConstraint;
  object EnumerateItem;
  object EnumerateType;
  object InstanceType;
  object RangeConstraint;
  object SequenceType;
  object SetType;
  object StructureElement;
  object StructureType;
  object TypeConstraint;
  object TypeDeclaration;
  object TypeDefinition;
  object UnconstrainedArraySubtype;
  object UnconstrainedArrayType;
  object UserDefinedType;

  object Imported_Domain;
  object Imported_Expression;
  object Imported_ObjectDeclaration;
  object Imported_PragmaList;
  object Imported_RangeExpression;
  object Imported_Visibility;

  private type Position is integer;

  private type iDomain is instance of Imported_Domain;
  private type iExpression is instance of Imported_Expression;
  private type iObjectDeclaration is instance of Imported_ObjectDeclaration;
  private type iPragmaList is instance of Imported_PragmaList;
  private type iRangeExpression is instance of Imported_RangeExpression;
  private type iVisibility is instance of Imported_Visibility;

  private type iAnonymousStructure is instance of AnonymousStructure;
  private type iArrayType is instance of ArrayType;
  private type iBagType is instance of BagType;
  private type iBasicType is instance of BasicType;
  private type iBuiltinType is instance of BuiltinType;
  private type iCollectionType is instance of CollectionType;
  private type iConstrainedType is instance of ConstrainedType;
  private type iDeltaConstraint is instance of DeltaConstraint;
  private type iDictionaryType is instance of DictionaryType;
  private type iDigitsConstraint is instance of DigitsConstraint;
  private type iEnumerateItem is instance of EnumerateItem;
  private type iEnumerateType is instance of EnumerateType;
  private type iInstanceType is instance of InstanceType;
  private type iRangeConstraint is instance of RangeConstraint;
  private type iSequenceType is instance of SequenceType;
  private type iSetType is instance of SetType;
  private type iStructureElement is instance of StructureElement;
  private type iStructureType is instance of StructureType;
  private type iTypeConstraint is instance of TypeConstraint;
  private type iTypeDeclaration is instance of TypeDeclaration;
  private type iTypeDefinition is instance of TypeDefinition;
  private type iUnconstrainedArraySubtype is instance of UnconstrainedArraySubtype;
  private type iUnconstrainedArrayType is instance of UnconstrainedArrayType;
  private type iUserDefinedType is instance of UserDefinedType;

  //! These are Imported Classes.
  object Imported_Domain is
  end object;
  object Imported_Expression is
  end object;
  object Imported_ObjectDeclaration is
  end object;
  object Imported_PragmaList is
  end object;
  object Imported_RangeExpression is
  end object;
  object Imported_Visibility is
  end object;

  object AnonymousStructure is
    elements: List<BasicType>;
  end object;
  object ArrayType is
    position: Position;
    containedType: iBasicType;
    range: iExpression;
    anonymous: boolean;
  end object;
  object BagType is
    position: Position;
    containedType: iBasicType;
    anonymous: boolean;
  end object;
  object BasicType is
  end object;
  object BuiltinType is
    position: Position;
    text: string;
    anonymous: boolean;
  end object;
  object CollectionType is
    position: Position;
    containedType: iBasicType;
    anonymous: boolean;
  end object;
  object ConstrainedType is
    fullType: iBasicType;
    constraint: iTypeConstraint;
  end object;
  object DeltaConstraint is
    delta: iExpression;
    range: iRangeConstraint;
  end object;
  object DictionaryType is
    position: Position;
    keyType: iBasicType;
    valueType: iBasicType;
    anonymous: boolean;
  end object;
  object DigitsConstraint is
    digits: iExpression;
    range: iRangeConstraint;
  end object;
  object EnumerateItem is
    name: string;
    value: iExpression;
  end object;
  object EnumerateType is
    position: Position;
    //!items: List<EnumerateItem>;
  end object;
  object InstanceType is
    position: Position;
  end object;
  ObjectDeclaration object
    anonymous: boolean;
  end object;
  object RangeConstraint is
    range: iExpression;
  end object;
  object SequenceType is
    position: Position;
    containedType: iBasicType;
    bound: iExpression;
    anonymous: boolean;
  end object;
  object SetType is
    position: Position;
    containedType: iBasicType;
    anonymous: boolean;
  end object;
  object StructureElement is
    name: string;
    type: iBasicType;
    defaultValue: iExpression;
    pragmas: iPragmaList;
  end object;
  object StructureType is
    position: Position;
    //!elements: List<StructureElement>;
  end object;
  object TypeConstraint is
    range: iExpression;
  end object;
  object TypeDeclaration is
    position: Position;
    domain: iDomain;
    name: string;
    visibility: iVisibility;
    typeDefinition: iTypeDefinition;
    pragmas: iPragmaList;
  end object;
  object TypeDefinition is
  end object;
  object UnconstrainedArraySubtype is
    fullType: iUserDefinedType;
    range: iExpression;
    anonymous: boolean;
  end object;
  object UnconstrainedArrayType is
    position: Position;
    containedType: iBasicType;
    indexType: iBasicType;
  end object;
  object UserDefinedType is
    position: Position;
    type: iTypeDeclaration;
    anonymous: boolean;
  end object;

end domain;
