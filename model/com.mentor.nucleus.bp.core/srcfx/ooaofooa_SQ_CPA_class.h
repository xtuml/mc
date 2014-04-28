/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_CPA_class.h
 *
 * Class:       Class Participant Attribute  (SQ_CPA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_CPA_CLASS_H
#define OOAOFOOA_SQ_CPA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class Participant Attribute  (SQ_CPA)
 */
struct ooaofooa_SQ_CPA {

  /* application analysis class attributes */
  Escher_UniqueID_t Ia_ID;  
  c_t * Name;  
  c_t * Type;  
  Escher_UniqueID_t Part_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_SQ_CP * SQ_CP_R935_belongs_to;
  void * R947_subtype;
  Escher_ClassNumber_t R947_object_id;
};
void ooaofooa_SQ_CPA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_CPA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_CPA_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_CPA * ooaofooa_SQ_CPA_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_CPA_R935_Link_may_have( ooaofooa_SQ_CP *, ooaofooa_SQ_CPA * );
void ooaofooa_SQ_CPA_R935_Unlink_may_have( ooaofooa_SQ_CP *, ooaofooa_SQ_CPA * );

/* Accessors to SQ_CPA[R947] subtypes */
#define ooaofooa_SQ_IA_R947_From_SQ_CPA( SQ_CPA ) \
   ( (((SQ_CPA)->R947_object_id) == ooaofooa_SQ_IA_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_IA *)((SQ_CPA)->R947_subtype)) : (0) )
/* Note:  SQ_CPA->SQ_IA[R947] not navigated */
#define ooaofooa_SQ_FA_R947_From_SQ_CPA( SQ_CPA ) \
   ( (((SQ_CPA)->R947_object_id) == ooaofooa_SQ_FA_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_FA *)((SQ_CPA)->R947_subtype)) : (0) )
/* Note:  SQ_CPA->SQ_FA[R947] not navigated */



#define ooaofooa_SQ_CPA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_CPA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_CPA_CLASS_H */


