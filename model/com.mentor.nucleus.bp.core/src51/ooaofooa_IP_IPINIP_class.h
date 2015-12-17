/*----------------------------------------------------------------------------
 * File:  ooaofooa_IP_IPINIP_class.h
 *
 * Class:       Interface Package in Interface Package  (IP_IPINIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_IP_IPINIP_CLASS_H
#define OOAOFOOA_IP_IPINIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Package in Interface Package  (IP_IPINIP)
 */
struct ooaofooa_IP_IPINIP {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_IP_IP * IP_IP_R4300_can_be_shown_in;
  Escher_ObjectSet_s IP_IP_R4301_has_children;
};
void ooaofooa_IP_IPINIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_IP_IPINIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_IP_IPINIP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_IP_IPINIP * ooaofooa_IP_IPINIP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_IP_IPINIP_R4300_Link_may_contain( ooaofooa_IP_IP *, ooaofooa_IP_IPINIP * );
void ooaofooa_IP_IPINIP_R4300_Unlink_may_contain( ooaofooa_IP_IP *, ooaofooa_IP_IPINIP * );
#define ooaofooa_IP_IP_R4301_From_IP_IPINIP_has_children( IP_IPINIP ) ( &((IP_IPINIP)->IP_IP_R4301_has_children) )
/* Note:  IP_IPINIP->IP_IP[R4301] not navigated */


#define ooaofooa_IP_IPINIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_IP_IPINIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_IP_IPINIP_CLASS_H */


