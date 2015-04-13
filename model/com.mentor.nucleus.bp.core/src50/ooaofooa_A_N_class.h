/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_N_class.h
 *
 * Class:       Activity Node  (A_N)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_N_CLASS_H
#define OOAOFOOA_A_N_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Activity Node  (A_N)
 */
struct ooaofooa_A_N {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_A_A * A_A_R1101;
  Escher_ObjectSet_s A_E_R1103_incoming;
  Escher_ObjectSet_s A_E_R1104_outgoing;
  void * R1105_subtype;
  Escher_ClassNumber_t R1105_object_id;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_A_N_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_N_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_N_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_A_N * ooaofooa_A_N_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_A_N_R1101_Link_contained_node( ooaofooa_A_A *, ooaofooa_A_N * );
void ooaofooa_A_N_R1101_Unlink_contained_node( ooaofooa_A_A *, ooaofooa_A_N * );
#define ooaofooa_A_E_R1103_From_A_N_incoming( A_N ) ( &((A_N)->A_E_R1103_incoming) )
/* Note:  A_N->A_E[R1103] not navigated */
#define ooaofooa_A_E_R1104_From_A_N_outgoing( A_N ) ( &((A_N)->A_E_R1104_outgoing) )
/* Note:  A_N->A_E[R1104] not navigated */

/* Accessors to A_N[R1105] subtypes */
#define ooaofooa_A_ACT_R1105_From_A_N( A_N ) \
   ( (((A_N)->R1105_object_id) == ooaofooa_A_ACT_CLASS_NUMBER) ? \
     ((ooaofooa_A_ACT *)((A_N)->R1105_subtype)) : (0) )
#define ooaofooa_A_OBJ_R1105_From_A_N( A_N ) \
   ( (((A_N)->R1105_object_id) == ooaofooa_A_OBJ_CLASS_NUMBER) ? \
     ((ooaofooa_A_OBJ *)((A_N)->R1105_subtype)) : (0) )
#define ooaofooa_A_CTL_R1105_From_A_N( A_N ) \
   ( (((A_N)->R1105_object_id) == ooaofooa_A_CTL_CLASS_NUMBER) ? \
     ((ooaofooa_A_CTL *)((A_N)->R1105_subtype)) : (0) )

void ooaofooa_A_N_R8001_Link( ooaofooa_PE_PE *, ooaofooa_A_N * );
void ooaofooa_A_N_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_A_N * );


#define ooaofooa_A_N_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_N_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_N_CLASS_H */


