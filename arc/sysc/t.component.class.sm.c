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
.if ( false == default_behavior )
// state machine dispatcher process for ${te_class.Name}
void ${te_c.Name}::${te_class.GeneratedName}_sm()
{
  ${te_c.Name} * thismodule = this;
  while ( true ) {
    ${te_instance.module}ooa_loop( (void *) this );
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
