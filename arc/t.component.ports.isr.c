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
#include "${te_file.registers}.${te_file.hdr_file_ext}"
/*----------------------------------------------------------------------------
 * component ISR/polling interface
 *--------------------------------------------------------------------------*/
void ${te_c.Name}_POLL( void );
void 
${te_c.Name}_POLL( void )
{
  static char outCountP = 0;
  static volatile u4_t ${te_c.Name}_status_register;
  u4_t ${te_c.Name}_status = ${te_c.Name}_status_register;
  /*
   * Based on the value in the status register, read parameters and
   * invoke the appropriate port message.
   */
