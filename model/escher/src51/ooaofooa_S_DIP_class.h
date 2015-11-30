/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DIP_class.h
 *
 * Class:       Data Type in Package  (S_DIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_DIP_CLASS_H
#define OOAOFOOA_S_DIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Data Type in Package  (S_DIP)
 */
struct ooaofooa_S_DIP {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_S_DT * S_DT_R39_contains;
  ooaofooa_S_DPK * S_DPK_R39_is_contained_in;
};
void ooaofooa_S_DIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_DIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_DIP_batch_relate( Escher_iHandle_t );

void ooaofooa_S_DIP_R39_Link( ooaofooa_S_DT *, ooaofooa_S_DPK *, ooaofooa_S_DIP * );
void ooaofooa_S_DIP_R39_Unlink( ooaofooa_S_DT *, ooaofooa_S_DPK *, ooaofooa_S_DIP * );


#define ooaofooa_S_DIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_DIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_DIP_CLASS_H */


