/*----------------------------------------------------------------------------
 * File:  masl2xtuml_I_TIM_class.h
 *
 * Class:       Timer  (I_TIM)
 * Component:   masl2xtuml
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MASL2XTUML_I_TIM_CLASS_H
#define MASL2XTUML_I_TIM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Timer  (I_TIM)
 */
struct masl2xtuml_I_TIM {

  /* application analysis class attributes */
  Escher_UniqueID_t Timer_ID;  /* * Timer_ID */
  i_t delay;  /* - delay */
  bool running;  /* - running */
  bool recurring;  /* - recurring */
  Escher_UniqueID_t Event_ID;  /* - Event_ID (R2940) */
  c_t * Label;  /* - Label */
  i_t expiration;  /* - expiration */
  /* relationship storage */
  /* Note:  No storage needed for I_TIM->I_EVI[R2940] */
};
void masl2xtuml_I_TIM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t masl2xtuml_I_TIM_instanceloader( Escher_iHandle_t, const c_t * [] );
void masl2xtuml_I_TIM_batch_relate( Escher_iHandle_t );

void masl2xtuml_I_TIM_R2940_Link_delivered_by( masl2xtuml_I_EVI *, masl2xtuml_I_TIM * );
/* Note:  I_EVI<-R2940->I_TIM unrelate accessor not needed */

#define masl2xtuml_I_TIM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_masl2xtuml_I_TIM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MASL2XTUML_I_TIM_CLASS_H */
