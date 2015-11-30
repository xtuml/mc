/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GAR_class.h
 *
 * Class:       Generate to Class  (E_GAR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_GAR_CLASS_H
#define OOAOFOOA_E_GAR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Generate to Class  (E_GAR)
 */
struct ooaofooa_E_GAR {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_E_GSME * E_GSME_R705;
};
void ooaofooa_E_GAR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_GAR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_GAR_batch_relate( Escher_iHandle_t );

void ooaofooa_E_GAR_R705_Link( ooaofooa_E_GSME *, ooaofooa_E_GAR * );
void ooaofooa_E_GAR_R705_Unlink( ooaofooa_E_GSME *, ooaofooa_E_GAR * );


#define ooaofooa_E_GAR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_GAR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_GAR_CLASS_H */


