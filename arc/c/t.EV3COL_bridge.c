/*----------------------------------------------------------------------------
 * File:  EV3COL_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  EV3ColorSensor (EV3COL)
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
#include "EV3COL_bridge.h"
#include "mclm_ev3.h"

static sensor_port_t port = ${te_mclm.color_sensor_port};

void EV3COL_Initialize(void)
{
	if ( port < TNUM_SENSOR_PORT ) 
		ev3_sensor_config(port,COLOR_SENSOR);
}
	

/*
 * Bridge:  get_color
 */
colorid_t
EV3COL_get_color()
{
	return ev3_color_sensor_get_color(port);
}


/*
 * Bridge:  get_reflect
 */
i_t
EV3COL_get_reflect()
{
	return ev3_color_sensor_get_reflect(port);
}


/*
 * Bridge:  get_ambient
 */
i_t
EV3COL_get_ambient()
{
	return ev3_color_sensor_get_ambient(port);
}

void EV3COL_get_rgb_raw( i_t *r, i_t *g, i_t *b )
{
	rgb_raw_t raw;
	
	ev3_color_sensor_get_rgb_raw(port,&raw);
	*r = raw.r;
	*g = raw.g;
	*b = raw.b;
}
	
.end if

