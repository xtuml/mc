domain masl_exception is
  object BuiltinException;
  object ExceptionDeclaration;
  object ExceptionReference;
  object Domain;
  private type iBuiltinException is instance of BuiltinException;
  private type iExceptionDeclaration is instance of ExceptionDeclaration;
  private type iExceptionReference is instance of ExceptionReference;
  relationship R1300 is ExceptionDeclaration unconditionally XX one Domain, Domain unconditionally YY one ExceptionDeclaration;
  relationship R1301 is ExceptionReference is_a ( BuiltinException );
  object BuiltinException is
    position : Position;
    //!type
    my_type : ImplType;
  end object; pragma id(1300);
  object ExceptionDeclaration is
    position : Position;
    name : String;
    visibility : Visibility;
    //!relationship R1300 is ExceptionDeclaration unconditionally XX one Domain, Domain unconditionally YY one ExceptionDeclaration;
    //!domain
    my_domain : iDomain;
    pragmas : PragmaList;
  end object; pragma id(1301);
  object ExceptionReference is
    position : Position;
  end object; pragma id(1302);

  //!imported
  object Domain is
    IMPORTED: integer;
  end object; pragma id(1303);
end domain;
