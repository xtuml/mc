/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_AH_class.h
 *
 * Class:       Action Home  (SM_AH)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_AH_CLASS_H
#define OOAOFOOA_SM_AH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Action Home  (SM_AH)
 */
struct ooaofooa_SM_AH {

  /* application analysis class attributes */
  Escher_UniqueID_t Act_ID;  
  Escher_UniqueID_t SM_ID;  

  /* relationship storage */
  void * R513_subtype;
  Escher_ClassNumber_t R513_object_id;
  ooaofooa_SM_ACT * SM_ACT_R514_houses;
};
void ooaofooa_SM_AH_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_AH_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_AH_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_AH * ooaofooa_SM_AH_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );


/* Accessors to SM_AH[R513] subtypes */
#define ooaofooa_SM_MOAH_R513_From_SM_AH( SM_AH ) \
   ( (((SM_AH)->R513_object_id) == ooaofooa_SM_MOAH_CLASS_NUMBER) ? \
     ((ooaofooa_SM_MOAH *)((SM_AH)->R513_subtype)) : (0) )
#define ooaofooa_SM_MEAH_R513_From_SM_AH( SM_AH ) \
   ( (((SM_AH)->R513_object_id) == ooaofooa_SM_MEAH_CLASS_NUMBER) ? \
     ((ooaofooa_SM_MEAH *)((SM_AH)->R513_subtype)) : (0) )
#define ooaofooa_SM_TAH_R513_From_SM_AH( SM_AH ) \
   ( (((SM_AH)->R513_object_id) == ooaofooa_SM_TAH_CLASS_NUMBER) ? \
     ((ooaofooa_SM_TAH *)((SM_AH)->R513_subtype)) : (0) )

void ooaofooa_SM_AH_R514_Link_resides_in( ooaofooa_SM_ACT *, ooaofooa_SM_AH * );
void ooaofooa_SM_AH_R514_Unlink_resides_in( ooaofooa_SM_ACT *, ooaofooa_SM_AH * );


#define ooaofooa_SM_AH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_AH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_AH_CLASS_H */


