/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FOR_class.h
 *
 * Class:       For Stmt  (ACT_FOR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_FOR_CLASS_H
#define OOAOFOOA_ACT_FOR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   For Stmt  (ACT_FOR)
 */
struct ooaofooa_ACT_FOR {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Block_ID;  
  bool is_implicit;  
  Escher_UniqueID_t Loop_Var_ID;  
  Escher_UniqueID_t Set_Var_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_ACT_BLK * ACT_BLK_R605_controls;
  ooaofooa_V_VAR * V_VAR_R614_loop;
  ooaofooa_V_VAR * V_VAR_R652_set;
  ooaofooa_O_OBJ * O_OBJ_R670_iterates_a_set_of;
};
void ooaofooa_ACT_FOR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_FOR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_FOR_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_FOR_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R605_Link( ooaofooa_ACT_BLK *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R605_Unlink( ooaofooa_ACT_BLK *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R614_Link_is_loop_variable( ooaofooa_V_VAR *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R614_Unlink_is_loop_variable( ooaofooa_V_VAR *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R652_Link_is_set_variable( ooaofooa_V_VAR *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R652_Unlink_is_set_variable( ooaofooa_V_VAR *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R670_Link( ooaofooa_O_OBJ *, ooaofooa_ACT_FOR * );
void ooaofooa_ACT_FOR_R670_Unlink( ooaofooa_O_OBJ *, ooaofooa_ACT_FOR * );


#define ooaofooa_ACT_FOR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_FOR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_FOR_CLASS_H */


