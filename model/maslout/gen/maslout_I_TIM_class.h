/*----------------------------------------------------------------------------
 * File:  maslout_I_TIM_class.h
 *
 * Class:       Timer  (I_TIM)
 * Component:   maslout
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MASLOUT_I_TIM_CLASS_H
#define MASLOUT_I_TIM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Timer  (I_TIM)
 */
struct maslout_I_TIM {

  /* application analysis class attributes */
  Escher_UniqueID_t Timer_ID;  
  i_t delay;  
  bool running;  
  bool recurring;  
  Escher_UniqueID_t Event_ID;  
  c_t * Label;  
  i_t expiration;  
  /* relationship storage */
  maslout_I_EVI * I_EVI_R2940_provides_delayed_delivery_of;
};
void maslout_I_TIM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t maslout_I_TIM_instanceloader( Escher_iHandle_t, const c_t * [] );
void maslout_I_TIM_batch_relate( Escher_iHandle_t );

void maslout_I_TIM_R2940_Link_delivered_by( maslout_I_EVI *, maslout_I_TIM * );
void maslout_I_TIM_R2940_Unlink_delivered_by( maslout_I_EVI *, maslout_I_TIM * );

#define maslout_I_TIM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_maslout_I_TIM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* MASLOUT_I_TIM_CLASS_H */
