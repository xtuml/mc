/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_ATE_class.h
 *
 * Class:       Accept Time Event Action  (A_ATE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_ATE_CLASS_H
#define OOAOFOOA_A_ATE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Accept Time Event Action  (A_ATE)
 */
struct ooaofooa_A_ATE {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_AE * A_AE_R1112;
};
void ooaofooa_A_ATE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_ATE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_ATE_batch_relate( Escher_iHandle_t );

void ooaofooa_A_ATE_R1112_Link( ooaofooa_A_AE *, ooaofooa_A_ATE * );
void ooaofooa_A_ATE_R1112_Unlink( ooaofooa_A_AE *, ooaofooa_A_ATE * );


#define ooaofooa_A_ATE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_ATE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_ATE_CLASS_H */


