// Write callback for pulse register.
// The newValue has been already assigned to the pulse register.
${ingoing_reg_callback_declaration}

.if (generateTemplate == true)
/*<*/
.end if
// Read callback for ${port_name} port.
// Returns true when successful.
bool ${class_name}::${port_name}_callback_read(unsigned int address, unsigned char* data, unsigned size) {
  #ifdef MB_DEBUG
  std::cout << name() << "::${port_name}_callback_read, address = 0x" << std::hex << address << ", size = " << std::dec << size << std::endl;
  #endif
  return true;
}

unsigned ${class_name}::${port_name}_callback_read_dbg(unsigned int address, unsigned char* data, unsigned size) {
  return 0;
}

// Write callback for ${port_name} port.
// Returns true when successful.
bool ${class_name}::${port_name}_callback_write(unsigned int address, unsigned char* data, unsigned size) {
  #ifdef MB_DEBUG
  std::cout << name() << "::${port_name}_callback_write, address = 0x" << std::hex << address << ", data = {";
  for (unsigned u=0; u<size; u++) {
    std::cout << std::hex << "0x" << (unsigned int)(data[u]);
    if (u+1 != size) {
      std::cout << ", ";
    }
  }
  std::cout << "}, size = " << std::dec << size << std::endl;
  #endif
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
