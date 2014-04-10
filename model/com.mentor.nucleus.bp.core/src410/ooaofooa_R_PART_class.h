/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_PART_class.h
 *
 * Class:       Class As Simple Participant  (R_PART)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_PART_CLASS_H
#define OOAOFOOA_R_PART_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Simple Participant  (R_PART)
 */
struct ooaofooa_R_PART {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  i_t Mult;  
  i_t Cond;  
  c_t Txt_Phrs[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_R_RTO * R_RTO_R204;
  ooaofooa_R_SIMP * R_SIMP_R207_is_related_to_formalizer_via;
};
void ooaofooa_R_PART_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_PART_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_PART_batch_relate( Escher_iHandle_t );

void ooaofooa_R_PART_R204_Link( ooaofooa_R_RTO *, ooaofooa_R_PART * );
void ooaofooa_R_PART_R204_Unlink( ooaofooa_R_RTO *, ooaofooa_R_PART * );
void ooaofooa_R_PART_R207_Link_relates( ooaofooa_R_SIMP *, ooaofooa_R_PART * );
void ooaofooa_R_PART_R207_Unlink_relates( ooaofooa_R_SIMP *, ooaofooa_R_PART * );


#define ooaofooa_R_PART_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_PART_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_PART_CLASS_H */


