/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SEVT_class.h
 *
 * Class:       SEM Event  (SM_SEVT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_SEVT_CLASS_H
#define OOAOFOOA_SM_SEVT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   SEM Event  (SM_SEVT)
 */
struct ooaofooa_SM_SEVT {

  /* application analysis class attributes */
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  

  /* relationship storage */
  Escher_ObjectSet_s SM_SEME_R503;
  ooaofooa_SM_EVT * SM_EVT_R525;
  void * R526_subtype;
  Escher_ClassNumber_t R526_object_id;
};
void ooaofooa_SM_SEVT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_SEVT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_SEVT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_SEVT * ooaofooa_SM_SEVT_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t );

#define ooaofooa_SM_SEME_R503_From_SM_SEVT( SM_SEVT ) ( &((SM_SEVT)->SM_SEME_R503) )
void ooaofooa_SM_SEVT_R525_Link( ooaofooa_SM_EVT *, ooaofooa_SM_SEVT * );
void ooaofooa_SM_SEVT_R525_Unlink( ooaofooa_SM_EVT *, ooaofooa_SM_SEVT * );

/* Accessors to SM_SEVT[R526] subtypes */
#define ooaofooa_SM_NLEVT_R526_From_SM_SEVT( SM_SEVT ) \
   ( (((SM_SEVT)->R526_object_id) == ooaofooa_SM_NLEVT_CLASS_NUMBER) ? \
     ((ooaofooa_SM_NLEVT *)((SM_SEVT)->R526_subtype)) : (0) )
#define ooaofooa_SM_LEVT_R526_From_SM_SEVT( SM_SEVT ) \
   ( (((SM_SEVT)->R526_object_id) == ooaofooa_SM_LEVT_CLASS_NUMBER) ? \
     ((ooaofooa_SM_LEVT *)((SM_SEVT)->R526_subtype)) : (0) )
#define ooaofooa_SM_SGEVT_R526_From_SM_SEVT( SM_SEVT ) \
   ( (((SM_SEVT)->R526_object_id) == ooaofooa_SM_SGEVT_CLASS_NUMBER) ? \
     ((ooaofooa_SM_SGEVT *)((SM_SEVT)->R526_subtype)) : (0) )



#define ooaofooa_SM_SEVT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_SEVT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_SEVT_CLASS_H */


