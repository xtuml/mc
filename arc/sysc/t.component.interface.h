.if ( "" != c_i.Descrip )
/*
${c_i.Descrip}
*/
.end if
// messages for interface reference ${c_i.Name} (provision)
class $r{c_i.Name}_provision\
.if ( (te_sys.SystemCPortsType == "TLM") or (te_sys.SystemCPortsType == "sc_interface") )
 : virtual public xtuml_interface \
.end if
{
  public:
.if ( te_sys.SystemCPortsType == "BitLevelSignals" )
  $r{c_i.Name}_provision (const char* name=sc_gen_unique_name(" $r{c_i.Name}_provision "))
  {
  }
.end if
${interface_provision_declarations}\
};

// messages for interface reference ${c_i.Name} (requirement)
class $r{c_i.Name}_requirement\
.if ( (te_sys.SystemCPortsType == "TLM") or (te_sys.SystemCPortsType == "sc_interface") )
 : virtual public xtuml_interface \
.end if
{
  public:
.if ( te_sys.SystemCPortsType == "BitLevelSignals" )
  $r{c_i.Name}_requirement (const char* name=sc_gen_unique_name(" $r{c_i.Name}_requirement "))
  {
  }
.end if
${interface_requirement_declarations}\
};

.if ( te_sys.SystemCPortsType == "BitLevelSignals" )
// message channel for interface ${c_i.Name} binding
class $r{c_i.Name}_channel {
  public:
  $r{c_i.Name}_channel (const char* name=sc_gen_unique_name(" $r{c_i.Name}_channel "))
  {
  }
${interface_channel_declarations}\
};
.end if
.//
