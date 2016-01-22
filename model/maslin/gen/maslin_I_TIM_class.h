/*----------------------------------------------------------------------------
 * File:  maslin_I_TIM_class.h
 *
 * Class:       Timer  (I_TIM)
 * Component:   maslin
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MASLIN_I_TIM_CLASS_H
#define MASLIN_I_TIM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Timer  (I_TIM)
 */
struct maslin_I_TIM {

  /* application analysis class attributes */
  Escher_UniqueID_t Timer_ID;  /* * Timer_ID */
  i_t delay;  /* - delay */
  bool running;  /* - running */
  bool recurring;  /* - recurring */
  Escher_UniqueID_t Event_ID;  /* - Event_ID (R2940) */
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  /* - Label */
  i_t expiration;  /* - expiration */
  /* relationship storage */
  /* Note:  No storage needed for I_TIM->I_EVI[R2940] */
};

/* xtUML WARNING:  I_EVI<-R2940->I_TIM never related!  */
/* Note:  I_EVI<-R2940->I_TIM unrelate accessor not needed */

#define maslin_I_TIM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_maslin_I_TIM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MASLIN_I_TIM_CLASS_H */
