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
#pragma once
.// TODO - SKB - Alon Wintergreen requested we use the pragma instead of the ifndef.
.//        This appears to be due to having multiple RegDefs.h all using the same
.//        include guard.  Perhaps we just need to put the system name in the
.//        guard (e.g. #ifndef MYPROG_REGDEFS_H_)
.//#ifndef _REGDEFS_H_
.//#define _REGDEFS_H_

/*
 *  register offsets
 *
 *  Modify base to match your platform.
 */
#define XTUML_REGISTER_ADDR_BASE 0x0

${register_offset}
/*
 *  message orders (commands)
 */
${TLM_message_order}

.//#endif
