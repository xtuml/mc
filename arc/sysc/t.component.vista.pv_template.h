.if (file_epilogue == false)
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

#ifndef _${class_name}__h_
#define _${class_name}__h_

#include "$$(BASE_CLASS_INCLUDE)"
.//#include "$$(BASE_CLASS_NAME)_model.h"
#include "${te_c.Name}.h"
#include "RegDefs.h"

using namespace tlm;

//This class inherits from the ${te_c.Name}_bp_pv_base class
class ${class_name} : public ${class_name}_base {

 public:
  // Constructor
  // Do not add parameters here.
  // To add parameters - use the Model Builder form (under PV->Parameters tab)
  SC_HAS_PROCESS(${class_name});
  ${class_name}(sc_module_name module_name);
  ~${class_name}();

public:
  ${te_c.Name} m_${te_c.Name};

.else

};

#endif
.end if
