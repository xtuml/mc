/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_RETURN_class.h
 *
 * Class:       OAL return  (TE_RETURN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_RETURN_CLASS_H
#define OOAOFOOA_TE_RETURN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL return  (TE_RETURN)
 */
struct ooaofooa_TE_RETURN {

  /* application analysis class attributes */
  c_t * value;  
  c_t * cast1;  
  c_t * cast2;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_RETURN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_RETURN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_RETURN_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_RETURN_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_RETURN * );
void ooaofooa_TE_RETURN_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_RETURN * );


#define ooaofooa_TE_RETURN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_RETURN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_RETURN_CLASS_H */


