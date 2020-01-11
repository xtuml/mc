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
  relationship R5600 is FunctionInvocation is_a ( DomainFunctionInvocation, InstanceFunctionInvocation, ObjectFunctionInvocation, TerminatorFunctionInvocation );
  relationship R5601 is DomainFunctionInvocation unconditionally invokes one Z_DomainService_invocation, Z_DomainService_invocation conditionally is_invoked_as many DomainFunctionInvocation;
  relationship R5603 is FunctionInvocation conditionally passes many Z_Expression_invocation, Z_Expression_invocation conditionally are_passed_on one FunctionInvocation;
  relationship R5604 is InstanceFunctionInvocation unconditionally invokes one Z_ObjectService_invocation, Z_ObjectService_invocation conditionally is_invoked_as many InstanceFunctionInvocation;
  relationship R5606 is InstanceFunctionInvocation unconditionally is_accessed_via one Z_Expression_invocation, Z_Expression_invocation conditionally accesses one InstanceFunctionInvocation;
  relationship R5607 is ObjectFunctionInvocation unconditionally invokes one Z_ObjectService_invocation, Z_ObjectService_invocation conditionally is_invoked_as many ObjectFunctionInvocation;
  relationship R5609 is TerminatorFunctionInvocation unconditionally invokes one Z_DomainTerminatorService_invocation, Z_DomainTerminatorService_invocation conditionally is_invoked_as many TerminatorFunctionInvocation;
  object DomainFunctionInvocation is
    //!R5601
    //!service
    my_service : iDomainService;
  end object; pragma id(5600);
  object FunctionInvocation is
    //!R5603
    arguments : iExpression;
    //!service
    my_service : ServiceType;
  end object; pragma id(5601);
  object InstanceFunctionInvocation is
    //!R5604
    //!service
    my_service : iObjectService;
    //!R5606
    //!instance
    my_instance : iExpression;
  end object; pragma id(5602);
  object ObjectFunctionInvocation is
    //!R5607
    //!service
    my_service : iObjectService;
  end object; pragma id(5603);
  object TerminatorFunctionInvocation is
    //!R5609
    //!service
    my_service : iDomainTerminatorService;
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
