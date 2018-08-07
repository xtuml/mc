/*----------------------------------------------------------------------------
 * File:  mclm_ev3.h
 *
 * Description:
 * Common Header for MCLM EV3.
 *
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
#ifndef _MCLM_EV3_H
#define _MCLM_EV3_H
 
#ifdef	__cplusplus
extern	"C"	{
#endif

typedef enum device_motor_t {
	DEV_MOTOR_LEFT=1,
	DEV_MOTOR_RIGHT,
	DEV_MOTOR_TAIL,
	DEV_MOTOR_FRONT,
	DEV_MOTOR_USER1,
	DEV_MOTOR_USER2,
	DEV_MOTOR_MAX
} device_motor_t;

typedef enum mclm_result_t {
	MCLM_RESULT_OK,
	MCLM_RESULT_ERROR = -1
} mclm_result_t;
	

#ifdef	__cplusplus
}
#endif


#endif /* _MCLM_EV3_H */
