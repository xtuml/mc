/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMOAA_class.h
 *
 * Class:       SM to OBJ Attribute Access  (CA_SMOAA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CA_SMOAA_CLASS_H
#define OOAOFOOA_CA_SMOAA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SM to OBJ Attribute Access  (CA_SMOAA)
 */
struct ooaofooa_CA_SMOAA {

  /* application analysis class attributes */
  Escher_UniqueID_t APath_ID;  
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_CA_SMOA * CA_SMOA_R418_is_carried_by_;
  ooaofooa_O_ATTR * O_ATTR_R419_represents_access_of;
};
void ooaofooa_CA_SMOAA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CA_SMOAA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CA_SMOAA_batch_relate( Escher_iHandle_t );

void ooaofooa_CA_SMOAA_R418_Link_carries( ooaofooa_CA_SMOA *, ooaofooa_CA_SMOAA * );
void ooaofooa_CA_SMOAA_R418_Unlink_carries( ooaofooa_CA_SMOA *, ooaofooa_CA_SMOAA * );
void ooaofooa_CA_SMOAA_R419_Link_is_accessed_by( ooaofooa_O_ATTR *, ooaofooa_CA_SMOAA * );
void ooaofooa_CA_SMOAA_R419_Unlink_is_accessed_by( ooaofooa_O_ATTR *, ooaofooa_CA_SMOAA * );


#define ooaofooa_CA_SMOAA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CA_SMOAA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CA_SMOAA_CLASS_H */


