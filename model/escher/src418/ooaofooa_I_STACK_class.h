/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_STACK_class.h
 *
 * Class:       Stack  (I_STACK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_STACK_CLASS_H
#define OOAOFOOA_I_STACK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Stack  (I_STACK)
 */
struct ooaofooa_I_STACK {

  /* application analysis class attributes */
  Escher_UniqueID_t Stack_ID;  
  Escher_UniqueID_t Execution_Engine_ID;  
  sys_RunStateType_t runState;  
  c_t * suspendReason;  

  /* relationship storage */
  ooaofooa_I_STF * I_STF_R2929_has_a_top;
  ooaofooa_I_EXE * I_EXE_R2930_is_controlled_by;
  Escher_ObjectSet_s I_STF_R2943_executes;
  Escher_ObjectSet_s I_ICQE_R2966;
  Escher_ObjectSet_s I_STF_R2967_has_return_values_on;
};
void ooaofooa_I_STACK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_STACK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_STACK_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_STACK * ooaofooa_I_STACK_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_I_STACK_R2930_Link_controls( ooaofooa_I_EXE *, ooaofooa_I_STACK * );
void ooaofooa_I_STACK_R2930_Unlink_controls( ooaofooa_I_EXE *, ooaofooa_I_STACK * );
#define ooaofooa_I_STF_R2943_From_I_STACK_executes( I_STACK ) ( &((I_STACK)->I_STF_R2943_executes) )
/* Note:  I_STACK->I_STF[R2943] not navigated */
#define ooaofooa_I_ICQE_R2966_From_I_STACK( I_STACK ) ( &((I_STACK)->I_ICQE_R2966) )
#define ooaofooa_I_STF_R2967_From_I_STACK_has_return_values_on( I_STACK ) ( &((I_STACK)->I_STF_R2967_has_return_values_on) )
/* Note:  I_STACK->I_STF[R2967] not navigated */


#define ooaofooa_I_STACK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_STACK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_STACK_CLASS_H */


