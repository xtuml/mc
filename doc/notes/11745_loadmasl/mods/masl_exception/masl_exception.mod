domain masl_exception is
  object BuiltinException;
  object ExceptionDeclaration;
  object ExceptionReference;
  object Z_Domain_exception;
  relationship R1300 is ExceptionDeclaration unconditionally XX one Z_Domain_exception, Z_Domain_exception unconditionally YY one ExceptionDeclaration;
  relationship R1301 is ExceptionReference is_a ( BuiltinException );
  object BuiltinException is
    //!type
    my_type : ImplType;
  end object; pragma id(1300);
  object ExceptionDeclaration is
    name : String;
    //!relationship R1300 is ExceptionDeclaration unconditionally XX one Z_Domain_exception, Z_Domain_exception unconditionally YY one ExceptionDeclaration;
    //!domain
    my_domain : iDomain;
  end object; pragma id(1301);
  object ExceptionReference is
  end object; pragma id(1302);

  //!IMPORTED
  object Z_Domain_exception is
  end object; pragma id(1303);
end domain;
