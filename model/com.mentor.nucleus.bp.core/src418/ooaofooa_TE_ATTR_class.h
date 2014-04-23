/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ATTR_class.h
 *
 * Class:       Extended Attribute  (TE_ATTR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_ATTR_CLASS_H
#define OOAOFOOA_TE_ATTR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Attribute  (TE_ATTR)
 */
struct ooaofooa_TE_ATTR {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  bool Used;  
  bool read;  
  bool written;  
  bool Included;  
  i_t Order;  
  c_t * ParamBuffer;  
  c_t * Name;  
  c_t * GeneratedName;  
  c_t * DefaultValue;  
  bool translate;  
  i_t dimensions;  
  Escher_UniqueID_t te_dimID;  
  c_t * array_spec;  
  c_t * te_classGeneratedName;  
  c_t * GeneratedType;  
  Escher_UniqueID_t prevID;  
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_O_ATTR * O_ATTR_R2033;
  ooaofooa_TE_DIM * TE_DIM_R2055_has_first;
  ooaofooa_TE_CLASS * TE_CLASS_R2061_is_characteristic_of;
  ooaofooa_TE_ATTR * TE_ATTR_R2087_succeeds;
  ooaofooa_TE_ATTR * TE_ATTR_R2087_precedes;
};
void ooaofooa_TE_ATTR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_ATTR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_ATTR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_ATTR * ooaofooa_TE_ATTR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_ATTR_R2033_Link( ooaofooa_O_ATTR *, ooaofooa_TE_ATTR * );
void ooaofooa_TE_ATTR_R2033_Unlink( ooaofooa_O_ATTR *, ooaofooa_TE_ATTR * );
void ooaofooa_TE_ATTR_R2055_Link_diments( ooaofooa_TE_DIM *, ooaofooa_TE_ATTR * );
void ooaofooa_TE_ATTR_R2055_Unlink_diments( ooaofooa_TE_DIM *, ooaofooa_TE_ATTR * );
void ooaofooa_TE_ATTR_R2061_Link( ooaofooa_TE_CLASS *, ooaofooa_TE_ATTR * );
void ooaofooa_TE_ATTR_R2061_Unlink( ooaofooa_TE_CLASS *, ooaofooa_TE_ATTR * );
      
/*
 * R2087 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_ATTR succeeds participant
 *  Participant TE_ATTR precedes formalizer
 */
/* Navigation phrase:  R2087.'succeeds' */
void ooaofooa_TE_ATTR_R2087_Link_succeeds( ooaofooa_TE_ATTR *, ooaofooa_TE_ATTR * );
void ooaofooa_TE_ATTR_R2087_Unlink_succeeds( ooaofooa_TE_ATTR *, ooaofooa_TE_ATTR * );
/* Navigation phrase:  R2087.'precedes' */
void ooaofooa_TE_ATTR_R2087_Link_precedes( ooaofooa_TE_ATTR *, ooaofooa_TE_ATTR * );
void ooaofooa_TE_ATTR_R2087_Unlink_precedes( ooaofooa_TE_ATTR *, ooaofooa_TE_ATTR * );


#define ooaofooa_TE_ATTR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_ATTR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_ATTR_CLASS_H */


