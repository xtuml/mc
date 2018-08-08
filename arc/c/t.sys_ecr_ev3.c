/*----------------------------------------------------------------------------
 * File:  ECR_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  ECRobot (ECR)
 *--------------------------------------------------------------------------*/

#include "ev3api.h"
#include "app.h"

#if defined(BUILD_MODULE)
#include "module_cfg.h"
#else
#include "kernel_cfg.h"
#endif

#include "${te_file.types}.${te_file.hdr_file_ext}"

#define CALIB_FONT (EV3_FONT_SMALL)
#define CALIB_FONT_WIDTH (6/*TODO: magic number*/)
#define CALIB_FONT_HEIGHT (8/*TODO: magic number*/)

static const int
    touch_sensor    = EV3_PORT_1,
    sonar_sensor    = EV3_PORT_2,
    color_sensor    = EV3_PORT_3,
    gyro_sensor     = EV3_PORT_4,
    left_motor      = EV3_PORT_C,
    right_motor     = EV3_PORT_B,
    tail_motor      = EV3_PORT_A;


static void button_clicked_handler(int button)
{
  ext_ker();
}


void ECR_initialize(void)
{
    ev3_button_set_on_clicked(BACK_BUTTON, button_clicked_handler, BACK_BUTTON);

    ev3_sensor_config(sonar_sensor, ULTRASONIC_SENSOR);
    ev3_sensor_config(color_sensor, COLOR_SENSOR);
    ev3_color_sensor_get_reflect(color_sensor);
    ev3_sensor_config(touch_sensor, TOUCH_SENSOR);
    ev3_sensor_config(gyro_sensor, GYRO_SENSOR);
    ev3_motor_config(left_motor, LARGE_MOTOR);
    ev3_motor_config(right_motor, LARGE_MOTOR);
    ev3_motor_config(tail_motor, LARGE_MOTOR);
    ev3_motor_reset_counts(tail_motor);
}

/*
 * Bridge:  get_light_sensor
 */
i_t
ECR_get_light_sensor( void )
{
  return ev3_color_sensor_get_reflect(color_sensor);
}


/*
 * Bridge:  get_touch_sensor
 */
i_t
ECR_get_touch_sensor( void )
{
  return ev3_touch_sensor_is_pressed(touch_sensor);
}


/*
 * Bridge:  set_light_sensor_active
 */
void
ECR_set_light_sensor_active( void )
{
  ev3_color_sensor_get_reflect(color_sensor);
}



/*
 * Bridge:  get_gyro_sensor
 */
i_t
ECR_get_gyro_sensor( void )
{
  return  ev3_gyro_sensor_get_rate(gyro_sensor);
}


/*
 * Bridge:  display_string
 */
void
ECR_display_string( c_t p_string[ESCHER_SYS_MAX_STRING_LEN] )
{
    ev3_lcd_fill_rect(0, 0, EV3_LCD_WIDTH, EV3_LCD_HEIGHT, EV3_LCD_WHITE);
    ev3_lcd_draw_string(p_string, 0, CALIB_FONT_HEIGHT*1);

}

/*
 * Bridge:  display_update
 */
void
ECR_display_update( void )
{
  /* TODO: Not support */
}

/*
 * Bridge:  display_goto_xy
 */
void
ECR_display_goto_xy( i_t p_x, i_t p_y )
{
  /* TODO: Not support */

}


/*
 * Bridge:  display_clear
 */
void
ECR_display_clear( i_t p_updateToo )
{
  ev3_lcd_fill_rect(0, 0, EV3_LCD_WIDTH, EV3_LCD_HEIGHT, EV3_LCD_WHITE);
}

/*
 * Bridge:  display_int
 */
void
ECR_display_int( i_t p_places, i_t p_value )
{
  ev3_lcd_fill_rect(0, 0, EV3_LCD_WIDTH, EV3_LCD_HEIGHT, EV3_LCD_WHITE);
}


/*
 * Bridge:  nxt_motor_set_count
 */
void
ECR_nxt_motor_set_count( i_t p_port, i_t p_value )
{
  /* only support reset */
  ev3_motor_reset_counts(p_port);
}

/*
 * Bridge:  systick_wait_ms
 */
void
ECR_systick_wait_ms( i_t p_ms )
{
  tslp_tsk(p_ms);
}

extern int etrobo_sonar;

i_t
ECR_get_sonar_sensor(void)
{
  return ev3_ultrasonic_sensor_get_distance(sonar_sensor);
}

/*
 * Bridge:  get_left_motor_count

     Action language follows:

 */
i_t
ECR_get_left_motor_count( void )
{
  return ev3_motor_get_counts(left_motor);
}


/*
 * Bridge:  get_right_motor_count

     Action language follows:

 */
i_t
ECR_get_right_motor_count( void )
{
  return ev3_motor_get_counts(right_motor);
}

/*
 * Bridge:  get_battery_voltage

     Action language follows:
return 1;
 */
i_t
ECR_get_battery_voltage( void )
{
  /* currently ev3 does not support battery */
  return ev3_battery_voltage_mV();
}

void
ECR_status_monitor( c_t string[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* TODO : Not support */

}

/*
 * Bridge:  get_light_sensor
 */
void
ECR_bt_data_logger( c_t param1, c_t param2 )
{
//  signed char param1 = (signed char)forward;
//  signed char param2 = (signed char)turn;
  //ecrobot_bt_data_logger(param1, param2);
  /* TODO : Not support */

  return;
}

/*
 * Bridge:  device_terminate
 */
void
ECR_device_terminate( void )
{
    Escher_thread_shutdown();
}

i_t
ECR_sound_tone( i_t p_freq, i_t p_ms, i_t p_vol )
{
  /* TODO : Not support */
  return 0;
}



/*
 * Bridge:  display_string_noClear
 */
void
ECR_display_string_noClear( c_t p_string[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* TODO : Not support */

}


/*
 * Bridge:  display_int_noClear
 */
void
ECR_display_int_noClear( i_t p_value )
{
  /* TODO : Not support */

}

void ECR_set_right_motor_count( const i_t val)
{
  /* only support reset */
  ev3_motor_reset_counts(right_motor);
}

void ECR_set_left_motor_count( const i_t val)
{
  /* only support reset */
  ev3_motor_reset_counts(left_motor);
}

i_t ECR_get_current_tick( void )
{
  SYSTIM tim;
  get_tim(&tim);
  return tim;
}

/*
 * Bridge:  set_light_sensor_inactive
 */
void ECR_set_light_sensor_inactive()
{
  /* Replace/Insert your implementation code here... */
  /* TODO : Not support */


}

/*
 * Bridge:  get_motor_value
 */
i_t ECR_get_motor_value( const i_t p_port )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 0 */
  return ev3_motor_get_counts(p_port);
}


/*
 * Bridge:  set_pwm
 */
void ECR_set_pwm( const i_t p_brake, const i_t p_port, const i_t p_pwm )
{
    ev3_motor_set_power(p_port, p_pwm);
}


/*
 * Bridge:  get_right_motor_port
 */
i_t
ECR_get_right_motor_port()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 2 */
  return right_motor;
}


/*
 * Bridge:  get_left_motor_port
 */
i_t
ECR_get_left_motor_port()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 1 */
  return left_motor;
}


/*
 * Bridge:  get_tail_motor_port
 */
i_t
ECR_get_tail_motor_port()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 3 */
  return tail_motor;
}


/*
 * Bridge:  get_steering_motor_port
 */
i_t
ECR_get_steering_motor_port()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 3 */
  return tail_motor;

}
