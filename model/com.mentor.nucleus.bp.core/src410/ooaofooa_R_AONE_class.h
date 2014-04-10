/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_AONE_class.h
 *
 * Class:       Class As Associated One Side  (R_AONE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_AONE_CLASS_H
#define OOAOFOOA_R_AONE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Associated One Side  (R_AONE)
 */
struct ooaofooa_R_AONE {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  i_t Mult;  
  i_t Cond;  
  c_t Txt_Phrs[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_R_RTO * R_RTO_R204;
  ooaofooa_R_ASSOC * R_ASSOC_R209_is_related_to_other_side_via;
};
void ooaofooa_R_AONE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_AONE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_AONE_batch_relate( Escher_iHandle_t );

void ooaofooa_R_AONE_R204_Link( ooaofooa_R_RTO *, ooaofooa_R_AONE * );
void ooaofooa_R_AONE_R204_Unlink( ooaofooa_R_RTO *, ooaofooa_R_AONE * );
void ooaofooa_R_AONE_R209_Link_relates( ooaofooa_R_ASSOC *, ooaofooa_R_AONE * );
void ooaofooa_R_AONE_R209_Unlink_relates( ooaofooa_R_ASSOC *, ooaofooa_R_AONE * );


#define ooaofooa_R_AONE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_AONE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_AONE_CLASS_H */


