/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SEME_class.h
 *
 * Class:       State Event Matrix Entry  (SM_SEME)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_SEME_CLASS_H
#define OOAOFOOA_SM_SEME_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   State Event Matrix Entry  (SM_SEME)
 */
struct ooaofooa_SM_SEME {

  /* application analysis class attributes */
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  

  /* relationship storage */
  ooaofooa_SM_STATE * SM_STATE_R503_is_received_by;
  ooaofooa_SM_SEVT * SM_SEVT_R503_receives;
  void * R504_subtype;
  Escher_ClassNumber_t R504_object_id;
};
void ooaofooa_SM_SEME_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_SEME_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_SEME_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_SEME * ooaofooa_SM_SEME_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_SM_SEME_R503_Link( ooaofooa_SM_STATE *, ooaofooa_SM_SEVT *, ooaofooa_SM_SEME * );
void ooaofooa_SM_SEME_R503_Unlink( ooaofooa_SM_STATE *, ooaofooa_SM_SEVT *, ooaofooa_SM_SEME * );

/* Accessors to SM_SEME[R504] subtypes */
#define ooaofooa_SM_EIGN_R504_From_SM_SEME( SM_SEME ) \
   ( (((SM_SEME)->R504_object_id) == ooaofooa_SM_EIGN_CLASS_NUMBER) ? \
     ((ooaofooa_SM_EIGN *)((SM_SEME)->R504_subtype)) : (0) )
/* Note:  SM_SEME->SM_EIGN[R504] not navigated */
#define ooaofooa_SM_CH_R504_From_SM_SEME( SM_SEME ) \
   ( (((SM_SEME)->R504_object_id) == ooaofooa_SM_CH_CLASS_NUMBER) ? \
     ((ooaofooa_SM_CH *)((SM_SEME)->R504_subtype)) : (0) )
/* Note:  SM_SEME->SM_CH[R504] not navigated */
#define ooaofooa_SM_NSTXN_R504_From_SM_SEME( SM_SEME ) \
   ( (((SM_SEME)->R504_object_id) == ooaofooa_SM_NSTXN_CLASS_NUMBER) ? \
     ((ooaofooa_SM_NSTXN *)((SM_SEME)->R504_subtype)) : (0) )
/* Note:  SM_SEME->SM_NSTXN[R504] not navigated */



#define ooaofooa_SM_SEME_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_SEME_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_SEME_CLASS_H */


