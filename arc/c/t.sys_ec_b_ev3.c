/*----------------------------------------------------------------------------
 * File:  EC_B_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Balancer (EC_B)
 *--------------------------------------------------------------------------*/

#include "ev3api.h"
#include "ECR_bridge.h"
#include "EC_B_bridge.h"
#include "balancer.h"
/*
 * Bridge:  runWithBalance

     Action language follows:

 */
void

EC_B_runWithBalance( const i_t p_forwardValue, const i_t p_gyroOffset, const i_t p_turnValue )
{

	 signed char pwm_L, pwm_R;
	        balance_control(
         (float)p_forwardValue,
		 (float)p_turnValue,
		 (float)ECR_get_gyro_sensor(),
		 (float)p_gyroOffset,
	 	 (float)ECR_get_left_motor_count(),
	 	 (float)ECR_get_right_motor_count(),
		 (float)ECR_get_battery_voltage(),
	     &pwm_L,
		 &pwm_R);

      ECR_set_pwm(1,ECR_get_left_motor_port(),pwm_L);
      ECR_set_pwm(1,ECR_get_right_motor_port(),pwm_R);

}

/*
 * Bridge:  motor_stop
 */
void
EC_B_motor_stop( void )
{
    ECR_set_pwm(1,ECR_get_left_motor_port(),0);
    ECR_set_pwm(1,ECR_get_right_motor_port(),0);

}


/*
 * Bridge:  balance_init
 */
void
EC_B_balance_init( void )
{
  balance_init();
}

void
EC_B_calculatePWM( const i_t p_battery_voltage, const i_t p_forward, const i_t p_gyro_offset, const i_t p_gyro_value, const i_t p_left_motor_count, i_t * p_r_lPWM, i_t * p_r_rPWM, const i_t p_right_motor_count, const i_t p_turn )
{
	signed char pwm_L;
	signed char pwm_R;

    balance_control(
    		(float)p_forward,
    		(float)p_turn,
    		(float)p_gyro_value,
    		(float)p_gyro_offset,
    		(float)p_left_motor_count,
    		(float)p_right_motor_count,
    		(float)p_battery_voltage,
    		&pwm_L,
    		&pwm_R);

    *p_r_lPWM = pwm_L;
    *p_r_rPWM = pwm_R;

}
