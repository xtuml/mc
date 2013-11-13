/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SS_class.h
 *
 * Class:       Subsystem  (S_SS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_SS_CLASS_H
#define OOAOFOOA_S_SS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Subsystem  (S_SS)
 */
struct ooaofooa_S_SS {

  /* application analysis class attributes */
  Escher_UniqueID_t SS_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t Prefix[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Num_Rng;  
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t Config_ID;  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R1_is_first_level_of_partitioning_for;
  Escher_ObjectSet_s O_OBJ_R2_is_decomposed_into;
  Escher_ObjectSet_s O_IOBJ_R3_can_contain_classs_from_other_subsystems_via;
  Escher_ObjectSet_s R_REL_R4_contains;
  Escher_ObjectSet_s CA_COMM_R5_contains;
  Escher_ObjectSet_s CA_ACC_R6_contains;
  Escher_ObjectSet_s S_EEM_R7_contains;
  Escher_ObjectSet_s S_SIS_R41_is_parent_to_other_packages_via;
  ooaofooa_S_SIS * S_SIS_R42_is_child_via;
  ooaofooa_S_SID * S_SID_R43;
  Escher_ObjectSet_s SQ_S_R914_can_show;
  Escher_ObjectSet_s A_A_R1108_contains;
  Escher_ObjectSet_s COMM_COMM_R1131_can_display;
  Escher_ObjectSet_s UC_UCC_R1202_can_display;
};
void ooaofooa_S_SS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_SS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_SS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_SS * ooaofooa_S_SS_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_SS_R1_Link_is_partitioned_into( ooaofooa_S_DOM *, ooaofooa_S_SS * );
void ooaofooa_S_SS_R1_Unlink_is_partitioned_into( ooaofooa_S_DOM *, ooaofooa_S_SS * );
#define ooaofooa_O_OBJ_R2_From_S_SS_is_decomposed_into( S_SS ) ( &((S_SS)->O_OBJ_R2_is_decomposed_into) )
#define ooaofooa_O_IOBJ_R3_From_S_SS_can_contain_classs_from_other_subsystems_via( S_SS ) ( &((S_SS)->O_IOBJ_R3_can_contain_classs_from_other_subsystems_via) )
/* Note:  S_SS->O_IOBJ[R3] not navigated */
#define ooaofooa_R_REL_R4_From_S_SS_contains( S_SS ) ( &((S_SS)->R_REL_R4_contains) )
/* Note:  S_SS->R_REL[R4] not navigated */
#define ooaofooa_CA_COMM_R5_From_S_SS_contains( S_SS ) ( &((S_SS)->CA_COMM_R5_contains) )
/* Note:  S_SS->CA_COMM[R5] not navigated */
#define ooaofooa_CA_ACC_R6_From_S_SS_contains( S_SS ) ( &((S_SS)->CA_ACC_R6_contains) )
/* Note:  S_SS->CA_ACC[R6] not navigated */
#define ooaofooa_S_EEM_R7_From_S_SS_contains( S_SS ) ( &((S_SS)->S_EEM_R7_contains) )
/* Note:  S_SS->S_EEM[R7] not navigated */
#define ooaofooa_S_SIS_R41_From_S_SS_is_parent_to_other_packages_via( S_SS ) ( &((S_SS)->S_SIS_R41_is_parent_to_other_packages_via) )
/* Note:  S_SS->S_SIS[R41] not navigated */
#define ooaofooa_SQ_S_R914_From_S_SS_can_show( S_SS ) ( &((S_SS)->SQ_S_R914_can_show) )
/* Note:  S_SS->SQ_S[R914] not navigated */
#define ooaofooa_A_A_R1108_From_S_SS_contains( S_SS ) ( &((S_SS)->A_A_R1108_contains) )
/* Note:  S_SS->A_A[R1108] not navigated */
#define ooaofooa_COMM_COMM_R1131_From_S_SS_can_display( S_SS ) ( &((S_SS)->COMM_COMM_R1131_can_display) )
/* Note:  S_SS->COMM_COMM[R1131] not navigated */
#define ooaofooa_UC_UCC_R1202_From_S_SS_can_display( S_SS ) ( &((S_SS)->UC_UCC_R1202_can_display) )
/* Note:  S_SS->UC_UCC[R1202] not navigated */


#define ooaofooa_S_SS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_SS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_SS_CLASS_H */


