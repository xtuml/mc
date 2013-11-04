/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_DBATTR_class.h
 *
 * Class:       Derived Base Attribute  (O_DBATTR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_DBATTR_CLASS_H
#define OOAOFOOA_O_DBATTR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Derived Base Attribute  (O_DBATTR)
 */
struct ooaofooa_O_DBATTR {

  /* application analysis class attributes */
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  
  c_t Action_Semantics[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Action_Semantics_internal;  
  sys_ParseStatus_t Suc_Pars;  

  /* relationship storage */
  ooaofooa_O_BATTR * O_BATTR_R107;
  ooaofooa_ACT_DAB * ACT_DAB_R693;
  ooaofooa_TE_DBATTR * TE_DBATTR_R2026;
};
void ooaofooa_O_DBATTR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_DBATTR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_DBATTR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_DBATTR * ooaofooa_O_DBATTR_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_O_DBATTR_R107_Link( ooaofooa_O_BATTR *, ooaofooa_O_DBATTR * );
void ooaofooa_O_DBATTR_R107_Unlink( ooaofooa_O_BATTR *, ooaofooa_O_DBATTR * );


#define ooaofooa_O_DBATTR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_DBATTR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_DBATTR_CLASS_H */


