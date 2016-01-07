/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_ISR_class.h
 *
 * Class:       Instance Set Reference  (V_ISR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_ISR_CLASS_H
#define OOAOFOOA_V_ISR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Instance Set Reference  (V_ISR)
 */
struct ooaofooa_V_ISR {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_V_VAR * V_VAR_R809_refers_to;
};
void ooaofooa_V_ISR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_ISR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_ISR_batch_relate( Escher_iHandle_t );

void ooaofooa_V_ISR_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_ISR * );
void ooaofooa_V_ISR_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_ISR * );
void ooaofooa_V_ISR_R809_Link( ooaofooa_V_VAR *, ooaofooa_V_ISR * );
void ooaofooa_V_ISR_R809_Unlink( ooaofooa_V_VAR *, ooaofooa_V_ISR * );


#define ooaofooa_V_ISR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_ISR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_ISR_CLASS_H */


