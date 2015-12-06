/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_WHL_class.h
 *
 * Class:       While Stmt  (ACT_WHL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_WHL_CLASS_H
#define OOAOFOOA_ACT_WHL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   While Stmt  (ACT_WHL)
 */
struct ooaofooa_ACT_WHL {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Block_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_ACT_BLK * ACT_BLK_R608_controls;
  ooaofooa_V_VAL * V_VAL_R626_continue_result;
};
void ooaofooa_ACT_WHL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_WHL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_WHL_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_WHL_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_WHL * );
void ooaofooa_ACT_WHL_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_WHL * );
void ooaofooa_ACT_WHL_R608_Link( ooaofooa_ACT_BLK *, ooaofooa_ACT_WHL * );
void ooaofooa_ACT_WHL_R608_Unlink( ooaofooa_ACT_BLK *, ooaofooa_ACT_WHL * );
void ooaofooa_ACT_WHL_R626_Link( ooaofooa_V_VAL *, ooaofooa_ACT_WHL * );
void ooaofooa_ACT_WHL_R626_Unlink( ooaofooa_V_VAL *, ooaofooa_ACT_WHL * );


#define ooaofooa_ACT_WHL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_WHL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_WHL_CLASS_H */


