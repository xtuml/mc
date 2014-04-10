/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CEA_class.h
 *
 * Class:       Create Event to Class  (E_CEA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_CEA_CLASS_H
#define OOAOFOOA_E_CEA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Create Event to Class  (E_CEA)
 */
struct ooaofooa_E_CEA {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_E_CSME * E_CSME_R704;
};
void ooaofooa_E_CEA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_CEA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_CEA_batch_relate( Escher_iHandle_t );

void ooaofooa_E_CEA_R704_Link( ooaofooa_E_CSME *, ooaofooa_E_CEA * );
void ooaofooa_E_CEA_R704_Unlink( ooaofooa_E_CSME *, ooaofooa_E_CEA * );


#define ooaofooa_E_CEA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_CEA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_CEA_CLASS_H */


