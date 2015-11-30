/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_BSF_class.h
 *
 * Class:       Block in Stack Frame  (I_BSF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_BSF_CLASS_H
#define OOAOFOOA_I_BSF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Block in Stack Frame  (I_BSF)
 */
struct ooaofooa_I_BSF {

  /* application analysis class attributes */
  Escher_UniqueID_t Block_ID;  
  Escher_UniqueID_t Stack_Frame_ID;  
  Escher_UniqueID_t Statement_ID;  
  bool isExecuting;  

  /* relationship storage */
  ooaofooa_ACT_BLK * ACT_BLK_R2923_supplies_context_for;
  ooaofooa_I_STF * I_STF_R2923_is_executed_within_the_context_of;
  ooaofooa_ACT_SMT * ACT_SMT_R2941_is_currently_visiting;
};
void ooaofooa_I_BSF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_BSF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_BSF_batch_relate( Escher_iHandle_t );

void ooaofooa_I_BSF_R2923_Link( ooaofooa_ACT_BLK *, ooaofooa_I_STF *, ooaofooa_I_BSF * );
void ooaofooa_I_BSF_R2923_Unlink( ooaofooa_ACT_BLK *, ooaofooa_I_STF *, ooaofooa_I_BSF * );
void ooaofooa_I_BSF_R2941_Link_is_visited_within_scope_of( ooaofooa_ACT_SMT *, ooaofooa_I_BSF * );
void ooaofooa_I_BSF_R2941_Unlink_is_visited_within_scope_of( ooaofooa_ACT_SMT *, ooaofooa_I_BSF * );


#define ooaofooa_I_BSF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_BSF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_BSF_CLASS_H */


