  /////////////////////////////////////////
  // write callbacks of registers
  //////////////////////////////////////////
protected:
${pulse_register_callback}    

.if (generateTemplate == true)
/*<*/
.end if
  /////////////////////////////////////////////////
  // target read callbacks for ${port_name_slave} port
  /////////////////////////////////////////////////
public:
  virtual bool ${port_name_slave}_callback_read(unsigned int address, unsigned char* data, unsigned size);
  virtual unsigned ${port_name_slave}_callback_read_dbg(unsigned int address, unsigned char* data, unsigned size);


  //////////////////////////////////////////////////
  // target write callbacks for ${port_name_slave} port
  //////////////////////////////////////////////////
public:
  virtual bool ${port_name_slave}_callback_write(unsigned int address, unsigned char* data, unsigned size);
  virtual unsigned ${port_name_slave}_callback_write_dbg(unsigned int address, unsigned char* data, unsigned size);
  virtual bool ${port_name_slave}_get_direct_memory_ptr(unsigned int address, tlm::tlm_dmi& dmiData);
.//  virtual void $(port_name)_invalidate_direct_mem_ptr_callback(sc_dt::uint64 start_range, sc_dt::uint64 end_range);

.if (generateTemplate == true)
/*>*/
.end if

${bpCallBackIF}
