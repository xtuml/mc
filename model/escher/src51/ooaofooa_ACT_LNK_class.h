/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_LNK_class.h
 *
 * Class:       Chain Link  (ACT_LNK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_LNK_CLASS_H
#define OOAOFOOA_ACT_LNK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Chain Link  (ACT_LNK)
 */
struct ooaofooa_ACT_LNK {

  /* application analysis class attributes */
  Escher_UniqueID_t Link_ID;  
  c_t * Rel_Phrase;  
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t Next_Link_ID;  
  sys_Multiplicity_t Mult;  
  Escher_UniqueID_t Obj_ID;  
  i_t modelClassKeyLettersLineNumber;  
  i_t modelClassKeyLettersColumn;  
  i_t associationNumberLineNumber;  
  i_t associationNumberColumn;  
  i_t phraseLineNumber;  
  i_t phraseColumn;  

  /* relationship storage */
  ooaofooa_ACT_LNK * ACT_LNK_R604_precedes;
  ooaofooa_ACT_LNK * ACT_LNK_R604_succeeds;
  ooaofooa_ACT_SEL * ACT_SEL_R637;
  ooaofooa_O_OBJ * O_OBJ_R678_specifies_instances_of;
  ooaofooa_R_REL * R_REL_R681_specifies_traversal_of;
  ooaofooa_TE_LNK * TE_LNK_R2042;
};
void ooaofooa_ACT_LNK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_LNK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_LNK_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_LNK * ooaofooa_ACT_LNK_AnyWhere1( Escher_UniqueID_t );

      
/*
 * R604 is Simple Reflexive:  0..1:0..1
 *  Formalizing ACT_LNK precedes participant
 *  Participant ACT_LNK succeeds formalizer
 */
/* Navigation phrase:  R604.'precedes' */
void ooaofooa_ACT_LNK_R604_Link_precedes( ooaofooa_ACT_LNK *, ooaofooa_ACT_LNK * );
void ooaofooa_ACT_LNK_R604_Unlink_precedes( ooaofooa_ACT_LNK *, ooaofooa_ACT_LNK * );
/* Navigation phrase:  R604.'succeeds' */
void ooaofooa_ACT_LNK_R604_Link_succeeds( ooaofooa_ACT_LNK *, ooaofooa_ACT_LNK * );
void ooaofooa_ACT_LNK_R604_Unlink_succeeds( ooaofooa_ACT_LNK *, ooaofooa_ACT_LNK * );
void ooaofooa_ACT_LNK_R637_Link_starts_with( ooaofooa_ACT_SEL *, ooaofooa_ACT_LNK * );
void ooaofooa_ACT_LNK_R637_Unlink_starts_with( ooaofooa_ACT_SEL *, ooaofooa_ACT_LNK * );
void ooaofooa_ACT_LNK_R678_Link( ooaofooa_O_OBJ *, ooaofooa_ACT_LNK * );
void ooaofooa_ACT_LNK_R678_Unlink( ooaofooa_O_OBJ *, ooaofooa_ACT_LNK * );
void ooaofooa_ACT_LNK_R681_Link( ooaofooa_R_REL *, ooaofooa_ACT_LNK * );
void ooaofooa_ACT_LNK_R681_Unlink( ooaofooa_R_REL *, ooaofooa_ACT_LNK * );


#define ooaofooa_ACT_LNK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_LNK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_LNK_CLASS_H */


