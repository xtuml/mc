/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ASSIGN_class.h
 *
 * Class:       OAL assign  (TE_ASSIGN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_ASSIGN_CLASS_H
#define OOAOFOOA_TE_ASSIGN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL assign  (TE_ASSIGN)
 */
struct ooaofooa_TE_ASSIGN {

  /* application analysis class attributes */
  bool isImplicit;  
  i_t dimensions;  
  c_t * array_spec;  
  c_t * left_declaration;  
  i_t Core_Typ;  
  c_t * lval;  
  c_t * rval;  
  Escher_UniqueID_t Statement_ID;  
  i_t rval_dimensions;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_ASSIGN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_ASSIGN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_ASSIGN_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_ASSIGN_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_ASSIGN * );
void ooaofooa_TE_ASSIGN_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_ASSIGN * );


#define ooaofooa_TE_ASSIGN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_ASSIGN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_ASSIGN_CLASS_H */


