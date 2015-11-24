/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DIS_class.h
 *
 * Class:       Datatype In Suppression  (S_DIS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_DIS_CLASS_H
#define OOAOFOOA_S_DIS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Datatype In Suppression  (S_DIS)
 */
struct ooaofooa_S_DIS {

  /* application analysis class attributes */
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_S_DOM * S_DOM_R47_is_suppressed_in;
  ooaofooa_S_DT * S_DT_R47_contains_suppressed;
};
void ooaofooa_S_DIS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_DIS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_DIS_batch_relate( Escher_iHandle_t );

void ooaofooa_S_DIS_R47_Link( ooaofooa_S_DOM *, ooaofooa_S_DT *, ooaofooa_S_DIS * );
void ooaofooa_S_DIS_R47_Unlink( ooaofooa_S_DOM *, ooaofooa_S_DT *, ooaofooa_S_DIS * );


#define ooaofooa_S_DIS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_DIS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_DIS_CLASS_H */


