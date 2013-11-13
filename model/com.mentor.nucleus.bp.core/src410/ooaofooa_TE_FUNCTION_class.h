/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_FUNCTION_class.h
 *
 * Class:       OAL function  (TE_FUNCTION)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_FUNCTION_CLASS_H
#define OOAOFOOA_TE_FUNCTION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL function  (TE_FUNCTION)
 */
struct ooaofooa_TE_FUNCTION {

  /* application analysis class attributes */
  c_t method[ESCHER_SYS_MAX_STRING_LEN];  
  c_t parameters[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_FUNCTION_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_FUNCTION_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_FUNCTION_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_FUNCTION_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_FUNCTION * );
void ooaofooa_TE_FUNCTION_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_FUNCTION * );


#define ooaofooa_TE_FUNCTION_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_FUNCTION_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_FUNCTION_CLASS_H */


