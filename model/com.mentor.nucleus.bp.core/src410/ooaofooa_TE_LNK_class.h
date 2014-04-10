/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_LNK_class.h
 *
 * Class:       Extended Chain Link  (TE_LNK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_LNK_CLASS_H
#define OOAOFOOA_TE_LNK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Chain Link  (TE_LNK)
 */
struct ooaofooa_TE_LNK {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  i_t Mult;  
  c_t rel_phrase[ESCHER_SYS_MAX_STRING_LEN];  
  i_t rel_number;  
  c_t OAL[ESCHER_SYS_MAX_STRING_LEN];  
  c_t buffer[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t next_ID;  
  Escher_UniqueID_t Link_ID;  
  c_t linkage[ESCHER_SYS_MAX_STRING_LEN];  
  c_t iterator[ESCHER_SYS_MAX_STRING_LEN];  
  c_t left[ESCHER_SYS_MAX_STRING_LEN];  
  c_t te_classGeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  bool first;  
  bool last;  
  c_t assoc_type[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_ACT_LNK * ACT_LNK_R2042;
  ooaofooa_TE_SELECT_RELATED * TE_SELECT_RELATED_R2073;
  ooaofooa_TE_LNK * TE_LNK_R2075_precedes;
  ooaofooa_TE_LNK * TE_LNK_R2075_succeeds;
  ooaofooa_TE_CLASS * TE_CLASS_R2076_chains;
};
void ooaofooa_TE_LNK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_LNK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_LNK_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_LNK * ooaofooa_TE_LNK_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_LNK_R2042_Link( ooaofooa_ACT_LNK *, ooaofooa_TE_LNK * );
void ooaofooa_TE_LNK_R2042_Unlink( ooaofooa_ACT_LNK *, ooaofooa_TE_LNK * );
      
/*
 * R2075 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_LNK precedes participant
 *  Participant TE_LNK succeeds formalizer
 */
/* Navigation phrase:  R2075.'precedes' */
void ooaofooa_TE_LNK_R2075_Link_precedes( ooaofooa_TE_LNK *, ooaofooa_TE_LNK * );
void ooaofooa_TE_LNK_R2075_Unlink_precedes( ooaofooa_TE_LNK *, ooaofooa_TE_LNK * );
/* Navigation phrase:  R2075.'succeeds' */
void ooaofooa_TE_LNK_R2075_Link_succeeds( ooaofooa_TE_LNK *, ooaofooa_TE_LNK * );
void ooaofooa_TE_LNK_R2075_Unlink_succeeds( ooaofooa_TE_LNK *, ooaofooa_TE_LNK * );
void ooaofooa_TE_LNK_R2076_Link_connects( ooaofooa_TE_CLASS *, ooaofooa_TE_LNK * );
void ooaofooa_TE_LNK_R2076_Unlink_connects( ooaofooa_TE_CLASS *, ooaofooa_TE_LNK * );


#define ooaofooa_TE_LNK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_LNK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_LNK_CLASS_H */


