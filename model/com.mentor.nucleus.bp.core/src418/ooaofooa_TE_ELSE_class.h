/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ELSE_class.h
 *
 * Class:       OAL else  (TE_ELSE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_ELSE_CLASS_H
#define OOAOFOOA_TE_ELSE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL else  (TE_ELSE)
 */
struct ooaofooa_TE_ELSE {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_ELSE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_ELSE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_ELSE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_ELSE_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_ELSE * );
void ooaofooa_TE_ELSE_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_ELSE * );


#define ooaofooa_TE_ELSE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_ELSE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_ELSE_CLASS_H */


