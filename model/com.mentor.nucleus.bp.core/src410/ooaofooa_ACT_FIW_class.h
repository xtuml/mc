/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FIW_class.h
 *
 * Class:       Select From Instances Where  (ACT_FIW)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_FIW_CLASS_H
#define OOAOFOOA_ACT_FIW_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Select From Instances Where  (ACT_FIW)
 */
struct ooaofooa_ACT_FIW {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Var_ID;  
  bool is_implicit;  
  c_t cardinality[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Where_Clause_Value_ID;  
  Escher_UniqueID_t Obj_ID;  
  i_t extentLineNumber;  
  i_t extentColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAL * V_VAL_R610_where_clause;
  ooaofooa_V_VAR * V_VAR_R665_result;
  ooaofooa_O_OBJ * O_OBJ_R676_from_extent_of;
};
void ooaofooa_ACT_FIW_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_FIW_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_FIW_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_FIW_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_FIW * );
void ooaofooa_ACT_FIW_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_FIW * );
void ooaofooa_ACT_FIW_R610_Link( ooaofooa_V_VAL *, ooaofooa_ACT_FIW * );
void ooaofooa_ACT_FIW_R610_Unlink( ooaofooa_V_VAL *, ooaofooa_ACT_FIW * );
void ooaofooa_ACT_FIW_R665_Link( ooaofooa_V_VAR *, ooaofooa_ACT_FIW * );
void ooaofooa_ACT_FIW_R665_Unlink( ooaofooa_V_VAR *, ooaofooa_ACT_FIW * );
void ooaofooa_ACT_FIW_R676_Link( ooaofooa_O_OBJ *, ooaofooa_ACT_FIW * );
void ooaofooa_ACT_FIW_R676_Unlink( ooaofooa_O_OBJ *, ooaofooa_ACT_FIW * );


#define ooaofooa_ACT_FIW_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_FIW_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_FIW_CLASS_H */


