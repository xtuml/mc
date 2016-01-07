/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_OIR_class.h
 *
 * Class:       Class In Association  (R_OIR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_OIR_CLASS_H
#define OOAOFOOA_R_OIR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class In Association  (R_OIR)
 */
struct ooaofooa_R_OIR {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  Escher_UniqueID_t IObj_ID;  

  /* relationship storage */
  ooaofooa_R_REL * R_REL_R201_has_instance_associations_abstracted;
  ooaofooa_O_OBJ * O_OBJ_R201_abstracts_association_between_instances_of;
  ooaofooa_O_IOBJ * O_IOBJ_R202_may_be_represented_by;
  void * R203_subtype;
  Escher_ClassNumber_t R203_object_id;
  ooaofooa_TE_OIR * TE_OIR_R2035;
};
void ooaofooa_R_OIR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_OIR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_OIR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_R_OIR * ooaofooa_R_OIR_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_R_OIR_R201_Link( ooaofooa_R_REL *, ooaofooa_O_OBJ *, ooaofooa_R_OIR * );
void ooaofooa_R_OIR_R201_Unlink( ooaofooa_R_REL *, ooaofooa_O_OBJ *, ooaofooa_R_OIR * );
void ooaofooa_R_OIR_R202_Link_is_used_for_spanning_associations_as( ooaofooa_O_IOBJ *, ooaofooa_R_OIR * );
void ooaofooa_R_OIR_R202_Unlink_is_used_for_spanning_associations_as( ooaofooa_O_IOBJ *, ooaofooa_R_OIR * );

/* Accessors to R_OIR[R203] subtypes */
#define ooaofooa_R_RTO_R203_From_R_OIR( R_OIR ) \
   ( (((R_OIR)->R203_object_id) == ooaofooa_R_RTO_CLASS_NUMBER) ? \
     ((ooaofooa_R_RTO *)((R_OIR)->R203_subtype)) : (0) )
#define ooaofooa_R_RGO_R203_From_R_OIR( R_OIR ) \
   ( (((R_OIR)->R203_object_id) == ooaofooa_R_RGO_CLASS_NUMBER) ? \
     ((ooaofooa_R_RGO *)((R_OIR)->R203_subtype)) : (0) )
#define ooaofooa_R_CONE_R203_From_R_OIR( R_OIR ) \
   ( (((R_OIR)->R203_object_id) == ooaofooa_R_CONE_CLASS_NUMBER) ? \
     ((ooaofooa_R_CONE *)((R_OIR)->R203_subtype)) : (0) )
#define ooaofooa_R_COTH_R203_From_R_OIR( R_OIR ) \
   ( (((R_OIR)->R203_object_id) == ooaofooa_R_COTH_CLASS_NUMBER) ? \
     ((ooaofooa_R_COTH *)((R_OIR)->R203_subtype)) : (0) )



#define ooaofooa_R_OIR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_OIR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_OIR_CLASS_H */


