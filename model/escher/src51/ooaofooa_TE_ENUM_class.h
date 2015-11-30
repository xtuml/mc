/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ENUM_class.h
 *
 * Class:       Extended Enumerator  (TE_ENUM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_ENUM_CLASS_H
#define OOAOFOOA_TE_ENUM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Enumerator  (TE_ENUM)
 */
struct ooaofooa_TE_ENUM {

  /* application analysis class attributes */
  c_t * Name;  
  c_t * Value;  
  i_t Order;  
  c_t * GeneratedName;  
  Escher_UniqueID_t Enum_ID;  

  /* relationship storage */
  ooaofooa_S_ENUM * S_ENUM_R2027;
};
void ooaofooa_TE_ENUM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_ENUM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_ENUM_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_ENUM_R2027_Link( ooaofooa_S_ENUM *, ooaofooa_TE_ENUM * );
void ooaofooa_TE_ENUM_R2027_Unlink( ooaofooa_S_ENUM *, ooaofooa_TE_ENUM * );


#define ooaofooa_TE_ENUM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_ENUM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_ENUM_CLASS_H */


