domain masl_exception is
  object BuiltinException;
  object ExceptionDeclaration;
  object ExceptionReference;
  object Z_Domain_exception;
  relationship R5400 is ExceptionDeclaration unconditionally XX one Z_Domain_exception, Z_Domain_exception unconditionally YY one ExceptionDeclaration;
  relationship R5401 is ExceptionReference is_a ( BuiltinException );
  object BuiltinException is
    //!type
    my_type : ImplType;
  end object; pragma id(5400);
  object ExceptionDeclaration is
    name : String;
    //!relationship R5400 is ExceptionDeclaration unconditionally XX one Z_Domain_exception, Z_Domain_exception unconditionally YY one ExceptionDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(5401);
  object ExceptionReference is
  end object; pragma id(5402);

  //!IMPORTED
  object Z_Domain_exception is
  end object; pragma id(5403);
end domain;
