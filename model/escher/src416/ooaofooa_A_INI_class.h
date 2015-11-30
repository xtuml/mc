/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_INI_class.h
 *
 * Class:       Initial Node  (A_INI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_INI_CLASS_H
#define OOAOFOOA_A_INI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Initial Node  (A_INI)
 */
struct ooaofooa_A_INI {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_CTL * A_CTL_R1106;
};
void ooaofooa_A_INI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_INI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_INI_batch_relate( Escher_iHandle_t );

void ooaofooa_A_INI_R1106_Link( ooaofooa_A_CTL *, ooaofooa_A_INI * );
void ooaofooa_A_INI_R1106_Unlink( ooaofooa_A_CTL *, ooaofooa_A_INI * );


#define ooaofooa_A_INI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_INI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_INI_CLASS_H */


