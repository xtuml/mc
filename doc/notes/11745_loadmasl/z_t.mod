domain z_t is

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
  object Imported_Visibility;

  private type Position is integer;

  private type iDomain is instance of Imported_Domain;
  private type iExpression is instance of Imported_Expression;
  private type iObjectDeclaration is instance of Imported_ObjectDeclaration;
  private type iPragmaList is instance of Imported_PragmaList;
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

  //!associations
  relationship R1 is AnonymousStructure unconditionally structures many BasicType, BasicType conditionally is_structured_by many AnonymousStructure;
  relationship R2 is ArrayType unconditionally is_bounded_by one RangeExpression, RangeExpression conditionally bounds one ArrayType;
  relationship R3 is BasicType is_a ( BuiltinType, CollectionType, ConstrainedArray, DictionaryType, InstanceType, UserDefinedType );
  relationship R4 is CollectionType is_a ( ArrayType, SetType, BagType, SequenceType );
  relationship R5 is ConstrainedType unconditionally constrains one BasicType, BasicType conditionally is_constrained_by many ConstrainedType;
  relationship R6 is ConstrainedType unconditionally is_defined_by one TypeConstraint, TypeConstraint unconditionally defines one ConstrainedType;
  relationship R7 is DeltaConstraint unconditionally has_resolution one Imported_Expression, Imported_Expression conditionally is_resolution_of one DeltaConstraint;
  relationship R8 is DeltaConstraint unconditionally is_spanned_by one RangeConstraint, RangeConstraint conditionally spans one DeltaConstraint;
  relationship R9 is DictionaryType unconditionally pairs_key_on one BasicType, BasicType conditionally is_keyed_by many DictionaryType;
  relationship R10 is DictionaryType unconditionally pairs_value_on one BasicType, BasicType conditionally is_valued_by many DictionaryType;
  relationship R11 is DigitsConstraint unconditionally is_limited_by one Imported_Expression, Imported_Expression conditionally limits one DigitsConstraint;
  relationship R12 is DigitsConstraint unconditionally is_spanned_by one RangeConstraint, RangeConstraint conditionally spans one DigitsConstraint;
  relationship R13 is EnumerateItem conditionally is_set_by one Imported_Expression, Imported_Expression conditionally sets one EnumerateItem;
  relationship R14 is EnumerateItem unconditionally is_a_possible_value_of one EnumerateType, EnumerateType unconditionally has_possible_value many EnumerateItem;
  relationship R15 is RangeConstraint unconditionally is_bounded_by one RangeExpression, RangeExpression conditionally bounds one RangeConstraint;
  relationship R16 is SequenceType conditionally has_max_size one Imported_Expression, Imported_Expression conditionally is_max_size_of many SequenceType;
  relationship R17 is StructureElement unconditionally is_type_of one BasicType, BasicType conditionally types many StructureElement;
  relationship R18 is StructureElement conditionally is_initialized_by one Imported_Expression, Imported_Expression conditionally initializes one StructureElement;
  relationship R19 is StructureElement conditionally is_marked_by one Imported_PragmaList, Imported_PragmaList conditionally marks one StructureElement;
  relationship R20 is TypeConstraint is_a ( DeltaConstraint, DigitsConstraint, RangeConstraint );
  relationship R21 is TypeConstraint unconditionally is_bounded_by one RangeExpression, RangeExpression conditionally bounds one TypeConstraint;
  relationship R22 is TypeDeclaration unconditionally is_defined_in one Imported_Domain, Imported_Domain conditionally defines many TypeDeclaration;
  relationship R23 is TypeDeclaration unconditionally is_scoped_by one Imported_Visibility, Imported_Visibility conditionally scopes many TypeDeclaration;
  relationship R24 is TypeDeclaration unconditionally is_defined_by one TypeDefinition, TypeDefinition unconditionally defines one TypeDeclaration;
  relationship R25 is TypeDeclaration conditionally is_marked_by one Imported_PragmaList, Imported_PragmaList conditionally marks one TypeDeclaration;
  relationship R26 is TypeDefinition is_a ( BasicType, ConstrainedType, EnumerateType, StructureType, UnconstrainedArray );
  relationship R27 is UnconstrainedArraySubtype conditionally arrays one UserDefinedType, UserDefinedType conditionally is_arrayed_by one UnconstrainedArraySubtype;
  relationship R28 is UnconstrainedArraySubtype conditionally is_bounded_by one RangeExpression, RangeExpression conditionally bounds one UnconstrainedArraySubtype;
  relationship R29 is UnconstrainedArrayType unconditionally arrays one BasicType, BasicType conditionally is_arrayed_by many UnconstrainedArrayType;
  relationship R30 is UnconstrainedArrayType unconditionally indexes_with one BasicType, BasicType conditionally is_indexed_by many UnconstrainedArrayType;
  relationship R31 is UserDefinedType unconditionally is_shaped_by one TypeDeclaration, TypeDeclaration conditionally is_shaped_by one UserDefinedType;

  //! These are Imported Classes.
  object Imported_Domain is
  end object;
  object Imported_Expression is
  end object;
  object Imported_ObjectDeclaration is
  end object;
  object Imported_PragmaList is
  end object;
  object Imported_Visibility is
  end object;

  object AnonymousStructure is

    //!relationship RR is AnonymousStructure unconditionally structures many BasicType, BasicType conditionally is_structured_by many AnonymousStructure;
    //!This association might remain unformalized as it is many-many and is used only as a list in the MC.
    //!elements: List<BasicType>;
    R_List_elements: integer;
  end object;
  object ArrayType is
    position: Position;

    //!relationship RR is CollectionType is_a ...
    //!preferred identifier
    R_containedType: iBasicType;

    //!relationship RR is ArrayType unconditionally is_bounded_by one RangeExpression, RangeExpression conditionally bounds one ArrayType;
    R_range: iExpression;

    //!anonymous
    is_anonymous: boolean;
  end object;
  object BagType is
    position: Position;

    //!relationship RR is CollectionType is_a ...
    //!preferred identifier
    R_containedType: iBasicType;

    //!anonymous
    is_anonymous: boolean;
  end object;
  object BasicType is

    //!relationship RR is BasicType is_a ( BuiltinType, CollectionType, ConstrainedArray, DictionaryType, InstanceType, UserDefinedType );
    //!need an identifier
    bogus: integer;
  end object;
  object BuiltinType is
    position: Position;

    //! secondary identifier
    text: string;

    //!relationship RR is BasicType is_a ...
    //!TODO - maybe this rides on position...
    R: iBasicType;

    //!anonymous
    is_anonymous: boolean;

    identifier is ( text );
  end object;
  object CollectionType is
    position: Position;

    //!relationship RR is BasicType is_a ...
    //!relationship RR is CollectionType is_a ( ArrayType, SetType, BagType, SequenceType );
    RR_containedType: iBasicType;

    //!anonymous
    is_anonymous: boolean;
  end object;
  object ConstrainedType is

    //!relationship RR is BasicType is_a ...
    R: iBasicType;

    //!relationship RR is ConstrainedType unconditionally constrains one BasicType, BasicType conditionally is_constrained_by many ConstrainedType;
    R_fullType: iBasicType;

    //!relationship RR is ConstrainedType unconditionally is_defined_by one TypeConstraint, TypeConstraint unconditionally defines one ConstrainedType;
    R_constraint: iTypeConstraint;
  end object;
  object DeltaConstraint is

    //!relationship RR is TypeConstraint is_a ...
    R_TypeConstraint: iTypeConstraint;

    //!relationship RR is DeltaConstraint unconditionally has_resolution one Imported_Expression, Imported_Expression conditionally is_resolution_of one DeltaConstraint;
    R_delta: iExpression;

    //!relationship RR is DeltaConstraint unconditionally is_spanned_by one RangeConstraint, RangeConstraint conditionally spans one DeltaConstraint;
    R_range: iRangeConstraint;
  end object;
  object DictionaryType is
    position: Position;

    //!relationship RR is DictionaryType unconditionally pairs_key_on one BasicType, BasicType conditionally is_keyed_by many DictionaryType;
    R_keyType: iBasicType;

    //!relationship RR is DictionaryType unconditionally pairs_value_on one BasicType, BasicType conditionally is_valued_by many DictionaryType;
    R_valueType: iBasicType;

    //!anonymous
    is_anonymous: boolean;
  end object;
  object DigitsConstraint is

    //!relationship RR is TypeConstraint is_a ...
    R_TypeConstraint: iTypeConstraint;

    //!relationship RR is DigitsConstraint unconditionally is_limited_by one Imported_Expression, Imported_Expression conditionally limits one DigitsConstraint;
    R_digits: iExpression;

    //!relationship RR is DigitsConstraint unconditionally is_spanned_by one RangeConstraint, RangeConstraint conditionally spans one DigitsConstraint;
    R_range: iRangeConstraint;
  end object;
  object EnumerateItem is
    name: preferred string;

    //!relationship RR is EnumerateItem conditionally is_set_by one Imported_Expression, Imported_Expression conditionally sets one EnumerateItem;
    R_value: iExpression;

    //!relationship RR is EnumerateItem unconditionally is_a_possible_value_of one EnumerateType, EnumerateType unconditionally has_possible_value many EnumerateItem;
    R: preferred iEnumerateType;
  end object;
  object EnumerateType is
    position: Position;

    //!items: List<EnumerateItem>;
    R_List_items:  integer;
  end object;
  object InstanceType is
    position: Position;

    //!relationship RR is BasicType is_a ...
    //!TODO - maybe this rides on position...
    R: iBasicType;
  end object;
  object RangeConstraint is

    //!relationship RR is TypeConstraint is_a ...
    R_TypeConstraint: iTypeConstraint;

    //!relationship RR is RangeConstraint unconditionally is_bounded_by one RangeExpression, RangeExpression conditionally bounds one RangeConstraint;
    //!expressed at supertype level
    R_range: iExpression;

  end object;
  object SequenceType is
    position: Position;

    //!relationship RR is CollectionType is_a ...
    //!preferred identifier
    R_containedType: iBasicType;

    //!relationship RR is SequenceType conditionally has_max_size one Imported_Expression, Imported_Expression conditionally is_max_size_of many SequenceType;
    R_bound: iExpression;

    //!anonymous
    is_anonymous: boolean;
  end object;
  object SetType is
    position: Position;

    //!relationship RR is CollectionType is_a ...
    //!preferred identifier
    R_containedType: iBasicType;

    //!anonymous
    is_anonymous: boolean;
  end object;
  object StructureElement is
    name: string;

    //!relationship RR is StructureElement unconditionally is_type_of one BasicType, BasicType conditionally types many StructureElement;
    R_type: iBasicType;

    //!relationship RR is StructureElement conditionally is_initialized_by one Imported_Expression, Imported_Expression conditionally initializes one StructureElement;
    defaultValue: iExpression;

    //!relationship RR is StructureElement conditionally is_marked_by one Imported_PragmaList, Imported_PragmaList conditionally marks one StructureElement;
    pragmas: iPragmaList;
  end object;
  object StructureType is
    position: Position;

    //!elements: List<StructureElement>;
    R_List_elements: integer;
  end object;
  object TypeConstraint is

    //!relationship RR is TypeConstraint is_a ( DeltaConstration, DigitsConstraint, RangeConstraint );
    //!need an identifier
    bogus: integer;

    //!relationship RR is TypeConstraint unconditionally is_bounded_by one RangeExpression, RangeExpression conditionally bounds one TypeConstraint;
    R_range: iExpression;
  end object;
  object TypeDeclaration is
    position: Position;

    //!relationship RR is TypeDeclaration unconditionally is_defined_in one Imported_Domain, Imported_Domain conditionally defines many TypeDeclaration;
    R_domain: iDomain;
    name: string;

    //!relationship RR is TypeDeclaration unconditionally is_scoped_by one Imported_Visibility, Imported_Visibility conditionally scopes many TypeDeclaration;
    R_visibility: iVisibility;

    //!relationship RR is TypeDeclaration unconditionally is_defined_by one TypeDefinition, TypeDefinition unconditionally defines one TypeDeclaration;
    R_typeDefinition: iTypeDefinition;

    //!relationship RR is TypeDeclaration conditionally is_marked_by one Imported_PragmaList, Imported_PragmaList conditionally marks one TypeDeclaration;
    pragmas: iPragmaList;
  end object;
  object TypeDefinition is

    //!relationship RR is TypeDefinition is_a ( BasicType, ConstrainedType, EnumerateType, StructureType, UnconstrainedArray );
    bogus: integer;
  end object;
  object UnconstrainedArraySubtype is

    //!relationship RR is UnconstrainedArraySubtype conditionally arrays one UserDefinedType, UserDefinedType conditionally is_arrayed_by one UnconstrainedArraySubtype;
    R_fullType: iUserDefinedType;

    //!relationship RR is UnconstrainedArraySubtype conditionally is_bounded_by one RangeExpression, RangeExpression conditionally bounds one UnconstrainedArraySubtype;
    R_range: iExpression;

    //!anonymous
    is_anonymous: boolean;
  end object;
  object UnconstrainedArrayType is
    position: Position;

    //!relationship RR is UnconstrainedArrayType unconditionally arrays one BasicType, BasicType conditionally is_arrayed_by many UnconstrainedArrayType;
    R_containedType: iBasicType;

    //!relationship RR is UnconstrainedArrayType unconditionally indexes_with one BasicType, BasicType conditionally is_indexed_by many UnconstrainedArrayType;
    R_indexType: iBasicType;

  end object;
  object UserDefinedType is
    position: Position;

    //!relationship RR is UserDefinedType unconditionally is_shaped_by one TypeDeclaration, TypeDeclaration conditionally is_shaped_by one UserDefinedType;
    R_type: iTypeDeclaration;

    //!anonymous
    is_anonymous: boolean;
  end object;

end domain;
