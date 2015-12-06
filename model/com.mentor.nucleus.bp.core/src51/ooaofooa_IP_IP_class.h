/*----------------------------------------------------------------------------
 * File:  ooaofooa_IP_IP_class.h
 *
 * Class:       Interface Package  (IP_IP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_IP_IP_CLASS_H
#define OOAOFOOA_IP_IP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Package  (IP_IP)
 */
struct ooaofooa_IP_IP {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Parent_Package_ID;  
  Escher_UniqueID_t Direct_Sys_ID;  
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Component_Id;  
  Escher_UniqueID_t Component_Package_ID;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_EP_SPKG * EP_SPKG_R1402;
  ooaofooa_C_C * C_C_R4206_may_be_contained_in;
  ooaofooa_IP_IPINIP * IP_IPINIP_R4300_may_contain;
  ooaofooa_IP_IPINIP * IP_IPINIP_R4301_may_be_shown_in;
  ooaofooa_S_SYS * S_SYS_R4302_may_be_shown_in;
  Escher_ObjectSet_s C_I_R4303_contains;
  ooaofooa_S_SYS * S_SYS_R4304;
  ooaofooa_CP_CP * CP_CP_R4607_may_exist_in;
};
void ooaofooa_IP_IP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_IP_IP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_IP_IP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_IP_IP * ooaofooa_IP_IP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_IP_IP_R1402_Link( ooaofooa_EP_SPKG *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R1402_Unlink( ooaofooa_EP_SPKG *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4206_Link_may_contain( ooaofooa_C_C *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4206_Unlink_may_contain( ooaofooa_C_C *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4301_Link_has_children( ooaofooa_IP_IPINIP *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4301_Unlink_has_children( ooaofooa_IP_IPINIP *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4302_Link_can_show( ooaofooa_S_SYS *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4302_Unlink_can_show( ooaofooa_S_SYS *, ooaofooa_IP_IP * );
#define ooaofooa_C_I_R4303_From_IP_IP_contains( IP_IP ) ( &((IP_IP)->C_I_R4303_contains) )
/* Note:  IP_IP->C_I[R4303] not navigated */
void ooaofooa_IP_IP_R4304_Link( ooaofooa_S_SYS *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4304_Unlink( ooaofooa_S_SYS *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4607_Link_may_contain( ooaofooa_CP_CP *, ooaofooa_IP_IP * );
void ooaofooa_IP_IP_R4607_Unlink_may_contain( ooaofooa_CP_CP *, ooaofooa_IP_IP * );


#define ooaofooa_IP_IP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_IP_IP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_IP_IP_CLASS_H */


