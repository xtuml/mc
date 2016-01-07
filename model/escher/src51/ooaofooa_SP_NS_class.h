/*----------------------------------------------------------------------------
 * File:  ooaofooa_SP_NS_class.h
 *
 * Class:       Named Searchable  (SP_NS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SP_NS_CLASS_H
#define OOAOFOOA_SP_NS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Named Searchable  (SP_NS)
 */
struct ooaofooa_SP_NS {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * searchableValue;  

  /* relationship storage */
  ooaofooa_SP_SE * SP_SE_R9702;
};
void ooaofooa_SP_NS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SP_NS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SP_NS_batch_relate( Escher_iHandle_t );

void ooaofooa_SP_NS_R9702_Link( ooaofooa_SP_SE *, ooaofooa_SP_NS * );
void ooaofooa_SP_NS_R9702_Unlink( ooaofooa_SP_SE *, ooaofooa_SP_NS * );


#define ooaofooa_SP_NS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SP_NS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SP_NS_CLASS_H */


