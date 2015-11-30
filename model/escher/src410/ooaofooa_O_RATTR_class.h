/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_RATTR_class.h
 *
 * Class:       Referential Attribute  (O_RATTR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_RATTR_CLASS_H
#define OOAOFOOA_O_RATTR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Referential Attribute  (O_RATTR)
 */
struct ooaofooa_O_RATTR {

  /* application analysis class attributes */
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t BAttr_ID;  
  Escher_UniqueID_t BObj_ID;  
  i_t Ref_Mode;  
  c_t BaseAttrName[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t recorderId;  

  /* relationship storage */
  ooaofooa_O_ATTR * O_ATTR_R106;
  Escher_ObjectSet_s O_REF_R108_resolves_;
  ooaofooa_O_BATTR * O_BATTR_R113_navigates_back_to;
  ooaofooa_O_RAVR * O_RAVR_R119;
};
void ooaofooa_O_RATTR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_RATTR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_RATTR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_RATTR * ooaofooa_O_RATTR_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_O_RATTR_R106_Link( ooaofooa_O_ATTR *, ooaofooa_O_RATTR * );
void ooaofooa_O_RATTR_R106_Unlink( ooaofooa_O_ATTR *, ooaofooa_O_RATTR * );
#define ooaofooa_O_REF_R108_From_O_RATTR_resolves_( O_RATTR ) ( &((O_RATTR)->O_REF_R108_resolves_) )
/* Note:  O_RATTR->O_REF[R108] not navigated */
void ooaofooa_O_RATTR_R113_Link_can_be_the_base_of( ooaofooa_O_BATTR *, ooaofooa_O_RATTR * );
void ooaofooa_O_RATTR_R113_Unlink_can_be_the_base_of( ooaofooa_O_BATTR *, ooaofooa_O_RATTR * );
void ooaofooa_O_RATTR_R119_Link_visited( ooaofooa_O_RAVR *, ooaofooa_O_RATTR * );
void ooaofooa_O_RATTR_R119_Unlink_visited( ooaofooa_O_RAVR *, ooaofooa_O_RATTR * );


#define ooaofooa_O_RATTR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_RATTR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_RATTR_CLASS_H */


