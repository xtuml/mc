/*----------------------------------------------------------------------------
 * File:  ooaofooa_PA_DIC_class.h
 *
 * Class:       Delegation In Component  (PA_DIC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PA_DIC_CLASS_H
#define OOAOFOOA_PA_DIC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Delegation In Component  (PA_DIC)
 */
struct ooaofooa_PA_DIC {

  /* application analysis class attributes */
  Escher_UniqueID_t Component_Id;  
  Escher_UniqueID_t Delegation_Id;  

  /* relationship storage */
  ooaofooa_C_C * C_C_R9002;
  ooaofooa_C_DG * C_DG_R9002;
};
void ooaofooa_PA_DIC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PA_DIC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PA_DIC_batch_relate( Escher_iHandle_t );

void ooaofooa_PA_DIC_R9002_Link( ooaofooa_C_C *, ooaofooa_C_DG *, ooaofooa_PA_DIC * );
void ooaofooa_PA_DIC_R9002_Unlink( ooaofooa_C_C *, ooaofooa_C_DG *, ooaofooa_PA_DIC * );


#define ooaofooa_PA_DIC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PA_DIC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PA_DIC_CLASS_H */


