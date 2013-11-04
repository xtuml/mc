/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_COTH_class.h
 *
 * Class:       Class As Derived Other Side  (R_COTH)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_COTH_CLASS_H
#define OOAOFOOA_R_COTH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Derived Other Side  (R_COTH)
 */
struct ooaofooa_R_COTH {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  i_t Mult;  
  i_t Cond;  
  c_t Txt_Phrs[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_R_OIR * R_OIR_R203;
  ooaofooa_R_COMP * R_COMP_R215_is_related_to_one_side_via;
};
void ooaofooa_R_COTH_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_COTH_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_COTH_batch_relate( Escher_iHandle_t );

void ooaofooa_R_COTH_R203_Link( ooaofooa_R_OIR *, ooaofooa_R_COTH * );
void ooaofooa_R_COTH_R203_Unlink( ooaofooa_R_OIR *, ooaofooa_R_COTH * );
void ooaofooa_R_COTH_R215_Link_relates( ooaofooa_R_COMP *, ooaofooa_R_COTH * );
void ooaofooa_R_COTH_R215_Unlink_relates( ooaofooa_R_COMP *, ooaofooa_R_COTH * );


#define ooaofooa_R_COTH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_COTH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_COTH_CLASS_H */


