/*----------------------------------------------------------------------------
 * File:  EV3GYR_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  EV3GyroSensor (EV3GYR)
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
#include "EV3GYR_bridge.h"
#include "mclm_ev3.h"

static sensor_port_t port = ${te_mclm.gyro_sensor_port};
static int invert_param = ${te_mclm.gyro_invert_param};


void EV3GYR_Initialize(void)
{
	if ( port < TNUM_SENSOR_PORT ) 
		ev3_sensor_config(port,GYRO_SENSOR);
}
/*
 * Bridge:  get_angle
 */
i_t
EV3GYR_get_angle()
{
	return ev3_gyro_sensor_get_angle(port) * invert_param;
}


/*
 * Bridge:  get_rate
 */
i_t
EV3GYR_get_rate()
{
	return ev3_gyro_sensor_get_rate(port) * invert_param;
}


/*
 * Bridge:  reset
 */
void
EV3GYR_reset()
{
	ev3_gyro_sensor_reset(port);
}

.end if

