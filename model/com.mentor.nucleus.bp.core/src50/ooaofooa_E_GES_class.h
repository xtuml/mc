/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GES_class.h
 *
 * Class:       Generate Event Statement  (E_GES)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_GES_CLASS_H
#define OOAOFOOA_E_GES_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Generate Event Statement  (E_GES)
 */
struct ooaofooa_E_GES {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_E_ESS * E_ESS_R701;
  void * R703_subtype;
  Escher_ClassNumber_t R703_object_id;
};
void ooaofooa_E_GES_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_GES_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_GES_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_E_GES * ooaofooa_E_GES_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_E_GES_R701_Link( ooaofooa_E_ESS *, ooaofooa_E_GES * );
void ooaofooa_E_GES_R701_Unlink( ooaofooa_E_ESS *, ooaofooa_E_GES * );

/* Accessors to E_GES[R703] subtypes */
#define ooaofooa_E_GEE_R703_From_E_GES( E_GES ) \
   ( (((E_GES)->R703_object_id) == ooaofooa_E_GEE_CLASS_NUMBER) ? \
     ((ooaofooa_E_GEE *)((E_GES)->R703_subtype)) : (0) )
#define ooaofooa_E_GSME_R703_From_E_GES( E_GES ) \
   ( (((E_GES)->R703_object_id) == ooaofooa_E_GSME_CLASS_NUMBER) ? \
     ((ooaofooa_E_GSME *)((E_GES)->R703_subtype)) : (0) )



#define ooaofooa_E_GES_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_GES_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_GES_CLASS_H */


