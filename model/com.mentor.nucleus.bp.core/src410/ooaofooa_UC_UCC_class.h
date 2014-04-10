/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_UCC_class.h
 *
 * Class:       Use Case Diagram  (UC_UCC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_UC_UCC_CLASS_H
#define OOAOFOOA_UC_UCC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Use Case Diagram  (UC_UCC)
 */
struct ooaofooa_UC_UCC {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t SS_ID;  
  Escher_UniqueID_t Parent_Package_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Component_Package_ID;  
  Escher_UniqueID_t Component_Id;  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R1201_can_be_displayed_in;
  ooaofooa_S_SS * S_SS_R1202_can_be_displayed_in;
  Escher_ObjectSet_s UC_PIUC_R1203;
  ooaofooa_UC_UIU * UC_UIU_R1208_can_show;
  ooaofooa_UC_UIU * UC_UIU_R1209_is_connection_to_parent;
  ooaofooa_S_SYS * S_SYS_R1211;
  ooaofooa_CP_CP * CP_CP_R1212;
  ooaofooa_C_C * C_C_R1213;
  Escher_ObjectSet_s UC_AIUC_R1214_contains;
  ooaofooa_EP_SPKG * EP_SPKG_R1402;
};
void ooaofooa_UC_UCC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_UC_UCC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_UC_UCC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_UC_UCC * ooaofooa_UC_UCC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_UC_UCC_R1201_Link_can_display( ooaofooa_S_DOM *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1201_Unlink_can_display( ooaofooa_S_DOM *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1202_Link_can_display( ooaofooa_S_SS *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1202_Unlink_can_display( ooaofooa_S_SS *, ooaofooa_UC_UCC * );
#define ooaofooa_UC_PIUC_R1203_From_UC_UCC( UC_UCC ) ( &((UC_UCC)->UC_PIUC_R1203) )
void ooaofooa_UC_UCC_R1209_Link_has_children( ooaofooa_UC_UIU *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1209_Unlink_has_children( ooaofooa_UC_UIU *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1211_Link_can_display( ooaofooa_S_SYS *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1211_Unlink_can_display( ooaofooa_S_SYS *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1212_Link_can_display( ooaofooa_CP_CP *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1212_Unlink_can_display( ooaofooa_CP_CP *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1213_Link_can_display( ooaofooa_C_C *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1213_Unlink_can_display( ooaofooa_C_C *, ooaofooa_UC_UCC * );
#define ooaofooa_UC_AIUC_R1214_From_UC_UCC_contains( UC_UCC ) ( &((UC_UCC)->UC_AIUC_R1214_contains) )
/* Note:  UC_UCC->UC_AIUC[R1214] not navigated */
void ooaofooa_UC_UCC_R1402_Link( ooaofooa_EP_SPKG *, ooaofooa_UC_UCC * );
void ooaofooa_UC_UCC_R1402_Unlink( ooaofooa_EP_SPKG *, ooaofooa_UC_UCC * );


#define ooaofooa_UC_UCC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_UC_UCC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_UC_UCC_CLASS_H */


