/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_FF_class.h
 *
 * Class:       Flow Final Node  (A_FF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_FF_CLASS_H
#define OOAOFOOA_A_FF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Flow Final Node  (A_FF)
 */
struct ooaofooa_A_FF {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_CTL * A_CTL_R1106;
};
void ooaofooa_A_FF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_FF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_FF_batch_relate( Escher_iHandle_t );

void ooaofooa_A_FF_R1106_Link( ooaofooa_A_CTL *, ooaofooa_A_FF * );
void ooaofooa_A_FF_R1106_Unlink( ooaofooa_A_CTL *, ooaofooa_A_FF * );


#define ooaofooa_A_FF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_FF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_FF_CLASS_H */


