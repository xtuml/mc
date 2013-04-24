// Write callback for pulse register.
// The newValue has been already assigned to the pulse register.
${ingoing_reg_callback_declaration}

.if (generateTemplate == true)
/*<*/
.end if
// Read callback for ${port_name} port.
// Returns true when successful.
bool ${class_name}::${port_name}_callback_read(unsigned int address, unsigned char* data, unsigned size) {
  return true;
}

unsigned ${class_name}::${port_name}_callback_read_dbg(unsigned int address, unsigned char* data, unsigned size) {
  return 0;
}

// Write callback for ${port_name} port.
// Returns true when successful.
bool ${class_name}::${port_name}_callback_write(unsigned int address, unsigned char* data, unsigned size) {
  return true;
}


unsigned ${class_name}::${port_name}_callback_write_dbg(unsigned int address, unsigned char* data, unsigned size) {
  return 0;
}

bool ${class_name}::${port_name}_get_direct_memory_ptr(unsigned int address, tlm::tlm_dmi& dmiData) {
  return false;
}
.if (generateTemplate == true)
/*>*/
.end if
