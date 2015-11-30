/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_DEL_class.h
 *
 * Class:       Delete  (ACT_DEL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_DEL_CLASS_H
#define OOAOFOOA_ACT_DEL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Delete  (ACT_DEL)
 */
struct ooaofooa_ACT_DEL {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAR * V_VAR_R634_destroys;
};
void ooaofooa_ACT_DEL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_DEL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_DEL_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_DEL_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_DEL * );
void ooaofooa_ACT_DEL_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_DEL * );
void ooaofooa_ACT_DEL_R634_Link( ooaofooa_V_VAR *, ooaofooa_ACT_DEL * );
void ooaofooa_ACT_DEL_R634_Unlink( ooaofooa_V_VAR *, ooaofooa_ACT_DEL * );


#define ooaofooa_ACT_DEL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_DEL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_DEL_CLASS_H */


