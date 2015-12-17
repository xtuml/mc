/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_ESS_class.h
 *
 * Class:       Event Specification Statement  (E_ESS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_ESS_CLASS_H
#define OOAOFOOA_E_ESS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Specification Statement  (E_ESS)
 */
struct ooaofooa_E_ESS {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  bool ParmListOK;  
  bool PEIndicated;  
  i_t eventDerivedLabelLineNumber;  
  i_t eventDerivedLabelColumn;  
  i_t eventMeaningLineNumber;  
  i_t eventMeaningColumn;  
  i_t eventTargetKeyLettersLineNumber;  
  i_t eventTargetKeyLettersColumn;  
  i_t firstEventDataItemNameLineNumber;  
  i_t firstEventDataItemNameColumn;  
  i_t currentLaterEventDataItemNameLineNumber;  
  i_t currentLaterEventDataItemNameColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  Escher_ObjectSet_s V_PAR_R700;
  void * R701_subtype;
  Escher_ClassNumber_t R701_object_id;
};
void ooaofooa_E_ESS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_ESS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_ESS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_E_ESS * ooaofooa_E_ESS_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_E_ESS_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_E_ESS * );
void ooaofooa_E_ESS_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_E_ESS * );
#define ooaofooa_V_PAR_R700_From_E_ESS( E_ESS ) ( &((E_ESS)->V_PAR_R700) )

/* Accessors to E_ESS[R701] subtypes */
#define ooaofooa_E_CES_R701_From_E_ESS( E_ESS ) \
   ( (((E_ESS)->R701_object_id) == ooaofooa_E_CES_CLASS_NUMBER) ? \
     ((ooaofooa_E_CES *)((E_ESS)->R701_subtype)) : (0) )
#define ooaofooa_E_GES_R701_From_E_ESS( E_ESS ) \
   ( (((E_ESS)->R701_object_id) == ooaofooa_E_GES_CLASS_NUMBER) ? \
     ((ooaofooa_E_GES *)((E_ESS)->R701_subtype)) : (0) )



#define ooaofooa_E_ESS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_ESS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_ESS_CLASS_H */


