/*----------------------------------------------------------------------------
 * File:  xtuml2masl_I_TIM_class.h
 *
 * Class:       Timer  (I_TIM)
 * Component:   xtuml2masl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef XTUML2MASL_I_TIM_CLASS_H
#define XTUML2MASL_I_TIM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Timer  (I_TIM)
 */
struct xtuml2masl_I_TIM {

  /* application analysis class attributes */
  Escher_UniqueID_t Timer_ID;  
  i_t delay;  
  bool running;  
  bool recurring;  
  Escher_UniqueID_t Event_ID;  
  c_t * Label;  
  i_t expiration;  
  /* relationship storage */
  xtuml2masl_I_EVI * I_EVI_R2940_provides_delayed_delivery_of;
};
void xtuml2masl_I_TIM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t xtuml2masl_I_TIM_instanceloader( Escher_iHandle_t, const c_t * [] );
void xtuml2masl_I_TIM_batch_relate( Escher_iHandle_t );

void xtuml2masl_I_TIM_R2940_Link_delivered_by( xtuml2masl_I_EVI *, xtuml2masl_I_TIM * );
void xtuml2masl_I_TIM_R2940_Unlink_delivered_by( xtuml2masl_I_EVI *, xtuml2masl_I_TIM * );

#define xtuml2masl_I_TIM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_xtuml2masl_I_TIM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* XTUML2MASL_I_TIM_CLASS_H */
