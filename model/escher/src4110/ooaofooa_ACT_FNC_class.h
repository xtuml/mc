/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FNC_class.h
 *
 * Class:       Function Invocation  (ACT_FNC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_FNC_CLASS_H
#define OOAOFOOA_ACT_FNC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Invocation  (ACT_FNC)
 */
struct ooaofooa_ACT_FNC {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Sync_ID;  
  i_t functionNameLineNumber;  
  i_t functionNameColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  Escher_ObjectSet_s V_PAR_R669_takes;
  ooaofooa_S_SYNC * S_SYNC_R675_is_an_invocation_of;
};
void ooaofooa_ACT_FNC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_FNC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_FNC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_FNC * ooaofooa_ACT_FNC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_FNC_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_FNC * );
void ooaofooa_ACT_FNC_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_FNC * );
#define ooaofooa_V_PAR_R669_From_ACT_FNC_takes( ACT_FNC ) ( &((ACT_FNC)->V_PAR_R669_takes) )
void ooaofooa_ACT_FNC_R675_Link( ooaofooa_S_SYNC *, ooaofooa_ACT_FNC * );
void ooaofooa_ACT_FNC_R675_Unlink( ooaofooa_S_SYNC *, ooaofooa_ACT_FNC * );


#define ooaofooa_ACT_FNC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_FNC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_FNC_CLASS_H */


