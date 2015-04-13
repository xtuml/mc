/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_BLK_class.h
 *
 * Class:       Extended Block  (TE_BLK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_BLK_CLASS_H
#define OOAOFOOA_TE_BLK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Block  (TE_BLK)
 */
struct ooaofooa_TE_BLK {

  /* application analysis class attributes */
  Escher_UniqueID_t Block_ID;  
  Escher_UniqueID_t first_Statement_ID;  
  c_t * declaration;  
  c_t * deallocation;  
  i_t depth;  
  c_t * indentation;  
  Escher_UniqueID_t AbaID;  

  /* relationship storage */
  ooaofooa_TE_ABA * TE_ABA_R2011;
  ooaofooa_TE_SMT * TE_SMT_R2014_has_first;
  ooaofooa_TE_SMT * TE_SMT_R2015;
  ooaofooa_ACT_BLK * ACT_BLK_R2016;
  Escher_ObjectSet_s TE_SMT_R2078_has;
};
void ooaofooa_TE_BLK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_BLK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_BLK_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_BLK * ooaofooa_TE_BLK_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_BLK_R2011_Link_has_root( ooaofooa_TE_ABA *, ooaofooa_TE_BLK * );
void ooaofooa_TE_BLK_R2011_Unlink_has_root( ooaofooa_TE_ABA *, ooaofooa_TE_BLK * );
void ooaofooa_TE_BLK_R2014_Link( ooaofooa_TE_SMT *, ooaofooa_TE_BLK * );
void ooaofooa_TE_BLK_R2014_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_BLK * );
void ooaofooa_TE_BLK_R2016_Link( ooaofooa_ACT_BLK *, ooaofooa_TE_BLK * );
void ooaofooa_TE_BLK_R2016_Unlink( ooaofooa_ACT_BLK *, ooaofooa_TE_BLK * );
#define ooaofooa_TE_SMT_R2078_From_TE_BLK_has( TE_BLK ) ( &((TE_BLK)->TE_SMT_R2078_has) )


#define ooaofooa_TE_BLK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_BLK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_BLK_CLASS_H */


