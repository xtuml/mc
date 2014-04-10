/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_E_class.h
 *
 * Class:       Extend  (UC_E)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_UC_E_CLASS_H
#define OOAOFOOA_UC_E_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extend  (UC_E)
 */
struct ooaofooa_UC_E {

  /* application analysis class attributes */
  Escher_UniqueID_t Assoc_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_UC_UCA * UC_UCA_R1210;
};
void ooaofooa_UC_E_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_UC_E_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_UC_E_batch_relate( Escher_iHandle_t );

void ooaofooa_UC_E_R1210_Link( ooaofooa_UC_UCA *, ooaofooa_UC_E * );
void ooaofooa_UC_E_R1210_Unlink( ooaofooa_UC_UCA *, ooaofooa_UC_E * );


#define ooaofooa_UC_E_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_UC_E_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_UC_E_CLASS_H */


