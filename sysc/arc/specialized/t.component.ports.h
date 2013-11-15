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
/*----------------------------------------------------------------------------
 * File:  ${te_c.port_file}.${te_file.hdr_file_ext}"
 *
 * UML Port Messages (Operations and Signals)
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_c.port_file}_$u{te_file.hdr_file_ext}
#define $u{te_c.port_file}_$u{te_file.hdr_file_ext}

#include "${te_file.types}.${te_file.hdr_file_ext}"
${includes.body}
${template_parameters_default}
SC_MODULE( ${te_c.Name} ) {
  /*----- Port Declaration ------*/
    sc_in< bool > clk;
    sc_in< bool > rst_X;
${declarations.body}
  /*----- Instantiation of Submodules ------*/
${nested_instances.body}
  /*----- Internal Variables ------*/
.//${class_attributes.body}

  /*----- State Machine Internal Variables ------*/
${sm_definition}
.//${state_machine_variables.body}
  /*----- Signal and Event Declaration ------*/
${signals.body}
  /*----- Component Behaviour ------*/
${defaultBehav_functions.body}
.//${comp_functions.body}
.//${state_machine_function_prototype.body}
  /*----- Connecting Modules ------*/
    SC_CTOR(${te_c.Name}) ${nested_instances_constructor.body}
    {
         /*--- Assign senstivity list*/
.//${comp_functions_sens.body}
${defaultBehav_functions_sens.body}
${sm_dispatcher}
.//${state_machine_function_sensList.body}
${sm_actionArray}
         /*--- Bind Signals*/
${bind_signals.body}
    }
};

#endif  /* $u{te_c.port_file}_$u{te_file.hdr_file_ext} */
.//
