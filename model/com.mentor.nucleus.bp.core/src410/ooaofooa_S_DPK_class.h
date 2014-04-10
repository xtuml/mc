/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DPK_class.h
 *
 * Class:       Data Type Package  (S_DPK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_DPK_CLASS_H
#define OOAOFOOA_S_DPK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Data Type Package  (S_DPK)
 */
struct ooaofooa_S_DPK {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t Parent_Package_ID;  

  /* relationship storage */
  ooaofooa_S_DPIP * S_DPIP_R37_is_parent_to_other_packages_via;
  ooaofooa_S_DPIP * S_DPIP_R38_is_child_via;
  Escher_ObjectSet_s S_DIP_R39;
  ooaofooa_S_DOM * S_DOM_R40_is_contained_in;
  ooaofooa_EP_SPKG * EP_SPKG_R1402;
  Escher_ObjectSet_s CNST_CIP_R1506;
  ooaofooa_SLD_SDP * SLD_SDP_R4400;
  Escher_ObjectSet_s SLD_SDINP_R4401;
  Escher_ObjectSet_s SLD_SCINP_R4403;
};
void ooaofooa_S_DPK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_DPK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_DPK_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_DPK * ooaofooa_S_DPK_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_DPK_R38_Link_contains( ooaofooa_S_DPIP *, ooaofooa_S_DPK * );
void ooaofooa_S_DPK_R38_Unlink_contains( ooaofooa_S_DPIP *, ooaofooa_S_DPK * );
#define ooaofooa_S_DIP_R39_From_S_DPK( S_DPK ) ( &((S_DPK)->S_DIP_R39) )
void ooaofooa_S_DPK_R40_Link_contains( ooaofooa_S_DOM *, ooaofooa_S_DPK * );
void ooaofooa_S_DPK_R40_Unlink_contains( ooaofooa_S_DOM *, ooaofooa_S_DPK * );
void ooaofooa_S_DPK_R1402_Link( ooaofooa_EP_SPKG *, ooaofooa_S_DPK * );
void ooaofooa_S_DPK_R1402_Unlink( ooaofooa_EP_SPKG *, ooaofooa_S_DPK * );
#define ooaofooa_CNST_CIP_R1506_From_S_DPK( S_DPK ) ( &((S_DPK)->CNST_CIP_R1506) )
#define ooaofooa_SLD_SDINP_R4401_From_S_DPK( S_DPK ) ( &((S_DPK)->SLD_SDINP_R4401) )
#define ooaofooa_SLD_SCINP_R4403_From_S_DPK( S_DPK ) ( &((S_DPK)->SLD_SCINP_R4403) )


#define ooaofooa_S_DPK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_DPK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_DPK_CLASS_H */


