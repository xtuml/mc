.//============================================================================
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.if ( default_behavior == false )
// state machine dispatcher process for ${te_class.Name}
void ${te_c.Name}::${te_class.GeneratedName}_sm()
{
  .if ( "SystemC" == te_target.language )
  ${te_c.Name} * thismodule = this;
  .end if
  while ( true ) {
    ${te_instance.module}ooa_loop( ${te_c.Name}_DOMAIN_ID, ${te_class.system_class_number}, (void *) this );
    wait();
  }
}
.else
// default behavior process for ${te_c.Name}
void ${te_c.Name}::component_main()
{
${port_reset}
  wait();
  while(true){
    wait();
  }
}
.end if
