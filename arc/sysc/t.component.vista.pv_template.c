
/**************************************************************/
/*                                                            */
/*                                                            */
/*       THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY      */
/*         INFORMATION WHICH IS THE PROPERTY OF MENTOR        */
/*         GRAPHICS CORPORATION OR ITS LICENSORS AND IS       */
/*                 SUBJECT TO LICENSE TERMS.                  */
/*                                                            */
/**************************************************************/

/*@include "esl/pv_gen/HeaderPv.template"*/

#include "${class_name}.h"
#include <iostream>

#include "RegDefs.h"


//constructor
${class_name}::${class_name}(sc_module_name module_name)
  : ${pvBase_class_name}(module_name) , m_${te_c.Name}("${te_c.Name}") ${bpCallBackIF}
{
  ${bind_port_to_wrapper}
} 

${class_name}::~${class_name}() {
  // Free memory
}

////////////////////////////////////////////////////////////////////////////////
// Use these functions to define the behavior of your model when there is a 
// write event on one of the registers as defined in the Model Builder form.
// These functions are called before the write callbacks on the port.
////////////////////////////////////////////////////////////////////////////////
