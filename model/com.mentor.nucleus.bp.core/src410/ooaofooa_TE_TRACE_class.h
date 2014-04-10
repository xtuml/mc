/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TRACE_class.h
 *
 * Class:       trace  (TE_TRACE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_TRACE_CLASS_H
#define OOAOFOOA_TE_TRACE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   trace  (TE_TRACE)
 */
struct ooaofooa_TE_TRACE {

  /* application analysis class attributes */
  c_t component_msg_start[ESCHER_SYS_MAX_STRING_LEN];  
  c_t component_msg_end[ESCHER_SYS_MAX_STRING_LEN];  
  c_t state_txn_start[ESCHER_SYS_MAX_STRING_LEN];  
  c_t state_txn_end[ESCHER_SYS_MAX_STRING_LEN];  
  c_t state_txn_event_ignored[ESCHER_SYS_MAX_STRING_LEN];  
  c_t state_txn_cant_happen[ESCHER_SYS_MAX_STRING_LEN];  
  c_t oal_trace[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_TRACE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_TRACE_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_TRACE_batch_relate 0



#define ooaofooa_TE_TRACE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_TRACE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_TRACE_CLASS_H */


