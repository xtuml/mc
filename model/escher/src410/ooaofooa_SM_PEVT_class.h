/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_PEVT_class.h
 *
 * Class:       Polymorphic Event  (SM_PEVT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_PEVT_CLASS_H
#define OOAOFOOA_SM_PEVT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Polymorphic Event  (SM_PEVT)
 */
struct ooaofooa_SM_PEVT {

  /* application analysis class attributes */
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  
  c_t localClassName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t localClassKL[ESCHER_SYS_MAX_STRING_LEN];  
  c_t localEventMning[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_SM_EVT * SM_EVT_R525;
  Escher_ObjectSet_s SM_NLEVT_R527_is_aliased_by;
};
void ooaofooa_SM_PEVT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_PEVT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_PEVT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_PEVT * ooaofooa_SM_PEVT_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_SM_PEVT_R525_Link( ooaofooa_SM_EVT *, ooaofooa_SM_PEVT * );
void ooaofooa_SM_PEVT_R525_Unlink( ooaofooa_SM_EVT *, ooaofooa_SM_PEVT * );
#define ooaofooa_SM_NLEVT_R527_From_SM_PEVT_is_aliased_by( SM_PEVT ) ( &((SM_PEVT)->SM_NLEVT_R527_is_aliased_by) )


#define ooaofooa_SM_PEVT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_PEVT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_PEVT_CLASS_H */


