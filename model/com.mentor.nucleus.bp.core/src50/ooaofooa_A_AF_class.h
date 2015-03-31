/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AF_class.h
 *
 * Class:       Activity Final Node  (A_AF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_AF_CLASS_H
#define OOAOFOOA_A_AF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Activity Final Node  (A_AF)
 */
struct ooaofooa_A_AF {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_CTL * A_CTL_R1106;
};
void ooaofooa_A_AF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_AF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_AF_batch_relate( Escher_iHandle_t );

void ooaofooa_A_AF_R1106_Link( ooaofooa_A_CTL *, ooaofooa_A_AF * );
void ooaofooa_A_AF_R1106_Unlink( ooaofooa_A_CTL *, ooaofooa_A_AF * );


#define ooaofooa_A_AF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_AF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_AF_CLASS_H */


