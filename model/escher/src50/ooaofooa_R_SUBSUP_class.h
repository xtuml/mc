/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_SUBSUP_class.h
 *
 * Class:       Subtype Supertype Association  (R_SUBSUP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_SUBSUP_CLASS_H
#define OOAOFOOA_R_SUBSUP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Subtype Supertype Association  (R_SUBSUP)
 */
struct ooaofooa_R_SUBSUP {

  /* application analysis class attributes */
  Escher_UniqueID_t Rel_ID;  

  /* relationship storage */
  ooaofooa_R_REL * R_REL_R206;
  ooaofooa_R_SUPER * R_SUPER_R212_relates;
  Escher_ObjectSet_s R_SUB_R213_relates;
};
void ooaofooa_R_SUBSUP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_SUBSUP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_SUBSUP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_R_SUBSUP * ooaofooa_R_SUBSUP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_R_SUBSUP_R206_Link( ooaofooa_R_REL *, ooaofooa_R_SUBSUP * );
void ooaofooa_R_SUBSUP_R206_Unlink( ooaofooa_R_REL *, ooaofooa_R_SUBSUP * );
#define ooaofooa_R_SUB_R213_From_R_SUBSUP_relates( R_SUBSUP ) ( &((R_SUBSUP)->R_SUB_R213_relates) )


#define ooaofooa_R_SUBSUP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_SUBSUP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_SUBSUP_CLASS_H */


