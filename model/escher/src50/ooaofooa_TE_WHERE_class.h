/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_WHERE_class.h
 *
 * Class:       Extended Where  (TE_WHERE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_WHERE_CLASS_H
#define OOAOFOOA_TE_WHERE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Where  (TE_WHERE)
 */
struct ooaofooa_TE_WHERE {

  /* application analysis class attributes */
  bool WhereKey;  
  c_t * select_any_where;  
  i_t Oid_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_O_ID * O_ID_R2032;
};
void ooaofooa_TE_WHERE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_WHERE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_WHERE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_WHERE_R2032_Link( ooaofooa_O_ID *, ooaofooa_TE_WHERE * );
void ooaofooa_TE_WHERE_R2032_Unlink( ooaofooa_O_ID *, ooaofooa_TE_WHERE * );


#define ooaofooa_TE_WHERE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_WHERE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_WHERE_CLASS_H */


