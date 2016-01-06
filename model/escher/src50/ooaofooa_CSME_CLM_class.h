/*----------------------------------------------------------------------------
 * File:  ooaofooa_CSME_CLM_class.h
 *
 * Class:       Class Monitor  (CSME_CLM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CSME_CLM_CLASS_H
#define OOAOFOOA_CSME_CLM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class Monitor  (CSME_CLM)
 */
struct ooaofooa_CSME_CLM {

  /* application analysis class attributes */
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t CIE_ID;  

  /* relationship storage */
  ooaofooa_CSME_CIE * CSME_CIE_R2950_monitors;
  ooaofooa_I_EXE * I_EXE_R2950_monitored_by;
};
void ooaofooa_CSME_CLM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CSME_CLM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CSME_CLM_batch_relate( Escher_iHandle_t );

void ooaofooa_CSME_CLM_R2950_Link( ooaofooa_CSME_CIE *, ooaofooa_I_EXE *, ooaofooa_CSME_CLM * );
void ooaofooa_CSME_CLM_R2950_Unlink( ooaofooa_CSME_CIE *, ooaofooa_I_EXE *, ooaofooa_CSME_CLM * );


#define ooaofooa_CSME_CLM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CSME_CLM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CSME_CLM_CLASS_H */


