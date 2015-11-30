/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_TFR_class.h
 *
 * Class:       Operation  (O_TFR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_TFR_CLASS_H
#define OOAOFOOA_O_TFR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Operation  (O_TFR)
 */
struct ooaofooa_O_TFR {

  /* application analysis class attributes */
  Escher_UniqueID_t Tfr_ID;  
  Escher_UniqueID_t Obj_ID;  
  c_t * Name;  
  c_t * Descrip;  
  Escher_UniqueID_t DT_ID;  
  sys_Scope_t Instance_Based;  
  c_t * Action_Semantics;  
  c_t * Action_Semantics_internal;  
  sys_ParseStatus_t Suc_Pars;  
  c_t * Return_Dimensions;  
  Escher_UniqueID_t Previous_Tfr_ID;  

  /* relationship storage */
  ooaofooa_O_OBJ * O_OBJ_R115_is_associated_with;
  ooaofooa_S_DT * S_DT_R116_return_code_is_defined_by;
  Escher_ObjectSet_s O_TPARM_R117_contains;
  Escher_ObjectSet_s S_DIM_R122_return_value_may_have;
  ooaofooa_O_TFR * O_TFR_R125_succeeds;
  ooaofooa_O_TFR * O_TFR_R125_precedes;
  Escher_ObjectSet_s ACT_TFM_R673;
  ooaofooa_ACT_OPB * ACT_OPB_R696;
  Escher_ObjectSet_s V_TRV_R829;
  Escher_ObjectSet_s MSG_O_R1011_is_invoked_by;
  ooaofooa_TE_TFR * TE_TFR_R2024;
};
void ooaofooa_O_TFR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_TFR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_TFR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_TFR * ooaofooa_O_TFR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_O_TFR_R115_Link_may_contain( ooaofooa_O_OBJ *, ooaofooa_O_TFR * );
void ooaofooa_O_TFR_R115_Unlink_may_contain( ooaofooa_O_OBJ *, ooaofooa_O_TFR * );
void ooaofooa_O_TFR_R116_Link_defines_the_type_of_return_code( ooaofooa_S_DT *, ooaofooa_O_TFR * );
void ooaofooa_O_TFR_R116_Unlink_defines_the_type_of_return_code( ooaofooa_S_DT *, ooaofooa_O_TFR * );
#define ooaofooa_O_TPARM_R117_From_O_TFR_contains( O_TFR ) ( &((O_TFR)->O_TPARM_R117_contains) )
#define ooaofooa_S_DIM_R122_From_O_TFR_return_value_may_have( O_TFR ) ( &((O_TFR)->S_DIM_R122_return_value_may_have) )
/* Note:  O_TFR->S_DIM[R122] not navigated */
      
/*
 * R125 is Simple Reflexive:  0..1:0..1
 *  Formalizing O_TFR succeeds participant
 *  Participant O_TFR precedes formalizer
 */
/* Navigation phrase:  R125.'succeeds' */
void ooaofooa_O_TFR_R125_Link_succeeds( ooaofooa_O_TFR *, ooaofooa_O_TFR * );
void ooaofooa_O_TFR_R125_Unlink_succeeds( ooaofooa_O_TFR *, ooaofooa_O_TFR * );
/* Navigation phrase:  R125.'precedes' */
void ooaofooa_O_TFR_R125_Link_precedes( ooaofooa_O_TFR *, ooaofooa_O_TFR * );
void ooaofooa_O_TFR_R125_Unlink_precedes( ooaofooa_O_TFR *, ooaofooa_O_TFR * );
#define ooaofooa_ACT_TFM_R673_From_O_TFR( O_TFR ) ( &((O_TFR)->ACT_TFM_R673) )
#define ooaofooa_V_TRV_R829_From_O_TFR( O_TFR ) ( &((O_TFR)->V_TRV_R829) )
#define ooaofooa_MSG_O_R1011_From_O_TFR_is_invoked_by( O_TFR ) ( &((O_TFR)->MSG_O_R1011_is_invoked_by) )


#define ooaofooa_O_TFR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_TFR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_TFR_CLASS_H */


