/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_RTO_class.h
 *
 * Class:       Referred To Class in Assoc  (R_RTO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_RTO_CLASS_H
#define OOAOFOOA_R_RTO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Referred To Class in Assoc  (R_RTO)
 */
struct ooaofooa_R_RTO {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  i_t Oid_ID;  

  /* relationship storage */
  ooaofooa_O_ID * O_ID_R109_is_identified_in_this_association_by;
  Escher_ObjectSet_s O_RTIDA_R110;
  ooaofooa_R_OIR * R_OIR_R203;
  void * R204_subtype;
  Escher_ClassNumber_t R204_object_id;
};
void ooaofooa_R_RTO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_RTO_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_RTO_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_R_RTO * ooaofooa_R_RTO_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t );
ooaofooa_R_RTO * ooaofooa_R_RTO_AnyWhere2( Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t, i_t );

void ooaofooa_R_RTO_R109_Link_identifies_for_this_association_( ooaofooa_O_ID *, ooaofooa_R_RTO * );
void ooaofooa_R_RTO_R109_Unlink_identifies_for_this_association_( ooaofooa_O_ID *, ooaofooa_R_RTO * );
#define ooaofooa_O_RTIDA_R110_From_R_RTO( R_RTO ) ( &((R_RTO)->O_RTIDA_R110) )
void ooaofooa_R_RTO_R203_Link( ooaofooa_R_OIR *, ooaofooa_R_RTO * );
void ooaofooa_R_RTO_R203_Unlink( ooaofooa_R_OIR *, ooaofooa_R_RTO * );

/* Accessors to R_RTO[R204] subtypes */
#define ooaofooa_R_SUPER_R204_From_R_RTO( R_RTO ) \
   ( (((R_RTO)->R204_object_id) == ooaofooa_R_SUPER_CLASS_NUMBER) ? \
     ((ooaofooa_R_SUPER *)((R_RTO)->R204_subtype)) : (0) )
#define ooaofooa_R_PART_R204_From_R_RTO( R_RTO ) \
   ( (((R_RTO)->R204_object_id) == ooaofooa_R_PART_CLASS_NUMBER) ? \
     ((ooaofooa_R_PART *)((R_RTO)->R204_subtype)) : (0) )
#define ooaofooa_R_AONE_R204_From_R_RTO( R_RTO ) \
   ( (((R_RTO)->R204_object_id) == ooaofooa_R_AONE_CLASS_NUMBER) ? \
     ((ooaofooa_R_AONE *)((R_RTO)->R204_subtype)) : (0) )
#define ooaofooa_R_AOTH_R204_From_R_RTO( R_RTO ) \
   ( (((R_RTO)->R204_object_id) == ooaofooa_R_AOTH_CLASS_NUMBER) ? \
     ((ooaofooa_R_AOTH *)((R_RTO)->R204_subtype)) : (0) )



#define ooaofooa_R_RTO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_RTO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_RTO_CLASS_H */


