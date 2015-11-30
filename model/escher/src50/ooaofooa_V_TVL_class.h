/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_TVL_class.h
 *
 * Class:       Transient Value Reference  (V_TVL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_TVL_CLASS_H
#define OOAOFOOA_V_TVL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Transient Value Reference  (V_TVL)
 */
struct ooaofooa_V_TVL {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_V_VAR * V_VAR_R805_references;
};
void ooaofooa_V_TVL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_TVL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_TVL_batch_relate( Escher_iHandle_t );

void ooaofooa_V_TVL_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_TVL * );
void ooaofooa_V_TVL_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_TVL * );
void ooaofooa_V_TVL_R805_Link( ooaofooa_V_VAR *, ooaofooa_V_TVL * );
void ooaofooa_V_TVL_R805_Unlink( ooaofooa_V_VAR *, ooaofooa_V_TVL * );


#define ooaofooa_V_TVL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_TVL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_TVL_CLASS_H */


