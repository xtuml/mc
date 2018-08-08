/*----------------------------------------------------------------------------
 * File:  EV3M_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  EV3Motor (EV3M)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

.if ( "EV3HRP" == te_thread.flavor )
#include "ev3api.h"
#include "app.h"

#if defined(BUILD_MODULE)
#include "module_cfg.h"
#else
#include "kernel_cfg.h"
#endif


#include "${te_file.types}.${te_file.hdr_file_ext}"
#include "EV3M_bridge.h"
#include "mclm_ev3.h"

static motor_port_t ${te_mclm.motor_map_name}[DEV_MOTOR_MAX];
static int ${te_mclm.motor_invert_name}[DEV_MOTOR_MAX];

static int run_flag = 0;

void EV3M_Initialize(void)
{
  ${te_mclm.motor_map_initializer}
  ${te_mclm.motor_invert_initializer}

  run_flag = 1;
}  

/*
 * Bridge:  get_count
 */
i_t
EV3M_get_count( const  device_motor_t p_motor )
{
  return ev3_motor_get_counts(${te_mclm.motor_map_name}[p_motor])* ${te_mclm.motor_invert_name}[p_motor];

}


/*
 * Bridge:  reset_count
 */
void
EV3M_reset_count( const device_motor_t p_motor )
{
  ev3_motor_reset_counts(${te_mclm.motor_map_name}[p_motor]);
}


/*
 * Bridge:  set_power
 */
mclm_result_t
EV3M_set_power( const device_motor_t p_motor, const i_t p_power )
{
  if ( !run_flag ) return  MCLM_RESULT_OK;
  
  if (ev3_motor_set_power(${te_mclm.motor_map_name}[p_motor],p_power*${te_mclm.motor_invert_name}[p_motor]) != E_OK ) {
    return MCLM_RESULT_ERROR;
  }
  return MCLM_RESULT_OK;

}


/*
 * Bridge:  get_power
 */
i_t
EV3M_get_power( const device_motor_t p_motor )
{
  return ev3_motor_get_power(${te_mclm.motor_map_name}[p_motor])*${te_mclm.motor_invert_name}[p_motor];
}


/*
 * Bridge:  stop
 */
mclm_result_t
EV3M_stop( const bool p_brake, const device_motor_t p_motor )
{
  if ( ev3_motor_stop(${te_mclm.motor_map_name}[p_motor],p_brake) != E_OK ) {
    return MCLM_RESULT_ERROR;
  }
  return MCLM_RESULT_OK;
}


/*
 * Bridge:  steer
 */
mclm_result_t
EV3M_steer( const i_t p_power, const i_t p_ratio )
{
  if ( !run_flag ) return  MCLM_RESULT_OK;

  if ( ev3_motor_steer(${te_mclm.motor_map_name}[DEV_MOTOR_LEFT],
      ${te_mclm.motor_map_name}[DEV_MOTOR_RIGHT],
      p_power*${te_mclm.motor_invert_name}[DEV_MOTOR_LEFT],
  p_ratio*${te_mclm.motor_invert_name}[DEV_MOTOR_LEFT] ) != E_OK ) {
    return MCLM_RESULT_ERROR;
  }
  return MCLM_RESULT_OK;
}


void EV3M_Shutdown(void)
{
  run_flag = 0;

  int pt;
  for ( pt = 0; pt < TNUM_MOTOR_PORT; pt++ ) {
    if ( ev3_motor_get_type(pt) != E_ID ) {
      ev3_motor_stop(pt,true);
    }
  }
  
  
}

.end if
