/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_EPR_class.h
 *
 * Class:       Event Parameter Reference  (V_EPR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_EPR_CLASS_H
#define OOAOFOOA_V_EPR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Parameter Reference  (V_EPR)
 */
struct ooaofooa_V_EPR {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMedi_ID;  
  Escher_UniqueID_t PP_Id;  

  /* relationship storage */
  ooaofooa_V_EDV * V_EDV_R834;
  ooaofooa_SM_EVTDI * SM_EVTDI_R846;
  ooaofooa_C_PP * C_PP_R847;
};
void ooaofooa_V_EPR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_EPR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_EPR_batch_relate( Escher_iHandle_t );

void ooaofooa_V_EPR_R834_Link( ooaofooa_V_EDV *, ooaofooa_V_EPR * );
void ooaofooa_V_EPR_R834_Unlink( ooaofooa_V_EDV *, ooaofooa_V_EPR * );
void ooaofooa_V_EPR_R846_Link( ooaofooa_SM_EVTDI *, ooaofooa_V_EPR * );
void ooaofooa_V_EPR_R846_Unlink( ooaofooa_SM_EVTDI *, ooaofooa_V_EPR * );
void ooaofooa_V_EPR_R847_Link( ooaofooa_C_PP *, ooaofooa_V_EPR * );
void ooaofooa_V_EPR_R847_Unlink( ooaofooa_C_PP *, ooaofooa_V_EPR * );


#define ooaofooa_V_EPR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_EPR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_EPR_CLASS_H */


