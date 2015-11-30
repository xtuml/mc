/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_TRN_class.h
 *
 * Class:       Transient Var  (V_TRN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_TRN_CLASS_H
#define OOAOFOOA_V_TRN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Transient Var  (V_TRN)
 */
struct ooaofooa_V_TRN {

  /* application analysis class attributes */
  Escher_UniqueID_t Var_ID;  
  Escher_UniqueID_t DT_ID;  
  c_t Dimensions[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_V_VAR * V_VAR_R814;
  ooaofooa_S_DT * S_DT_R821_has;
  Escher_ObjectSet_s S_DIM_R844_may_have;
};
void ooaofooa_V_TRN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_TRN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_TRN_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_TRN * ooaofooa_V_TRN_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_V_TRN_R814_Link( ooaofooa_V_VAR *, ooaofooa_V_TRN * );
void ooaofooa_V_TRN_R814_Unlink( ooaofooa_V_VAR *, ooaofooa_V_TRN * );
void ooaofooa_V_TRN_R821_Link_is_type_of( ooaofooa_S_DT *, ooaofooa_V_TRN * );
void ooaofooa_V_TRN_R821_Unlink_is_type_of( ooaofooa_S_DT *, ooaofooa_V_TRN * );
#define ooaofooa_S_DIM_R844_From_V_TRN_may_have( V_TRN ) ( &((V_TRN)->S_DIM_R844_may_have) )
/* Note:  V_TRN->S_DIM[R844] not navigated */


#define ooaofooa_V_TRN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_TRN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_TRN_CLASS_H */


