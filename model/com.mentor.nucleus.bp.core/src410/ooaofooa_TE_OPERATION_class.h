/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_OPERATION_class.h
 *
 * Class:       OAL operation  (TE_OPERATION)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_OPERATION_CLASS_H
#define OOAOFOOA_TE_OPERATION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL operation  (TE_OPERATION)
 */
struct ooaofooa_TE_OPERATION {

  /* application analysis class attributes */
  bool instance_based;  
  c_t operation_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t parameters[ESCHER_SYS_MAX_STRING_LEN];  
  c_t var_name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_OPERATION_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_OPERATION_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_OPERATION_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_OPERATION_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_OPERATION * );
void ooaofooa_TE_OPERATION_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_OPERATION * );


#define ooaofooa_TE_OPERATION_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_OPERATION_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_OPERATION_CLASS_H */


