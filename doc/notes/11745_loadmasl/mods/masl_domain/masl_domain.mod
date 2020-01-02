domain masl_domain is
  object Domain;
  object DomainService;
  object DomainTerminator;
  object DomainTerminatorService;
  relationship R5303 is DomainService unconditionally is_service_provision_for one Domain, Domain conditionally provides many DomainService;
  relationship R5304 is DomainTerminator unconditionally is_requirement_of one Domain, Domain conditionally requires many DomainTerminator;
  relationship R5306 is DomainTerminatorService unconditionally is_message_for one DomainTerminator, DomainTerminator conditionally passes_messages_through many DomainTerminatorService;
  object Domain is
    name : Name;
  end object; pragma id(5300);
  object DomainService is
    name : Name;
    fileExtension : String;
    //!R5303
    //!domain
    my_domain : iDomain;
  end object; pragma id(5301);
  object DomainTerminator is
    name : Name;
    //!R5304
    //!domain
    my_domain : iDomain;
  end object; pragma id(5302);
  object DomainTerminatorService is
    name : Name;
    //!R5306
    //!terminator
    my_terminator : iDomainTerminator;
  end object; pragma id(5303);

end domain;
