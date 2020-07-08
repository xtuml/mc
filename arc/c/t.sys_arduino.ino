extern "C" {               
#include <stdarg.h>
void arduino_printf(const char * format, ...);
void ${te_prefix.result}xtUML_setup();       
void ${te_prefix.result}xtUML_run();   
}

void arduino_printf(const char * format, ...) {
  va_list va;
  va_start(va, format);
  char output[256];
  vsprintf(output, format, va);
  va_end(va);
  SerialUSB.print(output);
}

void setup() {             
  SerialUSB.begin(9600);
  while (!SerialUSB);
  ${te_prefix.result}xtUML_setup();       
}

void loop() {              
  ${te_prefix.result}xtUML_run();       
  while (1) {}
}
