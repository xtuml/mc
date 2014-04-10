/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FIO_class.h
 *
 * Class:       Select From Instances  (ACT_FIO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_FIO_CLASS_H
#define OOAOFOOA_ACT_FIO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Select From Instances  (ACT_FIO)
 */
struct ooaofooa_ACT_FIO {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Var_ID;  
  bool is_implicit;  
  c_t cardinality[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Obj_ID;  
  i_t extentLineNumber;  
  i_t extentColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAR * V_VAR_R639_selection;
  ooaofooa_O_OBJ * O_OBJ_R677_from_extent_of;
};
void ooaofooa_ACT_FIO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_FIO_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_FIO_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_FIO_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_FIO * );
void ooaofooa_ACT_FIO_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_FIO * );
void ooaofooa_ACT_FIO_R639_Link( ooaofooa_V_VAR *, ooaofooa_ACT_FIO * );
void ooaofooa_ACT_FIO_R639_Unlink( ooaofooa_V_VAR *, ooaofooa_ACT_FIO * );
void ooaofooa_ACT_FIO_R677_Link( ooaofooa_O_OBJ *, ooaofooa_ACT_FIO * );
void ooaofooa_ACT_FIO_R677_Unlink( ooaofooa_O_OBJ *, ooaofooa_ACT_FIO * );


#define ooaofooa_ACT_FIO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_FIO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_FIO_CLASS_H */


