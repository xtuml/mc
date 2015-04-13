/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_POR_class.h
 *
 * Class:       Port Reference  (CL_POR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CL_POR_CLASS_H
#define OOAOFOOA_CL_POR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Port Reference  (CL_POR)
 */
struct ooaofooa_CL_POR {

  /* application analysis class attributes */
  Escher_UniqueID_t CL_IC_Id;  
  Escher_UniqueID_t C_PO_Id;  
  c_t * Name;  
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_CL_IC * CL_IC_R4707_orginates_from;
  Escher_ObjectSet_s CL_IIR_R4708_exposes;
  ooaofooa_C_PO * C_PO_R4709_references;
};
void ooaofooa_CL_POR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CL_POR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CL_POR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CL_POR * ooaofooa_CL_POR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CL_POR_R4707_Link_communicates_through( ooaofooa_CL_IC *, ooaofooa_CL_POR * );
void ooaofooa_CL_POR_R4707_Unlink_communicates_through( ooaofooa_CL_IC *, ooaofooa_CL_POR * );
#define ooaofooa_CL_IIR_R4708_From_CL_POR_exposes( CL_POR ) ( &((CL_POR)->CL_IIR_R4708_exposes) )
void ooaofooa_CL_POR_R4709_Link_is_referenced_by( ooaofooa_C_PO *, ooaofooa_CL_POR * );
void ooaofooa_CL_POR_R4709_Unlink_is_referenced_by( ooaofooa_C_PO *, ooaofooa_CL_POR * );


#define ooaofooa_CL_POR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CL_POR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CL_POR_CLASS_H */


