domain masl_invocation is
  object DomainFunctionInvocation;
  object FunctionInvocation;
  object InstanceFunctionInvocation;
  object ObjectFunctionInvocation;
  object TerminatorFunctionInvocation;
  object Z_DomainService_invocation;
  object Z_ObjectService_invocation;
  object Z_Expression_invocation;
  object Z_DomainTerminatorService_invocation;
  relationship R5600 is DomainFunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one DomainFunctionInvocation;
  relationship R5601 is DomainFunctionInvocation unconditionally XX one Z_DomainService_invocation, Z_DomainService_invocation unconditionally YY one DomainFunctionInvocation;
  relationship R5602 is FunctionInvocation is_a ( DomainFunctionInvocation, InstanceFunctionInvocation, ObjectFunctionInvocation, TerminatorFunctionInvocation );
  relationship R5603 is FunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one FunctionInvocation;
  relationship R5604 is InstanceFunctionInvocation unconditionally XX one Z_ObjectService_invocation, Z_ObjectService_invocation unconditionally YY one InstanceFunctionInvocation;
  relationship R5605 is InstanceFunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one InstanceFunctionInvocation;
  relationship R5606 is InstanceFunctionInvocation unconditionally XX one Z_Expression_invocation, Z_Expression_invocation unconditionally YY one InstanceFunctionInvocation;
  relationship R5607 is ObjectFunctionInvocation unconditionally XX one Z_ObjectService_invocation, Z_ObjectService_invocation unconditionally YY one ObjectFunctionInvocation;
  relationship R5608 is ObjectFunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one ObjectFunctionInvocation;
  relationship R5609 is TerminatorFunctionInvocation unconditionally XX one Z_DomainTerminatorService_invocation, Z_DomainTerminatorService_invocation unconditionally YY one TerminatorFunctionInvocation;
  relationship R5610 is TerminatorFunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one TerminatorFunctionInvocation;
  object DomainFunctionInvocation is
    //!relationship R5600 is DomainFunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one DomainFunctionInvocation;
    List_arguments : iExpression;
    //!relationship R5601 is DomainFunctionInvocation unconditionally XX one Z_DomainService_invocation, Z_DomainService_invocation unconditionally YY one DomainFunctionInvocation;
    //!service
    my_service : iDomainService;
  end object; pragma id(5600);
  object FunctionInvocation is
    //!relationship R5603 is FunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one FunctionInvocation;
    List_arguments : iExpression;
    //!service
    my_service : ServiceType;
  end object; pragma id(5601);
  object InstanceFunctionInvocation is
    //!relationship R5604 is InstanceFunctionInvocation unconditionally XX one Z_ObjectService_invocation, Z_ObjectService_invocation unconditionally YY one InstanceFunctionInvocation;
    //!service
    my_service : iObjectService;
    //!relationship R5605 is InstanceFunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one InstanceFunctionInvocation;
    List_arguments : iExpression;
    //!relationship R5606 is InstanceFunctionInvocation unconditionally XX one Z_Expression_invocation, Z_Expression_invocation unconditionally YY one InstanceFunctionInvocation;
    //!instance
    my_instance : iExpression;
  end object; pragma id(5602);
  object ObjectFunctionInvocation is
    //!relationship R5607 is ObjectFunctionInvocation unconditionally XX one Z_ObjectService_invocation, Z_ObjectService_invocation unconditionally YY one ObjectFunctionInvocation;
    //!service
    my_service : iObjectService;
    //!relationship R5608 is ObjectFunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one ObjectFunctionInvocation;
    List_arguments : iExpression;
  end object; pragma id(5603);
  object TerminatorFunctionInvocation is
    //!relationship R5609 is TerminatorFunctionInvocation unconditionally XX one Z_DomainTerminatorService_invocation, Z_DomainTerminatorService_invocation unconditionally YY one TerminatorFunctionInvocation;
    //!service
    my_service : iDomainTerminatorService;
    //!relationship R5610 is TerminatorFunctionInvocation unconditionally XX many Z_Expression_invocation, Z_Expression_invocation unconditionally YY one TerminatorFunctionInvocation;
    List_arguments : iExpression;
  end object; pragma id(5604);

  //!IMPORTED
  object Z_DomainService_invocation is
  end object; pragma id(5605);

  //!IMPORTED
  object Z_ObjectService_invocation is
  end object; pragma id(5606);

  //!IMPORTED
  object Z_Expression_invocation is
  end object; pragma id(5607);

  //!IMPORTED
  object Z_DomainTerminatorService_invocation is
  end object; pragma id(5608);
end domain;
