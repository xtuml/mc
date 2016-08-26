/*----------------------------------------------------------------------------
 * File:  FILE_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  file (FILE)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslout_sys_types.h"
#include "LOG_bridge.h"
#include "FILE_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "TRACE_bridge.h"
#include "V_bridge.h"
#include "FILE_bridge.h"
#include "maslout_sys_types.h"

#include <unistd.h>

/*
 * Bridge:  exists
 */
bool
FILE_exists( c_t * p_path )
{
  bool result = false;

  result = !access( (const char*)p_path, F_OK );

  return result;
}

