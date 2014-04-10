/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_CSP_class.h
 *
 * Class:       Constant Specification  (CNST_CSP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CNST_CSP_CLASS_H
#define OOAOFOOA_CNST_CSP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Constant Specification  (CNST_CSP)
 */
struct ooaofooa_CNST_CSP {

  /* application analysis class attributes */
  Escher_UniqueID_t Constant_Spec_ID;  
  c_t InformalGroupName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  Escher_ObjectSet_s CNST_SYC_R1504_contains;
  ooaofooa_CNST_CIP * CNST_CIP_R1506;
  Escher_ObjectSet_s SLD_SCINP_R4403;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_CNST_CSP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CNST_CSP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CNST_CSP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CNST_CSP * ooaofooa_CNST_CSP_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_CNST_SYC_R1504_From_CNST_CSP_contains( CNST_CSP ) ( &((CNST_CSP)->CNST_SYC_R1504_contains) )
/* Note:  CNST_CSP->CNST_SYC[R1504] not navigated */
#define ooaofooa_SLD_SCINP_R4403_From_CNST_CSP( CNST_CSP ) ( &((CNST_CSP)->SLD_SCINP_R4403) )
void ooaofooa_CNST_CSP_R8001_Link( ooaofooa_PE_PE *, ooaofooa_CNST_CSP * );
void ooaofooa_CNST_CSP_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_CNST_CSP * );


#define ooaofooa_CNST_CSP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CNST_CSP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CNST_CSP_CLASS_H */


