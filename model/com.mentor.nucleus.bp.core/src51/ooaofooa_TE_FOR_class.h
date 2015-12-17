/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_FOR_class.h
 *
 * Class:       OAL for  (TE_FOR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_FOR_CLASS_H
#define OOAOFOOA_TE_FOR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL for  (TE_FOR)
 */
struct ooaofooa_TE_FOR {

  /* application analysis class attributes */
  bool isImplicit;  
  c_t * class_name;  
  c_t * loop_variable;  
  c_t * set_variable;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_FOR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_FOR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_FOR_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_FOR_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_FOR * );
void ooaofooa_TE_FOR_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_FOR * );


#define ooaofooa_TE_FOR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_FOR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_FOR_CLASS_H */


