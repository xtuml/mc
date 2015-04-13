/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_IF_class.h
 *
 * Class:       If Stmt  (ACT_IF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_IF_CLASS_H
#define OOAOFOOA_ACT_IF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   If Stmt  (ACT_IF)
 */
struct ooaofooa_ACT_IF {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Block_ID;  
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Elif_Statement_ID;  
  Escher_UniqueID_t Else_Statement_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_ACT_BLK * ACT_BLK_R607_controls;
  ooaofooa_V_VAL * V_VAL_R625_test_result;
  Escher_ObjectSet_s ACT_EL_R682_has;
  ooaofooa_ACT_E * ACT_E_R683_has;
  ooaofooa_ACT_EL * ACT_EL_R690_was_executing_when_halted;
  ooaofooa_ACT_E * ACT_E_R692_was_executing_when_halted;
};
void ooaofooa_ACT_IF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_IF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_IF_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_IF * ooaofooa_ACT_IF_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_IF_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_IF * );
void ooaofooa_ACT_IF_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_IF * );
void ooaofooa_ACT_IF_R607_Link( ooaofooa_ACT_BLK *, ooaofooa_ACT_IF * );
void ooaofooa_ACT_IF_R607_Unlink( ooaofooa_ACT_BLK *, ooaofooa_ACT_IF * );
void ooaofooa_ACT_IF_R625_Link( ooaofooa_V_VAL *, ooaofooa_ACT_IF * );
void ooaofooa_ACT_IF_R625_Unlink( ooaofooa_V_VAL *, ooaofooa_ACT_IF * );
#define ooaofooa_ACT_EL_R682_From_ACT_IF_has( ACT_IF ) ( &((ACT_IF)->ACT_EL_R682_has) )
void ooaofooa_ACT_IF_R690_Link( ooaofooa_ACT_EL *, ooaofooa_ACT_IF * );
void ooaofooa_ACT_IF_R690_Unlink( ooaofooa_ACT_EL *, ooaofooa_ACT_IF * );
void ooaofooa_ACT_IF_R692_Link( ooaofooa_ACT_E *, ooaofooa_ACT_IF * );
void ooaofooa_ACT_IF_R692_Unlink( ooaofooa_ACT_E *, ooaofooa_ACT_IF * );


#define ooaofooa_ACT_IF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_IF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_IF_CLASS_H */


