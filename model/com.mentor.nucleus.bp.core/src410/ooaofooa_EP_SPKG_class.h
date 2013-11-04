/*----------------------------------------------------------------------------
 * File:  ooaofooa_EP_SPKG_class.h
 *
 * Class:       Specification Package  (EP_SPKG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_EP_SPKG_CLASS_H
#define OOAOFOOA_EP_SPKG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Specification Package  (EP_SPKG)
 */
struct ooaofooa_EP_SPKG {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Container_Package_ID;  

  /* relationship storage */
  ooaofooa_EP_PKG * EP_PKG_R1400;
  void * R1402_subtype;
  Escher_ClassNumber_t R1402_object_id;
};
void ooaofooa_EP_SPKG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_EP_SPKG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_EP_SPKG_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_EP_SPKG * ooaofooa_EP_SPKG_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_EP_SPKG_R1400_Link_contains( ooaofooa_EP_PKG *, ooaofooa_EP_SPKG * );
void ooaofooa_EP_SPKG_R1400_Unlink_contains( ooaofooa_EP_PKG *, ooaofooa_EP_SPKG * );

/* Accessors to EP_SPKG[R1402] subtypes */
#define ooaofooa_A_A_R1402_From_EP_SPKG( EP_SPKG ) \
   ( (((EP_SPKG)->R1402_object_id) == ooaofooa_A_A_CLASS_NUMBER) ? \
     ((ooaofooa_A_A *)((EP_SPKG)->R1402_subtype)) : (0) )
/* Note:  EP_SPKG->A_A[R1402] not navigated */
#define ooaofooa_COMM_COMM_R1402_From_EP_SPKG( EP_SPKG ) \
   ( (((EP_SPKG)->R1402_object_id) == ooaofooa_COMM_COMM_CLASS_NUMBER) ? \
     ((ooaofooa_COMM_COMM *)((EP_SPKG)->R1402_subtype)) : (0) )
/* Note:  EP_SPKG->COMM_COMM[R1402] not navigated */
#define ooaofooa_CP_CP_R1402_From_EP_SPKG( EP_SPKG ) \
   ( (((EP_SPKG)->R1402_object_id) == ooaofooa_CP_CP_CLASS_NUMBER) ? \
     ((ooaofooa_CP_CP *)((EP_SPKG)->R1402_subtype)) : (0) )
/* Note:  EP_SPKG->CP_CP[R1402] not navigated */
#define ooaofooa_S_DPK_R1402_From_EP_SPKG( EP_SPKG ) \
   ( (((EP_SPKG)->R1402_object_id) == ooaofooa_S_DPK_CLASS_NUMBER) ? \
     ((ooaofooa_S_DPK *)((EP_SPKG)->R1402_subtype)) : (0) )
/* Note:  EP_SPKG->S_DPK[R1402] not navigated */
#define ooaofooa_IP_IP_R1402_From_EP_SPKG( EP_SPKG ) \
   ( (((EP_SPKG)->R1402_object_id) == ooaofooa_IP_IP_CLASS_NUMBER) ? \
     ((ooaofooa_IP_IP *)((EP_SPKG)->R1402_subtype)) : (0) )
/* Note:  EP_SPKG->IP_IP[R1402] not navigated */
#define ooaofooa_UC_UCC_R1402_From_EP_SPKG( EP_SPKG ) \
   ( (((EP_SPKG)->R1402_object_id) == ooaofooa_UC_UCC_CLASS_NUMBER) ? \
     ((ooaofooa_UC_UCC *)((EP_SPKG)->R1402_subtype)) : (0) )
/* Note:  EP_SPKG->UC_UCC[R1402] not navigated */
#define ooaofooa_SQ_S_R1402_From_EP_SPKG( EP_SPKG ) \
   ( (((EP_SPKG)->R1402_object_id) == ooaofooa_SQ_S_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_S *)((EP_SPKG)->R1402_subtype)) : (0) )
/* Note:  EP_SPKG->SQ_S[R1402] not navigated */



#define ooaofooa_EP_SPKG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_EP_SPKG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_EP_SPKG_CLASS_H */


