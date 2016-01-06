/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_IRF_class.h
 *
 * Class:       Instance Reference  (V_IRF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_IRF_CLASS_H
#define OOAOFOOA_V_IRF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Instance Reference  (V_IRF)
 */
struct ooaofooa_V_IRF {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_V_VAR * V_VAR_R808_refers_to;
};
void ooaofooa_V_IRF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_IRF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_IRF_batch_relate( Escher_iHandle_t );

void ooaofooa_V_IRF_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_IRF * );
void ooaofooa_V_IRF_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_IRF * );
void ooaofooa_V_IRF_R808_Link( ooaofooa_V_VAR *, ooaofooa_V_IRF * );
void ooaofooa_V_IRF_R808_Unlink( ooaofooa_V_VAR *, ooaofooa_V_IRF * );


#define ooaofooa_V_IRF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_IRF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_IRF_CLASS_H */


