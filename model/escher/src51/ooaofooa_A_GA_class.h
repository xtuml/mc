/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_GA_class.h
 *
 * Class:       Activity Diagram Action  (A_GA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_GA_CLASS_H
#define OOAOFOOA_A_GA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Activity Diagram Action  (A_GA)
 */
struct ooaofooa_A_GA {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_ACT * A_ACT_R1107;
};
void ooaofooa_A_GA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_GA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_GA_batch_relate( Escher_iHandle_t );

void ooaofooa_A_GA_R1107_Link( ooaofooa_A_ACT *, ooaofooa_A_GA * );
void ooaofooa_A_GA_R1107_Unlink( ooaofooa_A_ACT *, ooaofooa_A_GA * );


#define ooaofooa_A_GA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_GA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_GA_CLASS_H */


