domain masl_binary is
  object BinaryAdditiveExpression;
  object BinaryCollectionExpression;
  object BinaryComparisonExpression;
  object BinaryExpression;
  object BinaryLogicalExpression;
  object BinaryMultiplicativeExpression;
  object Z_Expression_binary;
  relationship R5000 is BinaryAdditiveExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryAdditiveExpression;
  relationship R5001 is BinaryAdditiveExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryAdditiveExpression;
  relationship R5002 is BinaryCollectionExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryCollectionExpression;
  relationship R5003 is BinaryCollectionExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryCollectionExpression;
  relationship R5004 is BinaryComparisonExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryComparisonExpression;
  relationship R5005 is BinaryComparisonExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryComparisonExpression;
  relationship R5006 is BinaryExpression is_a ( BinaryAdditiveExpression, BinaryCollectionExpression, BinaryComparisonExpression, BinaryLogicalExpression, BinaryMultiplicativeExpression );
  relationship R5007 is BinaryLogicalExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryLogicalExpression;
  relationship R5008 is BinaryLogicalExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryLogicalExpression;
  relationship R5009 is BinaryMultiplicativeExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryMultiplicativeExpression;
  relationship R5010 is BinaryMultiplicativeExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryMultiplicativeExpression;
  object BinaryAdditiveExpression is
    operator : OperatorRef;
    //!relationship R5000 is BinaryAdditiveExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryAdditiveExpression;
    rhs : iExpression;
    //!relationship R5001 is BinaryAdditiveExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryAdditiveExpression;
    lhs : iExpression;
  end object; pragma id(5000);
  object BinaryCollectionExpression is
    operator : OperatorRef;
    //!relationship R5002 is BinaryCollectionExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryCollectionExpression;
    rhs : iExpression;
    //!relationship R5003 is BinaryCollectionExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryCollectionExpression;
    lhs : iExpression;
  end object; pragma id(5001);
  object BinaryComparisonExpression is
    operator : OperatorRef;
    //!relationship R5004 is BinaryComparisonExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryComparisonExpression;
    rhs : iExpression;
    //!relationship R5005 is BinaryComparisonExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryComparisonExpression;
    lhs : iExpression;
  end object; pragma id(5002);
  object BinaryExpression is
    operator : OperatorRef;
  end object; pragma id(5003);
  object BinaryLogicalExpression is
    operator : OperatorRef;
    //!relationship R5007 is BinaryLogicalExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryLogicalExpression;
    rhs : iExpression;
    //!relationship R5008 is BinaryLogicalExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryLogicalExpression;
    lhs : iExpression;
  end object; pragma id(5004);
  object BinaryMultiplicativeExpression is
    operator : OperatorRef;
    //!relationship R5009 is BinaryMultiplicativeExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryMultiplicativeExpression;
    rhs : iExpression;
    //!relationship R5010 is BinaryMultiplicativeExpression unconditionally XX one Z_Expression_binary, Z_Expression_binary unconditionally YY one BinaryMultiplicativeExpression;
    lhs : iExpression;
  end object; pragma id(5005);

  //!IMPORTED
  object Z_Expression_binary is
  end object; pragma id(5006);
end domain;
