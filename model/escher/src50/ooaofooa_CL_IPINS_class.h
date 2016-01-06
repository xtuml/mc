/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IPINS_class.h
 *
 * Class:       Imported Provision In Satisfaction  (CL_IPINS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CL_IPINS_CLASS_H
#define OOAOFOOA_CL_IPINS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Imported Provision In Satisfaction  (CL_IPINS)
 */
struct ooaofooa_CL_IPINS {

  /* application analysis class attributes */
  Escher_UniqueID_t Satisfaction_Id;  
  Escher_UniqueID_t ImportedProvision_Id;  

  /* relationship storage */
  ooaofooa_C_SF * C_SF_R4705_provides_satisfaction_through;
  ooaofooa_CL_IP * CL_IP_R4705_satisfaction_made_with;
};
void ooaofooa_CL_IPINS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CL_IPINS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CL_IPINS_batch_relate( Escher_iHandle_t );

void ooaofooa_CL_IPINS_R4705_Link( ooaofooa_C_SF *, ooaofooa_CL_IP *, ooaofooa_CL_IPINS * );
void ooaofooa_CL_IPINS_R4705_Unlink( ooaofooa_C_SF *, ooaofooa_CL_IP *, ooaofooa_CL_IPINS * );


#define ooaofooa_CL_IPINS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CL_IPINS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CL_IPINS_CLASS_H */


