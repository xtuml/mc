/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_G_class.h
 *
 * Class:       Generalization  (UC_G)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_UC_G_CLASS_H
#define OOAOFOOA_UC_G_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Generalization  (UC_G)
 */
struct ooaofooa_UC_G {

  /* application analysis class attributes */
  Escher_UniqueID_t Assoc_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_UC_UCA * UC_UCA_R1210;
};
void ooaofooa_UC_G_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_UC_G_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_UC_G_batch_relate( Escher_iHandle_t );

void ooaofooa_UC_G_R1210_Link( ooaofooa_UC_UCA *, ooaofooa_UC_G * );
void ooaofooa_UC_G_R1210_Unlink( ooaofooa_UC_UCA *, ooaofooa_UC_G * );


#define ooaofooa_UC_G_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_UC_G_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_UC_G_CLASS_H */


