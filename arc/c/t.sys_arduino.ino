extern "C" {               
void ${te_prefix.result}xtUML_setup();       
void ${te_prefix.result}xtUML_run();   
}

void setup() {             
  ${te_prefix.result}xtUML_setup();       
}

void loop() {              
  ${te_prefix.result}xtUML_run();       
  while ( 1 ) {}
}
