/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_TS_class.h
 *
 * Class:       Time Span  (SQ_TS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_TS_CLASS_H
#define OOAOFOOA_SQ_TS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Time Span  (SQ_TS)
 */
struct ooaofooa_SQ_TS {

  /* application analysis class attributes */
  Escher_UniqueID_t Span_ID;  
  Escher_UniqueID_t Mark_ID;  
  Escher_UniqueID_t Prev_Mark_ID;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_SQ_TM * SQ_TM_R941_span_begins_at;
  ooaofooa_SQ_TM * SQ_TM_R942_span_ends_at;
};
void ooaofooa_SQ_TS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_TS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_TS_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_TS_R941_Link_defines_start_of( ooaofooa_SQ_TM *, ooaofooa_SQ_TS * );
void ooaofooa_SQ_TS_R941_Unlink_defines_start_of( ooaofooa_SQ_TM *, ooaofooa_SQ_TS * );
void ooaofooa_SQ_TS_R942_Link_defines_end_of( ooaofooa_SQ_TM *, ooaofooa_SQ_TS * );
void ooaofooa_SQ_TS_R942_Unlink_defines_end_of( ooaofooa_SQ_TM *, ooaofooa_SQ_TS * );


#define ooaofooa_SQ_TS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_TS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_TS_CLASS_H */


