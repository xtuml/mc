/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_BP_class.h
 *
 * Class:       Breakpoint  (BP_BP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_BP_BP_CLASS_H
#define OOAOFOOA_BP_BP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Breakpoint  (BP_BP)
 */
struct ooaofooa_BP_BP {

  /* application analysis class attributes */
  Escher_UniqueID_t Breakpoint_ID;  
  bool enabled;  
  bool condition_enabled;  
  i_t hit_count;  
  i_t target_hit_count;  
  bool for_step;  

  /* relationship storage */
  ooaofooa_BP_CON * BP_CON_R3100_halts_based_on;
  void * R3102_subtype;
  Escher_ClassNumber_t R3102_object_id;
};
void ooaofooa_BP_BP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_BP_BP_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_BP_BP_batch_relate 0

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_BP_BP * ooaofooa_BP_BP_AnyWhere1( Escher_UniqueID_t );


/* Accessors to BP_BP[R3102] subtypes */
#define ooaofooa_BP_OAL_R3102_From_BP_BP( BP_BP ) \
   ( (((BP_BP)->R3102_object_id) == ooaofooa_BP_OAL_CLASS_NUMBER) ? \
     ((ooaofooa_BP_OAL *)((BP_BP)->R3102_subtype)) : (0) )
/* Note:  BP_BP->BP_OAL[R3102] not navigated */
#define ooaofooa_BP_EV_R3102_From_BP_BP( BP_BP ) \
   ( (((BP_BP)->R3102_object_id) == ooaofooa_BP_EV_CLASS_NUMBER) ? \
     ((ooaofooa_BP_EV *)((BP_BP)->R3102_subtype)) : (0) )
/* Note:  BP_BP->BP_EV[R3102] not navigated */
#define ooaofooa_BP_ST_R3102_From_BP_BP( BP_BP ) \
   ( (((BP_BP)->R3102_object_id) == ooaofooa_BP_ST_CLASS_NUMBER) ? \
     ((ooaofooa_BP_ST *)((BP_BP)->R3102_subtype)) : (0) )
/* Note:  BP_BP->BP_ST[R3102] not navigated */



#define ooaofooa_BP_BP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_BP_BP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_BP_BP_CLASS_H */


