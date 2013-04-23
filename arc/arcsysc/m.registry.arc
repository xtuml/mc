.//============================================================================
.// $RCSfile: m.registry.arc,v $
.//
.// Description:
.// This archetype file contains the implementation functions for colors
.// specified in the (user supplied/modified) registry.clr file.
.//
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//============================================================================
.// All this does practically is to rename the component.
.//============================================================================
.function RegisterOoaDomain
  .param string  repository_name
  .param string  registered_name
  .param integer registered_id
  .select any tm_c from instances of TM_C where ( selected.Name == repository_name )
  .if ( empty tm_c )
    .create object instance tm_c of TM_C
    .assign tm_c.Name = repository_name
  .end if
  .assign tm_c.xName = "$r{registered_name}"
  .print "Component ${repository_name} registered as ${registered_name}"
.end function
.//
.//============================================================================
.// deprecated:  This does nothing.
.// To indicate to the model compiler that a realized (non-xtUML) component
.// is part of a system build, use the following invocation (one for each
.// realized component).
.//============================================================================
.function RegisterRealizedDomain
  .param string  description
  .param string  registered_name
  .param integer registered_id
.end function
.//
