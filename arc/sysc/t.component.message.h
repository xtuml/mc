.if ( ( te_sys.SystemCPortsType == "TLM") or ( te_sys.SystemCPortsType == "sc_interface") )
  ${virtual}${te_aba.ReturnDataType} ${te_aba.GeneratedName}(${te_aba.ParameterDeclaration})${initializer};
.//
.else
.if ( gen_struct_channel )
${channels_declaration}
.elif ( provision )
${provided_port_declaration}
  //-- Reset Port
  void reset (){
${provided_reset_port}  
  }
.else
${required_port_declaration}
  //-- Reset Port
  void reset (){
${required_reset_port}  
  }
.end if
.if ( not gen_struct_channel )
  //-- Bind the interface parameters to port elements 
  template <class C>
  void bind(C& c){
${bind_port}
  }

  template <class C>
  void operator () (C& c) {
    bind(c);
  }
.end if
.//
.end if
