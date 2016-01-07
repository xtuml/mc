/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_FORM_class.h
 *
 * Class:       Class As Simple Formalizer  (R_FORM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_FORM_CLASS_H
#define OOAOFOOA_R_FORM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Simple Formalizer  (R_FORM)
 */
struct ooaofooa_R_FORM {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  i_t Mult;  
  i_t Cond;  
  c_t * Txt_Phrs;  

  /* relationship storage */
  ooaofooa_R_RGO * R_RGO_R205;
  ooaofooa_R_SIMP * R_SIMP_R208_is_related_to_participant_via;
};
void ooaofooa_R_FORM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_FORM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_FORM_batch_relate( Escher_iHandle_t );

void ooaofooa_R_FORM_R205_Link( ooaofooa_R_RGO *, ooaofooa_R_FORM * );
void ooaofooa_R_FORM_R205_Unlink( ooaofooa_R_RGO *, ooaofooa_R_FORM * );
void ooaofooa_R_FORM_R208_Link_relates( ooaofooa_R_SIMP *, ooaofooa_R_FORM * );
void ooaofooa_R_FORM_R208_Unlink_relates( ooaofooa_R_SIMP *, ooaofooa_R_FORM * );


#define ooaofooa_R_FORM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_FORM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_FORM_CLASS_H */


