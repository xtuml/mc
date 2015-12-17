/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CEC_class.h
 *
 * Class:       Create Event to Creator  (E_CEC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_CEC_CLASS_H
#define OOAOFOOA_E_CEC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Create Event to Creator  (E_CEC)
 */
struct ooaofooa_E_CEC {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_E_CSME * E_CSME_R704;
};
void ooaofooa_E_CEC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_CEC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_CEC_batch_relate( Escher_iHandle_t );

void ooaofooa_E_CEC_R704_Link( ooaofooa_E_CSME *, ooaofooa_E_CEC * );
void ooaofooa_E_CEC_R704_Unlink( ooaofooa_E_CSME *, ooaofooa_E_CEC * );


#define ooaofooa_E_CEC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_CEC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_CEC_CLASS_H */


