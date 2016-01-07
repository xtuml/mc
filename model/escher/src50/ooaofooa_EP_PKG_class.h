/*----------------------------------------------------------------------------
 * File:  ooaofooa_EP_PKG_class.h
 *
 * Class:       Package  (EP_PKG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_EP_PKG_CLASS_H
#define OOAOFOOA_EP_PKG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Package  (EP_PKG)
 */
struct ooaofooa_EP_PKG {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Direct_Sys_ID;  
  c_t * Name;  
  c_t * Descrip;  
  i_t Num_Rng;  

  /* relationship storage */
  Escher_ObjectSet_s SQ_PP_R956_represents_participant_of;
  Escher_ObjectSet_s EP_SPKG_R1400_contains;
  ooaofooa_S_SYS * S_SYS_R1401_directly_contained_under;
  Escher_ObjectSet_s EP_PIP_R1403_contains;
  ooaofooa_EP_PIP * EP_PIP_R1404_linked_to_parent_through;
  ooaofooa_S_SYS * S_SYS_R1405;
  ooaofooa_I_EXE * I_EXE_R2970_is_being_verified_by;
  Escher_ObjectSet_s CSME_CIE_R2971_provides_execution_context_for;
  Escher_ObjectSet_s PE_PE_R8000_contains;
  ooaofooa_PE_PE * PE_PE_R8001;
  Escher_ObjectSet_s PE_VIS_R8002;
  Escher_ObjectSet_s PE_SRS_R8005_holds;
};
void ooaofooa_EP_PKG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_EP_PKG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_EP_PKG_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_EP_PKG * ooaofooa_EP_PKG_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_SQ_PP_R956_From_EP_PKG_represents_participant_of( EP_PKG ) ( &((EP_PKG)->SQ_PP_R956_represents_participant_of) )
#define ooaofooa_EP_SPKG_R1400_From_EP_PKG_contains( EP_PKG ) ( &((EP_PKG)->EP_SPKG_R1400_contains) )
/* Note:  EP_PKG->EP_SPKG[R1400] not navigated */
void ooaofooa_EP_PKG_R1401_Link_contains( ooaofooa_S_SYS *, ooaofooa_EP_PKG * );
void ooaofooa_EP_PKG_R1401_Unlink_contains( ooaofooa_S_SYS *, ooaofooa_EP_PKG * );
#define ooaofooa_EP_PIP_R1403_From_EP_PKG_contains( EP_PKG ) ( &((EP_PKG)->EP_PIP_R1403_contains) )
/* Note:  EP_PKG->EP_PIP[R1403] not navigated */
void ooaofooa_EP_PKG_R1405_Link_contains( ooaofooa_S_SYS *, ooaofooa_EP_PKG * );
void ooaofooa_EP_PKG_R1405_Unlink_contains( ooaofooa_S_SYS *, ooaofooa_EP_PKG * );
#define ooaofooa_CSME_CIE_R2971_From_EP_PKG_provides_execution_context_for( EP_PKG ) ( &((EP_PKG)->CSME_CIE_R2971_provides_execution_context_for) )
/* Note:  EP_PKG->CSME_CIE[R2971] not navigated */
#define ooaofooa_PE_PE_R8000_From_EP_PKG_contains( EP_PKG ) ( &((EP_PKG)->PE_PE_R8000_contains) )
void ooaofooa_EP_PKG_R8001_Link( ooaofooa_PE_PE *, ooaofooa_EP_PKG * );
void ooaofooa_EP_PKG_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_EP_PKG * );
#define ooaofooa_PE_VIS_R8002_From_EP_PKG( EP_PKG ) ( &((EP_PKG)->PE_VIS_R8002) )
#define ooaofooa_PE_SRS_R8005_From_EP_PKG_holds( EP_PKG ) ( &((EP_PKG)->PE_SRS_R8005_holds) )
/* Note:  EP_PKG->PE_SRS[R8005] not navigated */


#define ooaofooa_EP_PKG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_EP_PKG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_EP_PKG_CLASS_H */


