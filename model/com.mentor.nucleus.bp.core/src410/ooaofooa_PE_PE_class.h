/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_PE_class.h
 *
 * Class:       Packageable Element  (PE_PE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PE_PE_CLASS_H
#define OOAOFOOA_PE_PE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Packageable Element  (PE_PE)
 */
struct ooaofooa_PE_PE {

  /* application analysis class attributes */
  Escher_UniqueID_t Element_ID;  
  sys_Visibility_t Visibility;  
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Component_ID;  
  sys_ElementTypeConstants_t type;  

  /* relationship storage */
  Escher_ObjectSet_s ACT_BIE_R640;
  ooaofooa_EP_PKG * EP_PKG_R8000_contained_by;
  void * R8001_subtype;
  Escher_ClassNumber_t R8001_object_id;
  Escher_ObjectSet_s PE_VIS_R8002;
  ooaofooa_C_C * C_C_R8003_contained_in;
  Escher_ObjectSet_s PE_CVS_R8004;
  Escher_ObjectSet_s G_EIS_R9100;
};
void ooaofooa_PE_PE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PE_PE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PE_PE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_PE_PE * ooaofooa_PE_PE_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_BIE_R640_From_PE_PE( PE_PE ) ( &((PE_PE)->ACT_BIE_R640) )
void ooaofooa_PE_PE_R8000_Link_contains( ooaofooa_EP_PKG *, ooaofooa_PE_PE * );
void ooaofooa_PE_PE_R8000_Unlink_contains( ooaofooa_EP_PKG *, ooaofooa_PE_PE * );

/* Accessors to PE_PE[R8001] subtypes */
#define ooaofooa_S_DT_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_S_DT_CLASS_NUMBER) ? \
     ((ooaofooa_S_DT *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_SQ_P_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_SQ_P_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_P *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_UC_UCA_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_UC_UCA_CLASS_NUMBER) ? \
     ((ooaofooa_UC_UCA *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_A_N_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_A_N_CLASS_NUMBER) ? \
     ((ooaofooa_A_N *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_O_OBJ_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_O_OBJ_CLASS_NUMBER) ? \
     ((ooaofooa_O_OBJ *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_C_C_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_C_C_CLASS_NUMBER) ? \
     ((ooaofooa_C_C *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_CL_IC_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_CL_IC_CLASS_NUMBER) ? \
     ((ooaofooa_CL_IC *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_C_I_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_C_I_CLASS_NUMBER) ? \
     ((ooaofooa_C_I *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_EP_PKG_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_EP_PKG_CLASS_NUMBER) ? \
     ((ooaofooa_EP_PKG *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_CNST_CSP_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_CNST_CSP_CLASS_NUMBER) ? \
     ((ooaofooa_CNST_CSP *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_A_AP_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_A_AP_CLASS_NUMBER) ? \
     ((ooaofooa_A_AP *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_A_E_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_A_E_CLASS_NUMBER) ? \
     ((ooaofooa_A_E *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_MSG_M_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_MSG_M_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_M *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_O_IOBJ_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_O_IOBJ_CLASS_NUMBER) ? \
     ((ooaofooa_O_IOBJ *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_R_REL_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_R_REL_CLASS_NUMBER) ? \
     ((ooaofooa_R_REL *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_S_EE_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_S_EE_CLASS_NUMBER) ? \
     ((ooaofooa_S_EE *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_S_SYNC_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_S_SYNC_CLASS_NUMBER) ? \
     ((ooaofooa_S_SYNC *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_C_SF_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_C_SF_CLASS_NUMBER) ? \
     ((ooaofooa_C_SF *)((PE_PE)->R8001_subtype)) : (0) )
#define ooaofooa_C_DG_R8001_From_PE_PE( PE_PE ) \
   ( (((PE_PE)->R8001_object_id) == ooaofooa_C_DG_CLASS_NUMBER) ? \
     ((ooaofooa_C_DG *)((PE_PE)->R8001_subtype)) : (0) )

#define ooaofooa_PE_VIS_R8002_From_PE_PE( PE_PE ) ( &((PE_PE)->PE_VIS_R8002) )
void ooaofooa_PE_PE_R8003_Link_contains( ooaofooa_C_C *, ooaofooa_PE_PE * );
void ooaofooa_PE_PE_R8003_Unlink_contains( ooaofooa_C_C *, ooaofooa_PE_PE * );
#define ooaofooa_PE_CVS_R8004_From_PE_PE( PE_PE ) ( &((PE_PE)->PE_CVS_R8004) )
#define ooaofooa_G_EIS_R9100_From_PE_PE( PE_PE ) ( &((PE_PE)->G_EIS_R9100) )


#define ooaofooa_PE_PE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PE_PE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PE_PE_CLASS_H */


