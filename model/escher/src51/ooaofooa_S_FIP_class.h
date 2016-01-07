/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_FIP_class.h
 *
 * Class:       Function in Package  (S_FIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_FIP_CLASS_H
#define OOAOFOOA_S_FIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function in Package  (S_FIP)
 */
struct ooaofooa_S_FIP {

  /* application analysis class attributes */
  Escher_UniqueID_t FunPack_ID;  
  Escher_UniqueID_t Sync_ID;  

  /* relationship storage */
  ooaofooa_S_FPK * S_FPK_R31_is_contained_in;
  ooaofooa_S_SYNC * S_SYNC_R31_contains;
};
void ooaofooa_S_FIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_FIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_FIP_batch_relate( Escher_iHandle_t );

void ooaofooa_S_FIP_R31_Link( ooaofooa_S_FPK *, ooaofooa_S_SYNC *, ooaofooa_S_FIP * );
void ooaofooa_S_FIP_R31_Unlink( ooaofooa_S_FPK *, ooaofooa_S_SYNC *, ooaofooa_S_FIP * );


#define ooaofooa_S_FIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_FIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_FIP_CLASS_H */


