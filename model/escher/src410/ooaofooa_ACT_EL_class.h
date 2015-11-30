/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_EL_class.h
 *
 * Class:       ElseIf Stmt  (ACT_EL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_EL_CLASS_H
#define OOAOFOOA_ACT_EL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   ElseIf Stmt  (ACT_EL)
 */
struct ooaofooa_ACT_EL {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Block_ID;  
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t If_Statement_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_ACT_BLK * ACT_BLK_R658_controls;
  ooaofooa_V_VAL * V_VAL_R659_test_result;
  ooaofooa_ACT_IF * ACT_IF_R682;
  ooaofooa_ACT_IF * ACT_IF_R690;
};
void ooaofooa_ACT_EL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_EL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_EL_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_EL * ooaofooa_ACT_EL_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_EL_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_EL * );
void ooaofooa_ACT_EL_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_EL * );
void ooaofooa_ACT_EL_R658_Link( ooaofooa_ACT_BLK *, ooaofooa_ACT_EL * );
void ooaofooa_ACT_EL_R658_Unlink( ooaofooa_ACT_BLK *, ooaofooa_ACT_EL * );
void ooaofooa_ACT_EL_R659_Link( ooaofooa_V_VAL *, ooaofooa_ACT_EL * );
void ooaofooa_ACT_EL_R659_Unlink( ooaofooa_V_VAL *, ooaofooa_ACT_EL * );
void ooaofooa_ACT_EL_R682_Link_has( ooaofooa_ACT_IF *, ooaofooa_ACT_EL * );
void ooaofooa_ACT_EL_R682_Unlink_has( ooaofooa_ACT_IF *, ooaofooa_ACT_EL * );


#define ooaofooa_ACT_EL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_EL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_EL_CLASS_H */


