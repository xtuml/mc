/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AEA_class.h
 *
 * Class:       Accept Event Action  (A_AEA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_AEA_CLASS_H
#define OOAOFOOA_A_AEA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Accept Event Action  (A_AEA)
 */
struct ooaofooa_A_AEA {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_AE * A_AE_R1112;
};
void ooaofooa_A_AEA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_AEA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_AEA_batch_relate( Escher_iHandle_t );

void ooaofooa_A_AEA_R1112_Link( ooaofooa_A_AE *, ooaofooa_A_AEA * );
void ooaofooa_A_AEA_R1112_Unlink( ooaofooa_A_AE *, ooaofooa_A_AEA * );


#define ooaofooa_A_AEA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_AEA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_AEA_CLASS_H */


