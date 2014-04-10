/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CSME_class.h
 *
 * Class:       Create SM Event Statement  (E_CSME)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_CSME_CLASS_H
#define OOAOFOOA_E_CSME_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Create SM Event Statement  (E_CSME)
 */
struct ooaofooa_E_CSME {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t SMevt_ID;  

  /* relationship storage */
  ooaofooa_E_CES * E_CES_R702;
  void * R704_subtype;
  Escher_ClassNumber_t R704_object_id;
  ooaofooa_SM_EVT * SM_EVT_R706_creates;
};
void ooaofooa_E_CSME_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_CSME_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_CSME_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_E_CSME * ooaofooa_E_CSME_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_E_CSME_R702_Link( ooaofooa_E_CES *, ooaofooa_E_CSME * );
void ooaofooa_E_CSME_R702_Unlink( ooaofooa_E_CES *, ooaofooa_E_CSME * );

/* Accessors to E_CSME[R704] subtypes */
#define ooaofooa_E_CEI_R704_From_E_CSME( E_CSME ) \
   ( (((E_CSME)->R704_object_id) == ooaofooa_E_CEI_CLASS_NUMBER) ? \
     ((ooaofooa_E_CEI *)((E_CSME)->R704_subtype)) : (0) )
#define ooaofooa_E_CEA_R704_From_E_CSME( E_CSME ) \
   ( (((E_CSME)->R704_object_id) == ooaofooa_E_CEA_CLASS_NUMBER) ? \
     ((ooaofooa_E_CEA *)((E_CSME)->R704_subtype)) : (0) )
#define ooaofooa_E_CEC_R704_From_E_CSME( E_CSME ) \
   ( (((E_CSME)->R704_object_id) == ooaofooa_E_CEC_CLASS_NUMBER) ? \
     ((ooaofooa_E_CEC *)((E_CSME)->R704_subtype)) : (0) )

void ooaofooa_E_CSME_R706_Link( ooaofooa_SM_EVT *, ooaofooa_E_CSME * );
void ooaofooa_E_CSME_R706_Unlink( ooaofooa_SM_EVT *, ooaofooa_E_CSME * );


#define ooaofooa_E_CSME_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_CSME_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_CSME_CLASS_H */


