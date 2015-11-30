/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ELIF_class.h
 *
 * Class:       OAL elif  (TE_ELIF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_ELIF_CLASS_H
#define OOAOFOOA_TE_ELIF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL elif  (TE_ELIF)
 */
struct ooaofooa_TE_ELIF {

  /* application analysis class attributes */
  c_t condition[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_ELIF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_ELIF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_ELIF_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_ELIF_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_ELIF * );
void ooaofooa_TE_ELIF_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_ELIF * );


#define ooaofooa_TE_ELIF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_ELIF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_ELIF_CLASS_H */


