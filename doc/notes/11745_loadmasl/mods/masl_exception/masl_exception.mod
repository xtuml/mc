domain masl_exception is
  object BuiltinException;
  object ExceptionDeclaration;
  object ExceptionReference;
  object Z_Domain_exception;
  relationship R5400 is ExceptionDeclaration unconditionally catches_errors_in one Z_Domain_exception, Z_Domain_exception conditionally has_errors_caught_by many ExceptionDeclaration;
  relationship R5401 is ExceptionReference is_a ( BuiltinException );
  relationship R5402 is ExceptionReference unconditionally refers_to one ExceptionDeclaration, ExceptionDeclaration conditionally is_referenced_by many ExceptionReference;
  object BuiltinException is
    //!type
    my_type : ImplType;
  end object; pragma id(5400);
  object ExceptionDeclaration is
    name : Name;
    //!R5400
    //!domain
    my_domain : iDomain;
  end object; pragma id(5401);
  object ExceptionReference is
    //!R5402
    eref : iExceptionDeclaration;
  end object; pragma id(5402);

  //!IMPORTED
  object Z_Domain_exception is
  end object; pragma id(5403);
end domain;
