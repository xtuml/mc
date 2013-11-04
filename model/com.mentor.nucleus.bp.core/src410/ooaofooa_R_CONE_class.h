/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_CONE_class.h
 *
 * Class:       Class As Derived One Side  (R_CONE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_CONE_CLASS_H
#define OOAOFOOA_R_CONE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Derived One Side  (R_CONE)
 */
struct ooaofooa_R_CONE {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  i_t Mult;  
  i_t Cond;  
  c_t Txt_Phrs[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_R_OIR * R_OIR_R203;
  ooaofooa_R_COMP * R_COMP_R214_is_related_to_other_type_via;
};
void ooaofooa_R_CONE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_CONE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_CONE_batch_relate( Escher_iHandle_t );

void ooaofooa_R_CONE_R203_Link( ooaofooa_R_OIR *, ooaofooa_R_CONE * );
void ooaofooa_R_CONE_R203_Unlink( ooaofooa_R_OIR *, ooaofooa_R_CONE * );
void ooaofooa_R_CONE_R214_Link_relates( ooaofooa_R_COMP *, ooaofooa_R_CONE * );
void ooaofooa_R_CONE_R214_Unlink_relates( ooaofooa_R_COMP *, ooaofooa_R_CONE * );


#define ooaofooa_R_CONE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_CONE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_CONE_CLASS_H */


