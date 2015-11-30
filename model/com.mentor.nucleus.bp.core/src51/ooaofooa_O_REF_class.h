/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_REF_class.h
 *
 * Class:       Attribute Reference in Class  (O_REF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_REF_CLASS_H
#define OOAOFOOA_O_REF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Attribute Reference in Class  (O_REF)
 */
struct ooaofooa_O_REF {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t RObj_ID;  
  i_t ROid_ID;  
  Escher_UniqueID_t RAttr_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  Escher_UniqueID_t ROIR_ID;  
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t ARef_ID;  
  Escher_UniqueID_t PARef_ID;  
  bool Is_Cstrd;  
  c_t * Descrip;  
  c_t * RObj_Name;  
  c_t * RAttr_Name;  
  c_t * Rel_Name;  

  /* relationship storage */
  ooaofooa_O_RATTR * O_RATTR_R108_is_resolved_by;
  ooaofooa_R_RGO * R_RGO_R111_is_used_to_refer_class_by;
  ooaofooa_O_RTIDA * O_RTIDA_R111_refers_across_association_via;
  ooaofooa_O_REF * O_REF_R112_succeeds;
  ooaofooa_O_REF * O_REF_R112_precedes;
};
void ooaofooa_O_REF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_REF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_REF_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_REF * ooaofooa_O_REF_AnyWhere2( Escher_UniqueID_t );

void ooaofooa_O_REF_R108_Link_resolves_( ooaofooa_O_RATTR *, ooaofooa_O_REF * );
void ooaofooa_O_REF_R108_Unlink_resolves_( ooaofooa_O_RATTR *, ooaofooa_O_REF * );
void ooaofooa_O_REF_R111_Link( ooaofooa_R_RGO *, ooaofooa_O_RTIDA *, ooaofooa_O_REF * );
void ooaofooa_O_REF_R111_Unlink( ooaofooa_R_RGO *, ooaofooa_O_RTIDA *, ooaofooa_O_REF * );
      
/*
 * R112 is Simple Reflexive:  0..1:0..1
 *  Formalizing O_REF succeeds participant
 *  Participant O_REF precedes formalizer
 */
/* Navigation phrase:  R112.'succeeds' */
void ooaofooa_O_REF_R112_Link_succeeds( ooaofooa_O_REF *, ooaofooa_O_REF * );
void ooaofooa_O_REF_R112_Unlink_succeeds( ooaofooa_O_REF *, ooaofooa_O_REF * );
/* Navigation phrase:  R112.'precedes' */
void ooaofooa_O_REF_R112_Link_precedes( ooaofooa_O_REF *, ooaofooa_O_REF * );
void ooaofooa_O_REF_R112_Unlink_precedes( ooaofooa_O_REF *, ooaofooa_O_REF * );


#define ooaofooa_O_REF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_REF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_REF_CLASS_H */


