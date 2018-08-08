/*----------------------------------------------------------------------------
 * File:  ECR_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  ECRobot (ECR)
 *--------------------------------------------------------------------------*/

#include "kernel.h"
#include "kernel_id.h"
#include "osek_kernel.h"
#include "ecrobot_interface.h"
#include "alarm.h"
#include "${te_file.types}.${te_file.hdr_file_ext}"

#include "ECR_bridge.h"
//#include "PathFinder_functions.h"
#include "ecrobot_interface.h"


DeclareCounter(SysTimerCnt);

/* prototype */
i_t ECR_get_light_sensor_raw( void );

/*
 * Bridge:  set_turn
 */
i_t ECR_get_light_sensor_raw( void );


void ECR_initialize( void )
{
  // NXT does not need special initialize

}


/*
 * Bridge:  get_light_sensor
 */
i_t
ECR_get_light_sensor( void )
{
  return ecrobot_get_light_sensor(NXT_PORT_S3);
}


/*
 * Bridge:  get_touch_sensor
 */
i_t
ECR_get_touch_sensor( void )
{
  return ecrobot_get_touch_sensor(NXT_PORT_S4);
}


/*
 * Bridge:  set_light_sensor_active
 */
void
ECR_set_light_sensor_active( void )
{
  ecrobot_set_light_sensor_active(NXT_PORT_S3);
}



/*
 * Bridge:  get_gyro_sensor
 */
i_t
ECR_get_gyro_sensor( void )
{
  return ecrobot_get_gyro_sensor(NXT_PORT_S1);
}


/*
 * Bridge:  display_string
 */
void
ECR_display_string( c_t p_string[ESCHER_SYS_MAX_STRING_LEN] )
{
  display_clear(0);
  display_goto_xy(0,0);

  display_string (p_string);

  display_update();
}

/*
 * Bridge:  display_update
 */
void
ECR_display_update( void )
{
  display_update ();
}

/*
 * Bridge:  display_goto_xy
 */
void
ECR_display_goto_xy( i_t p_x, i_t p_y )
{
  display_goto_xy (p_x, p_y);
}


/*
 * Bridge:  display_clear
 */
void
ECR_display_clear( i_t p_updateToo )
{
  display_clear (p_updateToo);
}

/*
 * Bridge:  display_int
 */
void
ECR_display_int( i_t p_places, i_t p_value )
{
 display_clear(0);
  display_goto_xy(0,0);
  display_int (p_value, p_places);
    display_update();

}


/*
 * Bridge:  nxt_motor_set_count
 */
void
ECR_nxt_motor_set_count( i_t p_port, i_t p_value )
{
  nxt_motor_set_count (p_port, p_value);
}

/*
 * Bridge:  systick_wait_ms
 */
void
ECR_systick_wait_ms( i_t p_ms )
{
  systick_wait_ms(p_ms);
}

extern int etrobo_sonar;

i_t
ECR_get_sonar_sensor(void)
{
  return ecrobot_get_sonar_sensor(NXT_PORT_S2);
}

/*
 * Bridge:  get_left_motor_count

     Action language follows:

 */
i_t
ECR_get_left_motor_count( void )
{
  return nxt_motor_get_count(NXT_PORT_C);
}


/*
 * Bridge:  get_right_motor_count

     Action language follows:

 */
i_t
ECR_get_right_motor_count( void )
{
  return nxt_motor_get_count(NXT_PORT_B);
}

/*
 * Bridge:  get_battery_voltage

     Action language follows:
return 1;
 */
i_t
ECR_get_battery_voltage( void )
{
  return ecrobot_get_battery_voltage();
}

void
ECR_status_monitor( c_t string[ESCHER_SYS_MAX_STRING_LEN] )
{
  ecrobot_status_monitor(string);
}

/*
 * Bridge:  get_light_sensor
 */
void
ECR_bt_data_logger( c_t param1, c_t param2 )
{
//  signed char param1 = (signed char)forward;
//  signed char param2 = (signed char)turn;
  ecrobot_bt_data_logger(param1, param2);
  return;
}

/*
 * Bridge:  device_terminate
 */
void
ECR_device_terminate( void )
{
//    ecrobot_device_terminate();
    ecrobot_set_light_sensor_inactive(NXT_PORT_S3);
//    ecrobot_term_sonar_sensor(NXT_PORT_S2);
//    ecrobot_term_bt_connection();
    Escher_thread_shutdown();
}

i_t
ECR_sound_tone( i_t p_freq, i_t p_ms, i_t p_vol )
{
    return ecrobot_sound_tone(p_freq, p_ms, p_vol);
}



/*
 * Bridge:  display_string_noClear
 */
void
ECR_display_string_noClear( c_t p_string[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* Replace the following instructions with your implementation code.  */
  {
    display_string (p_string);
  }
}


/*
 * Bridge:  display_int_noClear
 */
void
ECR_display_int_noClear( i_t p_value )
{
  /* Replace the following instructions with your implementation code.  */
  {
    display_int (p_value, 0);
  }
}

void ECR_set_right_motor_count( const i_t val)
{
  nxt_motor_set_count(NXT_PORT_B,val);
}

void ECR_set_left_motor_count( const i_t val)
{
  nxt_motor_set_count(NXT_PORT_C,val);
}

i_t ECR_get_current_tick( void )
{
  i_t val;

  lock_cpu();
  val = cntcb_curval[SysTimerCnt];
  unlock_cpu();

  return val;
}

/*
 * Bridge:  set_light_sensor_inactive
 */
void ECR_set_light_sensor_inactive()
{
  /* Replace/Insert your implementation code here... */
    ecrobot_set_light_sensor_inactive(NXT_PORT_S3);
}

/*
 * Bridge:  get_motor_value
 */
i_t ECR_get_motor_value( const i_t p_port )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 0 */
  return nxt_motor_get_count(p_port);
}


/*
 * Bridge:  set_pwm
 */
void ECR_set_pwm( const i_t p_brake, const i_t p_port, const i_t p_pwm )
{
    nxt_motor_set_speed(p_port, p_pwm, p_brake);
}


/*
 * Bridge:  get_right_motor_port
 */
i_t
ECR_get_right_motor_port()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 2 */
  return NXT_PORT_B;
}


/*
 * Bridge:  get_left_motor_port
 */
i_t
ECR_get_left_motor_port()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 1 */
  return NXT_PORT_C;
}


/*
 * Bridge:  get_tail_motor_port
 */
i_t
ECR_get_tail_motor_port()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 3 */
  return NXT_PORT_A;
}


/*
 * Bridge:  get_steering_motor_port
 */
i_t
ECR_get_steering_motor_port()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN 3 */
  return NXT_PORT_A;

}
