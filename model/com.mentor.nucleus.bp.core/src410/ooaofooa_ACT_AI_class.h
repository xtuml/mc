/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_AI_class.h
 *
 * Class:       Assign to Member  (ACT_AI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_AI_CLASS_H
#define OOAOFOOA_ACT_AI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Assign to Member  (ACT_AI)
 */
struct ooaofooa_ACT_AI {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t r_Value_ID;  
  Escher_UniqueID_t l_Value_ID;  
  i_t attributeLineNumber;  
  i_t attributeColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAL * V_VAL_R609_reads;
  ooaofooa_V_VAL * V_VAL_R689_writes;
};
void ooaofooa_ACT_AI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_AI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_AI_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_AI_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_AI * );
void ooaofooa_ACT_AI_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_AI * );
void ooaofooa_ACT_AI_R609_Link( ooaofooa_V_VAL *, ooaofooa_ACT_AI * );
void ooaofooa_ACT_AI_R609_Unlink( ooaofooa_V_VAL *, ooaofooa_ACT_AI * );
void ooaofooa_ACT_AI_R689_Link( ooaofooa_V_VAL *, ooaofooa_ACT_AI * );
void ooaofooa_ACT_AI_R689_Unlink( ooaofooa_V_VAL *, ooaofooa_ACT_AI * );


#define ooaofooa_ACT_AI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_AI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_AI_CLASS_H */


