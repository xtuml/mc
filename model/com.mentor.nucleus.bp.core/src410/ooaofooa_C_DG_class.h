/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_DG_class.h
 *
 * Class:       Delegation  (C_DG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_DG_CLASS_H
#define OOAOFOOA_C_DG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Delegation  (C_DG)
 */
struct ooaofooa_C_DG {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  Escher_ObjectSet_s I_RCH_R2972_is_implemented_at_runtime_by;
  Escher_ObjectSet_s C_RID_R4013;
  Escher_ObjectSet_s C_IR_R4014_provides_delegation_to;
  ooaofooa_CL_IIR * CL_IIR_R4704_delivers_communication_through;
  ooaofooa_PE_PE * PE_PE_R8001;
  ooaofooa_PA_DIC * PA_DIC_R9002;
};
void ooaofooa_C_DG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_DG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_DG_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_DG * ooaofooa_C_DG_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_I_RCH_R2972_From_C_DG_is_implemented_at_runtime_by( C_DG ) ( &((C_DG)->I_RCH_R2972_is_implemented_at_runtime_by) )
/* Note:  C_DG->I_RCH[R2972] not navigated */
#define ooaofooa_C_RID_R4013_From_C_DG( C_DG ) ( &((C_DG)->C_RID_R4013) )
#define ooaofooa_C_IR_R4014_From_C_DG_provides_delegation_to( C_DG ) ( &((C_DG)->C_IR_R4014_provides_delegation_to) )
void ooaofooa_C_DG_R8001_Link( ooaofooa_PE_PE *, ooaofooa_C_DG * );
void ooaofooa_C_DG_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_C_DG * );


#define ooaofooa_C_DG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_DG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_DG_CLASS_H */


