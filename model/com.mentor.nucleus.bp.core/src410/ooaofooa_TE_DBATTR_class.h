/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DBATTR_class.h
 *
 * Class:       Extended Derived Attribute  (TE_DBATTR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_DBATTR_CLASS_H
#define OOAOFOOA_TE_DBATTR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Derived Attribute  (TE_DBATTR)
 */
struct ooaofooa_TE_DBATTR {

  /* application analysis class attributes */
  bool Included;  
  Escher_UniqueID_t AbaID;  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_TE_ABA * TE_ABA_R2010;
  ooaofooa_O_DBATTR * O_DBATTR_R2026;
};
void ooaofooa_TE_DBATTR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_DBATTR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_DBATTR_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_DBATTR_R2010_Link( ooaofooa_TE_ABA *, ooaofooa_TE_DBATTR * );
void ooaofooa_TE_DBATTR_R2010_Unlink( ooaofooa_TE_ABA *, ooaofooa_TE_DBATTR * );
void ooaofooa_TE_DBATTR_R2026_Link( ooaofooa_O_DBATTR *, ooaofooa_TE_DBATTR * );
void ooaofooa_TE_DBATTR_R2026_Unlink( ooaofooa_O_DBATTR *, ooaofooa_TE_DBATTR * );


#define ooaofooa_TE_DBATTR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_DBATTR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_DBATTR_CLASS_H */


