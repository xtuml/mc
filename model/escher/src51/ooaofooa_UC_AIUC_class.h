/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_AIUC_class.h
 *
 * Class:       Association In Use Case  (UC_AIUC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_UC_AIUC_CLASS_H
#define OOAOFOOA_UC_AIUC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Association In Use Case  (UC_AIUC)
 */
struct ooaofooa_UC_AIUC {

  /* application analysis class attributes */
  Escher_UniqueID_t Assoc_ID;  
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_UC_UCC * UC_UCC_R1214_contained_in;
  ooaofooa_UC_UCA * UC_UCA_R1215_provides_containment;
};
void ooaofooa_UC_AIUC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_UC_AIUC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_UC_AIUC_batch_relate( Escher_iHandle_t );

void ooaofooa_UC_AIUC_R1214_Link_contains( ooaofooa_UC_UCC *, ooaofooa_UC_AIUC * );
void ooaofooa_UC_AIUC_R1214_Unlink_contains( ooaofooa_UC_UCC *, ooaofooa_UC_AIUC * );
void ooaofooa_UC_AIUC_R1215_Link_contained_through( ooaofooa_UC_UCA *, ooaofooa_UC_AIUC * );
void ooaofooa_UC_AIUC_R1215_Unlink_contained_through( ooaofooa_UC_UCA *, ooaofooa_UC_AIUC * );


#define ooaofooa_UC_AIUC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_UC_AIUC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_UC_AIUC_CLASS_H */


