/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_FNV_class.h
 *
 * Class:       Function Value  (V_FNV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_FNV_CLASS_H
#define OOAOFOOA_V_FNV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Value  (V_FNV)
 */
struct ooaofooa_V_FNV {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Sync_ID;  
  bool ParmListOK;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  Escher_ObjectSet_s V_PAR_R817_has;
  ooaofooa_S_SYNC * S_SYNC_R827;
};
void ooaofooa_V_FNV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_FNV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_FNV_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_FNV * ooaofooa_V_FNV_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_V_FNV_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_FNV * );
void ooaofooa_V_FNV_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_FNV * );
#define ooaofooa_V_PAR_R817_From_V_FNV_has( V_FNV ) ( &((V_FNV)->V_PAR_R817_has) )
void ooaofooa_V_FNV_R827_Link( ooaofooa_S_SYNC *, ooaofooa_V_FNV * );
void ooaofooa_V_FNV_R827_Unlink( ooaofooa_S_SYNC *, ooaofooa_V_FNV * );


#define ooaofooa_V_FNV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_FNV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_FNV_CLASS_H */


