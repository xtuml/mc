/*----------------------------------------------------------------------------
 * File:  ooaofooa_SP_SE_class.h
 *
 * Class:       Searchable Element  (SP_SE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SP_SE_CLASS_H
#define OOAOFOOA_SP_SE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Searchable Element  (SP_SE)
 */
struct ooaofooa_SP_SE {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Participant_Id;  
  c_t modelRootId[ESCHER_SYS_MAX_STRING_LEN];  
  c_t className[ESCHER_SYS_MAX_STRING_LEN];  
  i_t elementId;  

  /* relationship storage */
  ooaofooa_SP_SP * SP_SP_R9700_participates_as;
  void * R9702_subtype;
  Escher_ClassNumber_t R9702_object_id;
};
void ooaofooa_SP_SE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SP_SE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SP_SE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SP_SE * ooaofooa_SP_SE_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SP_SE_R9700_Link_provides_participation_for( ooaofooa_SP_SP *, ooaofooa_SP_SE * );
void ooaofooa_SP_SE_R9700_Unlink_provides_participation_for( ooaofooa_SP_SP *, ooaofooa_SP_SE * );

/* Accessors to SP_SE[R9702] subtypes */
#define ooaofooa_SP_NS_R9702_From_SP_SE( SP_SE ) \
   ( (((SP_SE)->R9702_object_id) == ooaofooa_SP_NS_CLASS_NUMBER) ? \
     ((ooaofooa_SP_NS *)((SP_SE)->R9702_subtype)) : (0) )
/* Note:  SP_SE->SP_NS[R9702] not navigated */
#define ooaofooa_SP_ALS_R9702_From_SP_SE( SP_SE ) \
   ( (((SP_SE)->R9702_object_id) == ooaofooa_SP_ALS_CLASS_NUMBER) ? \
     ((ooaofooa_SP_ALS *)((SP_SE)->R9702_subtype)) : (0) )
/* Note:  SP_SE->SP_ALS[R9702] not navigated */
#define ooaofooa_SP_DS_R9702_From_SP_SE( SP_SE ) \
   ( (((SP_SE)->R9702_object_id) == ooaofooa_SP_DS_CLASS_NUMBER) ? \
     ((ooaofooa_SP_DS *)((SP_SE)->R9702_subtype)) : (0) )
/* Note:  SP_SE->SP_DS[R9702] not navigated */



#define ooaofooa_SP_SE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SP_SE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SP_SE_CLASS_H */


