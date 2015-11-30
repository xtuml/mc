/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_BREAK_class.h
 *
 * Class:       OAL break  (TE_BREAK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_BREAK_CLASS_H
#define OOAOFOOA_TE_BREAK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL break  (TE_BREAK)
 */
struct ooaofooa_TE_BREAK {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_BREAK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_BREAK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_BREAK_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_BREAK_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_BREAK * );
void ooaofooa_TE_BREAK_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_BREAK * );


#define ooaofooa_TE_BREAK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_BREAK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_BREAK_CLASS_H */


