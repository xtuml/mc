/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_STF_class.h
 *
 * Class:       Stack Frame  (I_STF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_STF_CLASS_H
#define OOAOFOOA_I_STF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Stack Frame  (I_STF)
 */
struct ooaofooa_I_STF {

  /* application analysis class attributes */
  Escher_UniqueID_t Stack_Frame_ID;  
  bool Created_For_Wired_Bridge;  
  bool readyForInterrupt;  
  Escher_UniqueID_t Bridge_Caller_Stack_Frame_ID;  
  Escher_UniqueID_t Child_Stack_Frame_ID;  
  Escher_UniqueID_t Top_Stack_Frame_Stack_ID;  
  Escher_UniqueID_t Stack_ID;  
  Escher_UniqueID_t Inst_ID;  
  Escher_UniqueID_t Value_Q_Stack_ID;  
  Escher_UniqueID_t Blocking_Stack_Frame_ID;  

  /* relationship storage */
  Escher_ObjectSet_s I_BSF_R2923;
  ooaofooa_I_STF * I_STF_R2928_next_context;
  ooaofooa_I_STF * I_STF_R2928_previous_context;
  ooaofooa_I_STACK * I_STACK_R2929_is_processed_by;
  ooaofooa_I_STACK * I_STACK_R2943_processed_by;
  Escher_ObjectSet_s I_VSF_R2951;
  ooaofooa_I_INS * I_INS_R2954_has_context;
  ooaofooa_I_STF * I_STF_R2965_blocked_by;
  ooaofooa_I_STF * I_STF_R2965_blocks;
  ooaofooa_I_ICQE * I_ICQE_R2966;
  ooaofooa_I_STACK * I_STACK_R2967_holds_return_value_for;
};
void ooaofooa_I_STF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_STF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_STF_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_STF * ooaofooa_I_STF_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_I_BSF_R2923_From_I_STF( I_STF ) ( &((I_STF)->I_BSF_R2923) )
      
/*
 * R2928 is Simple Reflexive:  0..1:0..1
 *  Formalizing I_STF next context participant
 *  Participant I_STF previous context formalizer
 */
/* Navigation phrase:  R2928.'next context' */
void ooaofooa_I_STF_R2928_Link_next_context( ooaofooa_I_STF *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2928_Unlink_next_context( ooaofooa_I_STF *, ooaofooa_I_STF * );
/* Navigation phrase:  R2928.'previous context' */
void ooaofooa_I_STF_R2928_Link_previous_context( ooaofooa_I_STF *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2928_Unlink_previous_context( ooaofooa_I_STF *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2929_Link_has_a_top( ooaofooa_I_STACK *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2929_Unlink_has_a_top( ooaofooa_I_STACK *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2943_Link_executes( ooaofooa_I_STACK *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2943_Unlink_executes( ooaofooa_I_STACK *, ooaofooa_I_STF * );
#define ooaofooa_I_VSF_R2951_From_I_STF( I_STF ) ( &((I_STF)->I_VSF_R2951) )
/* Note:  I_STF->I_VSF[R2951] not navigated */
void ooaofooa_I_STF_R2954_Link_provides_context_for( ooaofooa_I_INS *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2954_Unlink_provides_context_for( ooaofooa_I_INS *, ooaofooa_I_STF * );
      
/*
 * R2965 is Simple Reflexive:  0..1:0..1
 *  Formalizing I_STF blocked by participant
 *  Participant I_STF blocks formalizer
 */
/* Navigation phrase:  R2965.'blocked by' */
void ooaofooa_I_STF_R2965_Link_blocked_by( ooaofooa_I_STF *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2965_Unlink_blocked_by( ooaofooa_I_STF *, ooaofooa_I_STF * );
/* Navigation phrase:  R2965.'blocks' */
void ooaofooa_I_STF_R2965_Link_blocks( ooaofooa_I_STF *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2965_Unlink_blocks( ooaofooa_I_STF *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2967_Link_has_return_values_on( ooaofooa_I_STACK *, ooaofooa_I_STF * );
void ooaofooa_I_STF_R2967_Unlink_has_return_values_on( ooaofooa_I_STACK *, ooaofooa_I_STF * );


#define ooaofooa_I_STF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_STF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_STF_CLASS_H */


