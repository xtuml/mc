/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CREATE_INSTANCE_class.h
 *
 * Class:       OAL create_instance  (TE_CREATE_INSTANCE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CREATE_INSTANCE_CLASS_H
#define OOAOFOOA_TE_CREATE_INSTANCE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL create_instance  (TE_CREATE_INSTANCE)
 */
struct ooaofooa_TE_CREATE_INSTANCE {

  /* application analysis class attributes */
  Escher_UniqueID_t o_obj;  
  bool is_implicit;  
  c_t * class_name;  
  c_t * var_name;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_CREATE_INSTANCE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CREATE_INSTANCE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_CREATE_INSTANCE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_CREATE_INSTANCE_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_CREATE_INSTANCE * );
void ooaofooa_TE_CREATE_INSTANCE_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_CREATE_INSTANCE * );


#define ooaofooa_TE_CREATE_INSTANCE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CREATE_INSTANCE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CREATE_INSTANCE_CLASS_H */


