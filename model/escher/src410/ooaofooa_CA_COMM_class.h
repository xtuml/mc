/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_COMM_class.h
 *
 * Class:       Communication Path  (CA_COMM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_COMM_CLASS_H
#define OOAOFOOA_CA_COMM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Communication Path  (CA_COMM)
 */
struct ooaofooa_CA_COMM {

  /* application analysis class attributes */
  Escher_UniqueID_t CPath_ID;  
  Escher_UniqueID_t SS_ID;  

  /* relationship storage */
  ooaofooa_S_SS * S_SS_R5_abstracts_asynchronous_communication_between_classes_in;
  void * R401_subtype;
  Escher_ClassNumber_t R401_object_id;
};
void ooaofooa_CA_COMM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_COMM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_COMM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CA_COMM * ooaofooa_CA_COMM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CA_COMM_R5_Link_contains( ooaofooa_S_SS *, ooaofooa_CA_COMM * );
void ooaofooa_CA_COMM_R5_Unlink_contains( ooaofooa_S_SS *, ooaofooa_CA_COMM * );

/* Accessors to CA_COMM[R401] subtypes */
#define ooaofooa_CA_EESMC_R401_From_CA_COMM( CA_COMM ) \
   ( (((CA_COMM)->R401_object_id) == ooaofooa_CA_EESMC_CLASS_NUMBER) ? \
     ((ooaofooa_CA_EESMC *)((CA_COMM)->R401_subtype)) : (0) )
/* Note:  CA_COMM->CA_EESMC[R401] not navigated */
#define ooaofooa_CA_SMEEC_R401_From_CA_COMM( CA_COMM ) \
   ( (((CA_COMM)->R401_object_id) == ooaofooa_CA_SMEEC_CLASS_NUMBER) ? \
     ((ooaofooa_CA_SMEEC *)((CA_COMM)->R401_subtype)) : (0) )
/* Note:  CA_COMM->CA_SMEEC[R401] not navigated */
#define ooaofooa_CA_SMSMC_R401_From_CA_COMM( CA_COMM ) \
   ( (((CA_COMM)->R401_object_id) == ooaofooa_CA_SMSMC_CLASS_NUMBER) ? \
     ((ooaofooa_CA_SMSMC *)((CA_COMM)->R401_subtype)) : (0) )
/* Note:  CA_COMM->CA_SMSMC[R401] not navigated */



#define ooaofooa_CA_COMM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_COMM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_COMM_CLASS_H */


