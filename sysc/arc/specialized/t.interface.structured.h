${template_parameters_default}
class ${te_prefix.provided_port}${c_i.Name} {
public:
${provided_port_declaration}
	//-- Constructor
	${te_prefix.provided_port}${c_i.Name} (const char* name=sc_gen_unique_name(" ${te_prefix.provided_port}${c_i.Name} "))
${constructor}	{
	}
	
	//-- Bind the interface parameters to port elements
	template <class C>
	void bind(C& c){
${bind_port}
	}
	
	template <class C>
	void operator () (C& c) {
		bind(c);
	}
};

${template_parameters_default}
class ${te_prefix.required_port}${c_i.Name} {
public:
${required_port_declaration}
	//-- Constructor
	${te_prefix.required_port}${c_i.Name} (const char* name=sc_gen_unique_name(" ${te_prefix.required_port}${c_i.Name} "))
${constructor}	{
	}
	
	//-- Bind the interface parameters to port elements
	template <class C>
	void bind(C& c){
${bind_port}
	}
	
	template <class C>
	void operator () (C& c) {
		bind(c);
	}
};
	
${template_parameters_default}
class ${te_prefix.channel}${c_i.Name} {
public:
${channels_declaration}
	//-- Constructor
	${te_prefix.channel}${c_i.Name} (const char* name=sc_gen_unique_name(" ${te_prefix.channel}${c_i.Name} "))
${constructor}	{
	}
};
