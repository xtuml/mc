/*----------------------------------------------------------------------------
 * File:  ooaofooa_PA_SICP_class.h
 *
 * Class:       Satisfaction In Component Package  (PA_SICP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PA_SICP_CLASS_H
#define OOAOFOOA_PA_SICP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Satisfaction In Component Package  (PA_SICP)
 */
struct ooaofooa_PA_SICP {

  /* application analysis class attributes */
  Escher_UniqueID_t ComponentPackage_ID;  
  Escher_UniqueID_t Satisfaction_Id;  

  /* relationship storage */
  ooaofooa_C_SF * C_SF_R9001;
  ooaofooa_CP_CP * CP_CP_R9001;
};
void ooaofooa_PA_SICP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PA_SICP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PA_SICP_batch_relate( Escher_iHandle_t );

void ooaofooa_PA_SICP_R9001_Link( ooaofooa_C_SF *, ooaofooa_CP_CP *, ooaofooa_PA_SICP * );
void ooaofooa_PA_SICP_R9001_Unlink( ooaofooa_C_SF *, ooaofooa_CP_CP *, ooaofooa_PA_SICP * );


#define ooaofooa_PA_SICP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PA_SICP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PA_SICP_CLASS_H */


