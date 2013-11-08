/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_TIM_class.h
 *
 * Class:       Timer  (I_TIM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_TIM_CLASS_H
#define OOAOFOOA_I_TIM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Timer  (I_TIM)
 */
struct ooaofooa_I_TIM {

  /* application analysis class attributes */
  Escher_UniqueID_t Timer_ID;  
  i_t delay;  
  bool running;  
  bool recurring;  
  Escher_UniqueID_t Event_ID;  
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  
  i_t expiration;  

  /* relationship storage */
  ooaofooa_I_EVI * I_EVI_R2940_provides_delayed_delivery_of;
};
void ooaofooa_I_TIM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_TIM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_TIM_batch_relate( Escher_iHandle_t );

void ooaofooa_I_TIM_R2940_Link_delivered_by( ooaofooa_I_EVI *, ooaofooa_I_TIM * );
void ooaofooa_I_TIM_R2940_Unlink_delivered_by( ooaofooa_I_EVI *, ooaofooa_I_TIM * );


#define ooaofooa_I_TIM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_TIM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_TIM_CLASS_H */


