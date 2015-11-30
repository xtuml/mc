/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GSME_class.h
 *
 * Class:       Generate SM Event Statement  (E_GSME)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_GSME_CLASS_H
#define OOAOFOOA_E_GSME_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Generate SM Event Statement  (E_GSME)
 */
struct ooaofooa_E_GSME {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t SMevt_ID;  

  /* relationship storage */
  ooaofooa_E_GES * E_GES_R703;
  void * R705_subtype;
  Escher_ClassNumber_t R705_object_id;
  ooaofooa_SM_EVT * SM_EVT_R707_generates;
};
void ooaofooa_E_GSME_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_GSME_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_GSME_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_E_GSME * ooaofooa_E_GSME_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_E_GSME_R703_Link( ooaofooa_E_GES *, ooaofooa_E_GSME * );
void ooaofooa_E_GSME_R703_Unlink( ooaofooa_E_GES *, ooaofooa_E_GSME * );

/* Accessors to E_GSME[R705] subtypes */
#define ooaofooa_E_GEN_R705_From_E_GSME( E_GSME ) \
   ( (((E_GSME)->R705_object_id) == ooaofooa_E_GEN_CLASS_NUMBER) ? \
     ((ooaofooa_E_GEN *)((E_GSME)->R705_subtype)) : (0) )
#define ooaofooa_E_GAR_R705_From_E_GSME( E_GSME ) \
   ( (((E_GSME)->R705_object_id) == ooaofooa_E_GAR_CLASS_NUMBER) ? \
     ((ooaofooa_E_GAR *)((E_GSME)->R705_subtype)) : (0) )
#define ooaofooa_E_GEC_R705_From_E_GSME( E_GSME ) \
   ( (((E_GSME)->R705_object_id) == ooaofooa_E_GEC_CLASS_NUMBER) ? \
     ((ooaofooa_E_GEC *)((E_GSME)->R705_subtype)) : (0) )

void ooaofooa_E_GSME_R707_Link( ooaofooa_SM_EVT *, ooaofooa_E_GSME * );
void ooaofooa_E_GSME_R707_Unlink( ooaofooa_SM_EVT *, ooaofooa_E_GSME * );


#define ooaofooa_E_GSME_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_GSME_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_GSME_CLASS_H */


