/*----------------------------------------------------------------------------
 * File:  ooaofooa_CSME_CIE_class.h
 *
 * Class:       Class In Engine  (CSME_CIE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CSME_CIE_CLASS_H
#define OOAOFOOA_CSME_CIE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class In Engine  (CSME_CIE)
 */
struct ooaofooa_CSME_CIE {

  /* application analysis class attributes */
  Escher_UniqueID_t CIE_ID;  
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Package_ID;  
  c_t * Label;  

  /* relationship storage */
  Escher_ObjectSet_s I_EVI_R2931_has_waiting;
  ooaofooa_CSME_CIS * CSME_CIS_R2932;
  Escher_ObjectSet_s I_EVI_R2938_sends;
  ooaofooa_CSME_CLM * CSME_CLM_R2950;
  ooaofooa_I_EXE * I_EXE_R2960_is_executed_by;
  ooaofooa_O_OBJ * O_OBJ_R2961_represents_class_in_engine;
  Escher_ObjectSet_s I_INS_R2962_is_static_definition;
  ooaofooa_EP_PKG * EP_PKG_R2971_executes_in_context_of;
};
void ooaofooa_CSME_CIE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CSME_CIE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CSME_CIE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CSME_CIE * ooaofooa_CSME_CIE_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_I_EVI_R2931_From_CSME_CIE_has_waiting( CSME_CIE ) ( &((CSME_CIE)->I_EVI_R2931_has_waiting) )
/* Note:  CSME_CIE->I_EVI[R2931] not navigated */
#define ooaofooa_I_EVI_R2938_From_CSME_CIE_sends( CSME_CIE ) ( &((CSME_CIE)->I_EVI_R2938_sends) )
/* Note:  CSME_CIE->I_EVI[R2938] not navigated */
void ooaofooa_CSME_CIE_R2960_Link_executes( ooaofooa_I_EXE *, ooaofooa_CSME_CIE * );
void ooaofooa_CSME_CIE_R2960_Unlink_executes( ooaofooa_I_EXE *, ooaofooa_CSME_CIE * );
void ooaofooa_CSME_CIE_R2961_Link_is_represented_in_engine_by( ooaofooa_O_OBJ *, ooaofooa_CSME_CIE * );
void ooaofooa_CSME_CIE_R2961_Unlink_is_represented_in_engine_by( ooaofooa_O_OBJ *, ooaofooa_CSME_CIE * );
#define ooaofooa_I_INS_R2962_From_CSME_CIE_is_static_definition( CSME_CIE ) ( &((CSME_CIE)->I_INS_R2962_is_static_definition) )
/* Note:  CSME_CIE->I_INS[R2962] not navigated */
void ooaofooa_CSME_CIE_R2971_Link_provides_execution_context_for( ooaofooa_EP_PKG *, ooaofooa_CSME_CIE * );
void ooaofooa_CSME_CIE_R2971_Unlink_provides_execution_context_for( ooaofooa_EP_PKG *, ooaofooa_CSME_CIE * );


#define ooaofooa_CSME_CIE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CSME_CIE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CSME_CIE_CLASS_H */


