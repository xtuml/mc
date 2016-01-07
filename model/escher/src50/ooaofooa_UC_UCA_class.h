/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_UCA_class.h
 *
 * Class:       Use Case Association  (UC_UCA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_UC_UCA_CLASS_H
#define OOAOFOOA_UC_UCA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Use Case Association  (UC_UCA)
 */
struct ooaofooa_UC_UCA {

  /* application analysis class attributes */
  Escher_UniqueID_t Assoc_ID;  
  Escher_UniqueID_t Source_Part_ID;  
  Escher_UniqueID_t Destination_Part_ID;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R1206_starts_at;
  ooaofooa_SQ_P * SQ_P_R1207_ends_at;
  void * R1210_subtype;
  Escher_ClassNumber_t R1210_object_id;
  ooaofooa_UC_AIUC * UC_AIUC_R1215_contained_through;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_UC_UCA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_UC_UCA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_UC_UCA_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_UC_UCA * ooaofooa_UC_UCA_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_UC_UCA_R1206_Link_is_source( ooaofooa_SQ_P *, ooaofooa_UC_UCA * );
void ooaofooa_UC_UCA_R1206_Unlink_is_source( ooaofooa_SQ_P *, ooaofooa_UC_UCA * );
void ooaofooa_UC_UCA_R1207_Link_is_destination( ooaofooa_SQ_P *, ooaofooa_UC_UCA * );
void ooaofooa_UC_UCA_R1207_Unlink_is_destination( ooaofooa_SQ_P *, ooaofooa_UC_UCA * );

/* Accessors to UC_UCA[R1210] subtypes */
#define ooaofooa_UC_E_R1210_From_UC_UCA( UC_UCA ) \
   ( (((UC_UCA)->R1210_object_id) == ooaofooa_UC_E_CLASS_NUMBER) ? \
     ((ooaofooa_UC_E *)((UC_UCA)->R1210_subtype)) : (0) )
/* Note:  UC_UCA->UC_E[R1210] not navigated */
#define ooaofooa_UC_G_R1210_From_UC_UCA( UC_UCA ) \
   ( (((UC_UCA)->R1210_object_id) == ooaofooa_UC_G_CLASS_NUMBER) ? \
     ((ooaofooa_UC_G *)((UC_UCA)->R1210_subtype)) : (0) )
/* Note:  UC_UCA->UC_G[R1210] not navigated */
#define ooaofooa_UC_I_R1210_From_UC_UCA( UC_UCA ) \
   ( (((UC_UCA)->R1210_object_id) == ooaofooa_UC_I_CLASS_NUMBER) ? \
     ((ooaofooa_UC_I *)((UC_UCA)->R1210_subtype)) : (0) )
/* Note:  UC_UCA->UC_I[R1210] not navigated */
#define ooaofooa_UC_BA_R1210_From_UC_UCA( UC_UCA ) \
   ( (((UC_UCA)->R1210_object_id) == ooaofooa_UC_BA_CLASS_NUMBER) ? \
     ((ooaofooa_UC_BA *)((UC_UCA)->R1210_subtype)) : (0) )
/* Note:  UC_UCA->UC_BA[R1210] not navigated */

void ooaofooa_UC_UCA_R8001_Link( ooaofooa_PE_PE *, ooaofooa_UC_UCA * );
void ooaofooa_UC_UCA_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_UC_UCA * );


#define ooaofooa_UC_UCA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_UC_UCA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_UC_UCA_CLASS_H */


