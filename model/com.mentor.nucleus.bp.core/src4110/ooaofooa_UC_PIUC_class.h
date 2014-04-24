/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_PIUC_class.h
 *
 * Class:       Participant in Use Case  (UC_PIUC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_UC_PIUC_CLASS_H
#define OOAOFOOA_UC_PIUC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Participant in Use Case  (UC_PIUC)
 */
struct ooaofooa_UC_PIUC {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Part_ID;  

  /* relationship storage */
  ooaofooa_UC_UCC * UC_UCC_R1203_is_displayed_in;
  ooaofooa_SQ_P * SQ_P_R1203_can_display;
};
void ooaofooa_UC_PIUC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_UC_PIUC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_UC_PIUC_batch_relate( Escher_iHandle_t );

void ooaofooa_UC_PIUC_R1203_Link( ooaofooa_UC_UCC *, ooaofooa_SQ_P *, ooaofooa_UC_PIUC * );
void ooaofooa_UC_PIUC_R1203_Unlink( ooaofooa_UC_UCC *, ooaofooa_SQ_P *, ooaofooa_UC_PIUC * );


#define ooaofooa_UC_PIUC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_UC_PIUC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_UC_PIUC_CLASS_H */


