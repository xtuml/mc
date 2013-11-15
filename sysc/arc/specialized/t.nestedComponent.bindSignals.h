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
.assign instance_name = ""
.if(cl_ic_description == "" )
	.assign instance_name = "i${c_c_nested.Name}"			
.else
	.assign instance_name = "${cl_ic_description}"			
.end if
	
	${for_loop}${instance_name}.${port_name}${array_index}(${signal_name}${array_index});${end_for_loop}    ${comment}\
