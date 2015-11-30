/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_AW_class.h
 *
 * Class:       Automatic Wiring  (S_AW)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_AW_CLASS_H
#define OOAOFOOA_S_AW_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Automatic Wiring  (S_AW)
 */
struct ooaofooa_S_AW {

  /* application analysis class attributes */
  Escher_UniqueID_t Brg_ID;  
  Escher_UniqueID_t Sync_ID;  

  /* relationship storage */
  ooaofooa_S_BRG * S_BRG_R3200_for_bridge_execution;
  ooaofooa_S_SYNC * S_SYNC_R3201_connects_bridge_execution_to;
};
void ooaofooa_S_AW_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_AW_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_AW_batch_relate( Escher_iHandle_t );

void ooaofooa_S_AW_R3200_Link_is_executed_through( ooaofooa_S_BRG *, ooaofooa_S_AW * );
void ooaofooa_S_AW_R3200_Unlink_is_executed_through( ooaofooa_S_BRG *, ooaofooa_S_AW * );
void ooaofooa_S_AW_R3201_Link_provides_execution_for( ooaofooa_S_SYNC *, ooaofooa_S_AW * );
void ooaofooa_S_AW_R3201_Unlink_provides_execution_for( ooaofooa_S_SYNC *, ooaofooa_S_AW * );


#define ooaofooa_S_AW_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_AW_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_AW_CLASS_H */


