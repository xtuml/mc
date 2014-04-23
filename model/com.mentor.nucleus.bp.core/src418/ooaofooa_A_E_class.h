/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_E_class.h
 *
 * Class:       Activity Edge  (A_E)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_E_CLASS_H
#define OOAOFOOA_A_E_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Activity Edge  (A_E)
 */
struct ooaofooa_A_E {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Package_ID;  
  c_t * Guard;  
  c_t * Descrip;  
  Escher_UniqueID_t TargetId;  
  Escher_UniqueID_t SourceId;  

  /* relationship storage */
  ooaofooa_A_A * A_A_R1102;
  ooaofooa_A_N * A_N_R1103_target;
  ooaofooa_A_N * A_N_R1104_source;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_A_E_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_E_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_E_batch_relate( Escher_iHandle_t );

void ooaofooa_A_E_R1102_Link_contained_edge( ooaofooa_A_A *, ooaofooa_A_E * );
void ooaofooa_A_E_R1102_Unlink_contained_edge( ooaofooa_A_A *, ooaofooa_A_E * );
void ooaofooa_A_E_R1103_Link_incoming( ooaofooa_A_N *, ooaofooa_A_E * );
void ooaofooa_A_E_R1103_Unlink_incoming( ooaofooa_A_N *, ooaofooa_A_E * );
void ooaofooa_A_E_R1104_Link_outgoing( ooaofooa_A_N *, ooaofooa_A_E * );
void ooaofooa_A_E_R1104_Unlink_outgoing( ooaofooa_A_N *, ooaofooa_A_E * );
void ooaofooa_A_E_R8001_Link( ooaofooa_PE_PE *, ooaofooa_A_E * );
void ooaofooa_A_E_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_A_E * );


#define ooaofooa_A_E_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_E_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_E_CLASS_H */


