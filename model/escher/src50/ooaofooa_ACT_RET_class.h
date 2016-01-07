/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_RET_class.h
 *
 * Class:       Return Stmt  (ACT_RET)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_RET_CLASS_H
#define OOAOFOOA_ACT_RET_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Return Stmt  (ACT_RET)
 */
struct ooaofooa_ACT_RET {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Value_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAL * V_VAL_R668_has;
};
void ooaofooa_ACT_RET_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_RET_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_RET_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_RET_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_RET * );
void ooaofooa_ACT_RET_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_RET * );
void ooaofooa_ACT_RET_R668_Link_returned_by( ooaofooa_V_VAL *, ooaofooa_ACT_RET * );
void ooaofooa_ACT_RET_R668_Unlink_returned_by( ooaofooa_V_VAL *, ooaofooa_ACT_RET * );


#define ooaofooa_ACT_RET_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_RET_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_RET_CLASS_H */


