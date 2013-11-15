.//============================================================================
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.if ( "" != template_parameters )
template class ${c_c.Name} ${template_default_instantiation} ;
.end if
${template_parameters}
void ${c_c.Name}${template_actual_parameters}::${function_name}(void)
{
${port_reset}
    wait();
    while(true){
       wait();
    }
}
