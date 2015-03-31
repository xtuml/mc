/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CONTROL_class.h
 *
 * Class:       OAL control  (TE_CONTROL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CONTROL_CLASS_H
#define OOAOFOOA_TE_CONTROL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL control  (TE_CONTROL)
 */
struct ooaofooa_TE_CONTROL {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_CONTROL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CONTROL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_CONTROL_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_CONTROL_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_CONTROL * );
void ooaofooa_TE_CONTROL_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_CONTROL * );


#define ooaofooa_TE_CONTROL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CONTROL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CONTROL_CLASS_H */


