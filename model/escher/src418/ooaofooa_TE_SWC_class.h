/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SWC_class.h
 *
 * Class:       Special Where Clause  (TE_SWC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SWC_CLASS_H
#define OOAOFOOA_TE_SWC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Special Where Clause  (TE_SWC)
 */
struct ooaofooa_TE_SWC {

  /* application analysis class attributes */
  c_t * Obj_Kl;  
  c_t * Where_Spec;  
  c_t * Key;  
  bool Ret_Val;  
  bool Built_In;  
  i_t Oid_ID;  
  c_t * GeneratedName;  

  /* relationship storage */
  ooaofooa_TE_CLASS * TE_CLASS_R2001;
};
void ooaofooa_TE_SWC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SWC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SWC_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_SWC_R2001_Link( ooaofooa_TE_CLASS *, ooaofooa_TE_SWC * );
void ooaofooa_TE_SWC_R2001_Unlink( ooaofooa_TE_CLASS *, ooaofooa_TE_SWC * );


#define ooaofooa_TE_SWC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SWC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SWC_CLASS_H */


