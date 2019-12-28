domain masl_literal is
  object BooleanLiteral;
  object CharacterLiteral;
  object ConsoleLiteral;
  object DurationLiteral;
  object EndlLiteral;
  object EnumerateLiteral;
  object FlushLiteral;
  object IntegerLiteral;
  object LiteralExpression;
  object NullLiteral;
  object NumericLiteral;
  object RealLiteral;
  object StringLiteral;
  object ThisLiteral;
  object TimestampLiteral;
  object Z_State_literal;
  object Z_ObjectDeclaration_literal;
  object Z_BasicType_literal;
  object Z_Service_literal;
  object Z_EnumerateItem_literal;
  relationship R5700 is LiteralExpression is_a ( BooleanLiteral, CharacterLiteral, ConsoleLiteral, DurationLiteral, EndlLiteral, EnumerateLiteral, FlushLiteral, NullLiteral, NumericLiteral, StringLiteral, ThisLiteral, TimestampLiteral );
  relationship R5701 is EnumerateLiteral unconditionally is_use_of one Z_EnumerateItem_literal, Z_EnumerateItem_literal conditionally is_used_by many EnumerateLiteral;
  relationship R5702 is NullLiteral unconditionally is_of_type one Z_BasicType_literal, Z_BasicType_literal conditionally types many NullLiteral;
  relationship R5703 is NumericLiteral is_a ( IntegerLiteral, RealLiteral );
  relationship R5704 is ThisLiteral conditionally is_scoped_by one Z_Service_literal, Z_Service_literal conditionally scopes many ThisLiteral;
  relationship R5705 is ThisLiteral conditionally is_scoped_by one Z_ObjectDeclaration_literal, Z_ObjectDeclaration_literal conditionally scopes many ThisLiteral;
  relationship R5706 is ThisLiteral conditionally is_scoped_by one Z_State_literal, Z_State_literal conditionally scopes many ThisLiteral;
  object BooleanLiteral is
    value : boolean;
  end object; pragma id(5700);
  object CharacterLiteral is
    literal : String;
  end object; pragma id(5701);
  object ConsoleLiteral is
  end object; pragma id(5702);
  object DurationLiteral is
    literal : String;
  end object; pragma id(5703);
  object EndlLiteral is
  end object; pragma id(5704);
  object EnumerateLiteral is
    //!R5701
    value : iEnumerateItem;
  end object; pragma id(5705);
  object FlushLiteral is
  end object; pragma id(5706);
  object IntegerLiteral is
    value : Long;
  end object; pragma id(5707);
  object LiteralExpression is
  end object; pragma id(5708);
  object NullLiteral is
    //!R5702
    //!type
    my_type : iBasicType;
  end object; pragma id(5709);
  object NumericLiteral is
    text : String;
  end object; pragma id(5710);
  object RealLiteral is
    value : double;
  end object; pragma id(5711);
  object StringLiteral is
    rhs : String;
    literal : String;
    lhs : String;
  end object; pragma id(5712);
  object ThisLiteral is
    //!R5704
    //!service
    my_service : iService;
    //!R5705
    //!object
    my_object : iObjectDeclaration;
    //!R5706
    //!state
    my_state : iState;
  end object; pragma id(5713);
  object TimestampLiteral is
    literal : String;
  end object; pragma id(5714);

  //!IMPORTED
  object Z_State_literal is
  end object; pragma id(5715);

  //!IMPORTED
  object Z_ObjectDeclaration_literal is
  end object; pragma id(5716);

  //!IMPORTED
  object Z_BasicType_literal is
  end object; pragma id(5717);

  //!IMPORTED
  object Z_Service_literal is
  end object; pragma id(5718);

  //!IMPORTED
  object Z_EnumerateItem_literal is
  end object; pragma id(5719);
end domain;
