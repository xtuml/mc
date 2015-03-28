/*----------------------------------------------------------------------------
 * File:  ooaofooa_PA_SIC_class.h
 *
 * Class:       Satisfaction In Component  (PA_SIC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PA_SIC_CLASS_H
#define OOAOFOOA_PA_SIC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Satisfaction In Component  (PA_SIC)
 */
struct ooaofooa_PA_SIC {

  /* application analysis class attributes */
  Escher_UniqueID_t Component_Id;  
  Escher_UniqueID_t Satisfaction_Id;  

  /* relationship storage */
  ooaofooa_C_C * C_C_R9000;
  ooaofooa_C_SF * C_SF_R9000;
};
void ooaofooa_PA_SIC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PA_SIC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PA_SIC_batch_relate( Escher_iHandle_t );

void ooaofooa_PA_SIC_R9000_Link( ooaofooa_C_C *, ooaofooa_C_SF *, ooaofooa_PA_SIC * );
void ooaofooa_PA_SIC_R9000_Unlink( ooaofooa_C_C *, ooaofooa_C_SF *, ooaofooa_PA_SIC * );


#define ooaofooa_PA_SIC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PA_SIC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PA_SIC_CLASS_H */


