/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_FPK_class.h
 *
 * Class:       Function Package  (S_FPK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_FPK_CLASS_H
#define OOAOFOOA_S_FPK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Package  (S_FPK)
 */
struct ooaofooa_S_FPK {

  /* application analysis class attributes */
  Escher_UniqueID_t FunPack_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t Parent_FunPack_ID;  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R29_is_contained_in;
  ooaofooa_S_FPIP * S_FPIP_R30_is_parent_to_other_packages_via;
  Escher_ObjectSet_s S_FIP_R31;
  ooaofooa_S_FPIP * S_FPIP_R32_is_child_via;
  ooaofooa_PL_FPID * PL_FPID_R301;
  Escher_ObjectSet_s SQ_FPP_R932_represents_participant_of;
};
void ooaofooa_S_FPK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_FPK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_FPK_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_FPK * ooaofooa_S_FPK_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_FPK_R29_Link_contains( ooaofooa_S_DOM *, ooaofooa_S_FPK * );
void ooaofooa_S_FPK_R29_Unlink_contains( ooaofooa_S_DOM *, ooaofooa_S_FPK * );
#define ooaofooa_S_FIP_R31_From_S_FPK( S_FPK ) ( &((S_FPK)->S_FIP_R31) )
void ooaofooa_S_FPK_R32_Link_contains( ooaofooa_S_FPIP *, ooaofooa_S_FPK * );
void ooaofooa_S_FPK_R32_Unlink_contains( ooaofooa_S_FPIP *, ooaofooa_S_FPK * );
#define ooaofooa_SQ_FPP_R932_From_S_FPK_represents_participant_of( S_FPK ) ( &((S_FPK)->SQ_FPP_R932_represents_participant_of) )
/* Note:  S_FPK->SQ_FPP[R932] not navigated */


#define ooaofooa_S_FPK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_FPK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_FPK_CLASS_H */


