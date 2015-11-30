/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CEI_class.h
 *
 * Class:       Create Event to Instance  (E_CEI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_CEI_CLASS_H
#define OOAOFOOA_E_CEI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Create Event to Instance  (E_CEI)
 */
struct ooaofooa_E_CEI {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_E_CSME * E_CSME_R704;
  ooaofooa_V_VAR * V_VAR_R711_has_recipient;
};
void ooaofooa_E_CEI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_CEI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_CEI_batch_relate( Escher_iHandle_t );

void ooaofooa_E_CEI_R704_Link( ooaofooa_E_CSME *, ooaofooa_E_CEI * );
void ooaofooa_E_CEI_R704_Unlink( ooaofooa_E_CSME *, ooaofooa_E_CEI * );
void ooaofooa_E_CEI_R711_Link( ooaofooa_V_VAR *, ooaofooa_E_CEI * );
void ooaofooa_E_CEI_R711_Unlink( ooaofooa_V_VAR *, ooaofooa_E_CEI * );


#define ooaofooa_E_CEI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_CEI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_CEI_CLASS_H */


