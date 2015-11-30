/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_MEALY_class.h
 *
 * Class:       Mealy State Machine  (SM_MEALY)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_MEALY_CLASS_H
#define OOAOFOOA_SM_MEALY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Mealy State Machine  (SM_MEALY)
 */
struct ooaofooa_SM_MEALY {

  /* application analysis class attributes */
  Escher_UniqueID_t SM_ID;  

  /* relationship storage */
  ooaofooa_SM_SM * SM_SM_R510;
  Escher_ObjectSet_s SM_MEAH_R512;
};
void ooaofooa_SM_MEALY_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_MEALY_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_MEALY_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_MEALY * ooaofooa_SM_MEALY_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SM_MEALY_R510_Link( ooaofooa_SM_SM *, ooaofooa_SM_MEALY * );
void ooaofooa_SM_MEALY_R510_Unlink( ooaofooa_SM_SM *, ooaofooa_SM_MEALY * );
#define ooaofooa_SM_MEAH_R512_From_SM_MEALY( SM_MEALY ) ( &((SM_MEALY)->SM_MEAH_R512) )


#define ooaofooa_SM_MEALY_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_MEALY_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_MEALY_CLASS_H */


