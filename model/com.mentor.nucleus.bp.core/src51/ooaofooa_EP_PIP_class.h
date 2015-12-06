/*----------------------------------------------------------------------------
 * File:  ooaofooa_EP_PIP_class.h
 *
 * Class:       Package In Package  (EP_PIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_EP_PIP_CLASS_H
#define OOAOFOOA_EP_PIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Package In Package  (EP_PIP)
 */
struct ooaofooa_EP_PIP {

  /* application analysis class attributes */
  Escher_UniqueID_t Parent_Package_ID;  
  Escher_UniqueID_t Child_Package_ID;  

  /* relationship storage */
  ooaofooa_EP_PKG * EP_PKG_R1403_contained_within;
  ooaofooa_EP_PKG * EP_PKG_R1404_links_to_parent_of;
};
void ooaofooa_EP_PIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_EP_PIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_EP_PIP_batch_relate( Escher_iHandle_t );

void ooaofooa_EP_PIP_R1403_Link_contains( ooaofooa_EP_PKG *, ooaofooa_EP_PIP * );
void ooaofooa_EP_PIP_R1403_Unlink_contains( ooaofooa_EP_PKG *, ooaofooa_EP_PIP * );
void ooaofooa_EP_PIP_R1404_Link_linked_to_parent_through( ooaofooa_EP_PKG *, ooaofooa_EP_PIP * );
void ooaofooa_EP_PIP_R1404_Unlink_linked_to_parent_through( ooaofooa_EP_PKG *, ooaofooa_EP_PIP * );


#define ooaofooa_EP_PIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_EP_PIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_EP_PIP_CLASS_H */


