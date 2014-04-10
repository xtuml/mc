/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_SYNC_class.h
 *
 * Class:       Function Mark  (TM_SYNC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_SYNC_CLASS_H
#define OOAOFOOA_TM_SYNC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Mark  (TM_SYNC)
 */
struct ooaofooa_TM_SYNC {

  /* application analysis class attributes */
  c_t RegisteredDomain[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  bool IsSafeForInterrupts;  
  bool IsInitFunction;  

};
void ooaofooa_TM_SYNC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_SYNC_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TM_SYNC_batch_relate 0



#define ooaofooa_TM_SYNC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_SYNC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_SYNC_CLASS_H */


