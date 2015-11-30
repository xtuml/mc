/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CONTINUE_class.h
 *
 * Class:       OAL continue  (TE_CONTINUE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CONTINUE_CLASS_H
#define OOAOFOOA_TE_CONTINUE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL continue  (TE_CONTINUE)
 */
struct ooaofooa_TE_CONTINUE {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_CONTINUE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CONTINUE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_CONTINUE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_CONTINUE_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_CONTINUE * );
void ooaofooa_TE_CONTINUE_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_CONTINUE * );


#define ooaofooa_TE_CONTINUE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CONTINUE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CONTINUE_CLASS_H */


