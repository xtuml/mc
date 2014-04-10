/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_A_class.h
 *
 * Class:       Activity  (A_A)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_A_CLASS_H
#define OOAOFOOA_A_A_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Activity  (A_A)
 */
struct ooaofooa_A_A {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t SS_ID;  
  Escher_UniqueID_t Parent_Package_ID;  
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Component_Package_ID;  
  Escher_UniqueID_t Component_Id;  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R1100;
  Escher_ObjectSet_s A_N_R1101_contained_node;
  Escher_ObjectSet_s A_E_R1102_contained_edge;
  ooaofooa_S_SS * S_SS_R1108;
  ooaofooa_A_AIA * A_AIA_R1109_is_parent_via;
  ooaofooa_A_AIA * A_AIA_R1110;
  Escher_ObjectSet_s A_AP_R1111_group;
  ooaofooa_S_SYS * S_SYS_R1113;
  ooaofooa_CP_CP * CP_CP_R1114;
  ooaofooa_C_C * C_C_R1115;
  ooaofooa_EP_SPKG * EP_SPKG_R1402;
};
void ooaofooa_A_A_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_A_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_A_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_A_A * ooaofooa_A_A_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_A_A_R1100_Link_contains( ooaofooa_S_DOM *, ooaofooa_A_A * );
void ooaofooa_A_A_R1100_Unlink_contains( ooaofooa_S_DOM *, ooaofooa_A_A * );
#define ooaofooa_A_N_R1101_From_A_A_contained_node( A_A ) ( &((A_A)->A_N_R1101_contained_node) )
/* Note:  A_A->A_N[R1101] not navigated */
#define ooaofooa_A_E_R1102_From_A_A_contained_edge( A_A ) ( &((A_A)->A_E_R1102_contained_edge) )
/* Note:  A_A->A_E[R1102] not navigated */
void ooaofooa_A_A_R1108_Link_contains( ooaofooa_S_SS *, ooaofooa_A_A * );
void ooaofooa_A_A_R1108_Unlink_contains( ooaofooa_S_SS *, ooaofooa_A_A * );
void ooaofooa_A_A_R1110_Link_has_children( ooaofooa_A_AIA *, ooaofooa_A_A * );
void ooaofooa_A_A_R1110_Unlink_has_children( ooaofooa_A_AIA *, ooaofooa_A_A * );
#define ooaofooa_A_AP_R1111_From_A_A_group( A_A ) ( &((A_A)->A_AP_R1111_group) )
/* Note:  A_A->A_AP[R1111] not navigated */
void ooaofooa_A_A_R1113_Link_contains( ooaofooa_S_SYS *, ooaofooa_A_A * );
void ooaofooa_A_A_R1113_Unlink_contains( ooaofooa_S_SYS *, ooaofooa_A_A * );
void ooaofooa_A_A_R1114_Link_contains( ooaofooa_CP_CP *, ooaofooa_A_A * );
void ooaofooa_A_A_R1114_Unlink_contains( ooaofooa_CP_CP *, ooaofooa_A_A * );
void ooaofooa_A_A_R1115_Link_contains( ooaofooa_C_C *, ooaofooa_A_A * );
void ooaofooa_A_A_R1115_Unlink_contains( ooaofooa_C_C *, ooaofooa_A_A * );
void ooaofooa_A_A_R1402_Link( ooaofooa_EP_SPKG *, ooaofooa_A_A * );
void ooaofooa_A_A_R1402_Unlink( ooaofooa_EP_SPKG *, ooaofooa_A_A * );


#define ooaofooa_A_A_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_A_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_A_CLASS_H */


