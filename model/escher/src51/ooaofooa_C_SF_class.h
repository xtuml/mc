/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_SF_class.h
 *
 * Class:       Satisfaction  (C_SF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_SF_CLASS_H
#define OOAOFOOA_C_SF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Satisfaction  (C_SF)
 */
struct ooaofooa_C_SF {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Requirement_Id;  
  Escher_UniqueID_t Provision_Id;  
  c_t * Descrip;  
  c_t * Label;  

  /* relationship storage */
  Escher_ObjectSet_s I_RCH_R2969_is_implemented_at_runtime_by;
  ooaofooa_C_R * C_R_R4002_defines_required_satisfication;
  ooaofooa_C_P * C_P_R4002_satisfies;
  ooaofooa_CL_IPINS * CL_IPINS_R4705;
  ooaofooa_CL_IR * CL_IR_R4706_satisfaction_made_with;
  ooaofooa_PE_PE * PE_PE_R8001;
  ooaofooa_PA_SIC * PA_SIC_R9000;
  ooaofooa_PA_SICP * PA_SICP_R9001;
};
void ooaofooa_C_SF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_SF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_SF_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_SF * ooaofooa_C_SF_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_I_RCH_R2969_From_C_SF_is_implemented_at_runtime_by( C_SF ) ( &((C_SF)->I_RCH_R2969_is_implemented_at_runtime_by) )
/* Note:  C_SF->I_RCH[R2969] not navigated */
void ooaofooa_C_SF_R4002_Link( ooaofooa_C_R *, ooaofooa_C_P *, ooaofooa_C_SF * );
void ooaofooa_C_SF_R4002_Unlink( ooaofooa_C_R *, ooaofooa_C_P *, ooaofooa_C_SF * );
void ooaofooa_C_SF_R8001_Link( ooaofooa_PE_PE *, ooaofooa_C_SF * );
void ooaofooa_C_SF_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_C_SF * );


#define ooaofooa_C_SF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_SF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_SF_CLASS_H */


