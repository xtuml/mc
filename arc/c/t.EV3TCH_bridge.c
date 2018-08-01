/*----------------------------------------------------------------------------
 * File:  EV3TCH_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  EV3TouchSensor (EV3TCH)
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
#include "EV3TCH_bridge.h"
#include "mclm_ev3.h"

static sensor_port_t port = ${te_mclm.touch_sensor_port};

void EV3TCH_Initialize(void)
{
	if ( port < TNUM_SENSOR_PORT ) 
		ev3_sensor_config(port,TOUCH_SENSOR);
}

/*
 * Bridge:  is_pressed
 */
bool
EV3TCH_is_pressed()
{
	return ev3_touch_sensor_is_pressed(port);

}
.end if


