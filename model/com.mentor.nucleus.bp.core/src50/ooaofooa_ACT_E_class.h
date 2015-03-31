/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_E_class.h
 *
 * Class:       Else Stmt  (ACT_E)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_E_CLASS_H
#define OOAOFOOA_ACT_E_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Else Stmt  (ACT_E)
 */
struct ooaofooa_ACT_E {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Block_ID;  
  Escher_UniqueID_t If_Statement_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_ACT_BLK * ACT_BLK_R606_controls;
  ooaofooa_ACT_IF * ACT_IF_R683;
  ooaofooa_ACT_IF * ACT_IF_R692;
};
void ooaofooa_ACT_E_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_E_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_E_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_E * ooaofooa_ACT_E_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_E_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_E * );
void ooaofooa_ACT_E_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_E * );
void ooaofooa_ACT_E_R606_Link( ooaofooa_ACT_BLK *, ooaofooa_ACT_E * );
void ooaofooa_ACT_E_R606_Unlink( ooaofooa_ACT_BLK *, ooaofooa_ACT_E * );
void ooaofooa_ACT_E_R683_Link_has( ooaofooa_ACT_IF *, ooaofooa_ACT_E * );
void ooaofooa_ACT_E_R683_Unlink_has( ooaofooa_ACT_IF *, ooaofooa_ACT_E * );


#define ooaofooa_ACT_E_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_E_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_E_CLASS_H */


