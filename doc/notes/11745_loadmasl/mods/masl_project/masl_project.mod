domain masl_project is
  object Project;
  object ProjectDomain;
  object ProjectTerminator;
  object ProjectTerminatorService;
  object Z_Domain_project;
  relationship R5900 is ProjectDomain unconditionally is_configured_by one Project, Project unconditionally configures many ProjectDomain;
  relationship R5901 is ProjectDomain unconditionally represents one Z_Domain_project, Z_Domain_project conditionally is_represented_by many ProjectDomain;
  relationship R5902 is ProjectTerminator unconditionally is_requirement_of one ProjectDomain, ProjectDomain conditionally requires many ProjectTerminator;
  relationship R5903 is ProjectTerminatorService unconditionally is_message_for one ProjectTerminator, ProjectTerminator conditionally messages_through one ProjectTerminatorService;
  object Project is
    projectName : String;
  end object; pragma id(5900);
  object ProjectDomain is
    //!R5900
    //!project
    my_project : iProject;
    //!R5901
    //!domain
    my_domain : iDomain;
  end object; pragma id(5901);
  object ProjectTerminator is
    //!R5902
    //!domain
    my_domain : iProjectDomain;
    name : Name;
  end object; pragma id(5902);
  object ProjectTerminatorService is
    //!R5903
    //!terminator
    my_terminator : iProjectTerminator;
    name : Name;
  end object; pragma id(5903);

  //!IMPORTED
  object Z_Domain_project is
  end object; pragma id(5905);

end domain;
