/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_CR_class.h
 *
 * Class:       Create  (ACT_CR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_CR_CLASS_H
#define OOAOFOOA_ACT_CR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Create  (ACT_CR)
 */
struct ooaofooa_ACT_CR {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Var_ID;  
  bool is_implicit;  
  Escher_UniqueID_t Obj_ID;  
  i_t modelClassKeyLettersLineNumber;  
  i_t modelClassKeyLettersColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAR * V_VAR_R633_result;
  ooaofooa_O_OBJ * O_OBJ_R671_instance_of;
};
void ooaofooa_ACT_CR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_CR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_CR_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_CR_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_CR * );
void ooaofooa_ACT_CR_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_CR * );
void ooaofooa_ACT_CR_R633_Link( ooaofooa_V_VAR *, ooaofooa_ACT_CR * );
void ooaofooa_ACT_CR_R633_Unlink( ooaofooa_V_VAR *, ooaofooa_ACT_CR * );
void ooaofooa_ACT_CR_R671_Link( ooaofooa_O_OBJ *, ooaofooa_ACT_CR * );
void ooaofooa_ACT_CR_R671_Unlink( ooaofooa_O_OBJ *, ooaofooa_ACT_CR * );


#define ooaofooa_ACT_CR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_CR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_CR_CLASS_H */


