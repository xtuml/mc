/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_INS_class.h
 *
 * Class:       Instance Set  (V_INS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_INS_CLASS_H
#define OOAOFOOA_V_INS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Instance Set  (V_INS)
 */
struct ooaofooa_V_INS {

  /* application analysis class attributes */
  Escher_UniqueID_t Var_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_V_VAR * V_VAR_R814;
  ooaofooa_O_OBJ * O_OBJ_R819_refers_to;
};
void ooaofooa_V_INS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_INS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_INS_batch_relate( Escher_iHandle_t );

void ooaofooa_V_INS_R814_Link( ooaofooa_V_VAR *, ooaofooa_V_INS * );
void ooaofooa_V_INS_R814_Unlink( ooaofooa_V_VAR *, ooaofooa_V_INS * );
void ooaofooa_V_INS_R819_Link( ooaofooa_O_OBJ *, ooaofooa_V_INS * );
void ooaofooa_V_INS_R819_Unlink( ooaofooa_O_OBJ *, ooaofooa_V_INS * );


#define ooaofooa_V_INS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_INS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_INS_CLASS_H */


