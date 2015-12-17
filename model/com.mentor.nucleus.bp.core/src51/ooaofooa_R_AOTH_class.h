/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_AOTH_class.h
 *
 * Class:       Class As Associated Other Side  (R_AOTH)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_AOTH_CLASS_H
#define OOAOFOOA_R_AOTH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class As Associated Other Side  (R_AOTH)
 */
struct ooaofooa_R_AOTH {

  /* application analysis class attributes */
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  
  i_t Mult;  
  i_t Cond;  
  c_t * Txt_Phrs;  

  /* relationship storage */
  ooaofooa_R_RTO * R_RTO_R204;
  ooaofooa_R_ASSOC * R_ASSOC_R210_is_related_to_one_side_via;
};
void ooaofooa_R_AOTH_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_AOTH_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_AOTH_batch_relate( Escher_iHandle_t );

void ooaofooa_R_AOTH_R204_Link( ooaofooa_R_RTO *, ooaofooa_R_AOTH * );
void ooaofooa_R_AOTH_R204_Unlink( ooaofooa_R_RTO *, ooaofooa_R_AOTH * );
void ooaofooa_R_AOTH_R210_Link_relates( ooaofooa_R_ASSOC *, ooaofooa_R_AOTH * );
void ooaofooa_R_AOTH_R210_Unlink_relates( ooaofooa_R_ASSOC *, ooaofooa_R_AOTH * );


#define ooaofooa_R_AOTH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_AOTH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_AOTH_CLASS_H */


