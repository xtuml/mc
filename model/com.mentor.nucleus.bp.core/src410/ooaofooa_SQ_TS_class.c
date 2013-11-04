/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_TS_class.c
 *
 * Class:       Time Span  (SQ_TS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "LOG_bridge.h"
#include "POP_bridge.h"
#include "T_bridge.h"
#include "ooaofooa_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
ooaofooa_SQ_TS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_TS * self = (ooaofooa_SQ_TS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Span_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Span_ID;
  self->Mark_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Prev_Mark_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->Name, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_TS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_TS * ooaofooa_SQ_TS_instance = (ooaofooa_SQ_TS *) instance;
  ooaofooa_SQ_TM * ooaofooa_SQ_TMrelated_instance1 = (ooaofooa_SQ_TM *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_TS_instance->Prev_Mark_ID ];
  if ( ooaofooa_SQ_TMrelated_instance1 ) {
    ooaofooa_SQ_TS_R941_Link_defines_start_of( ooaofooa_SQ_TMrelated_instance1, ooaofooa_SQ_TS_instance );
  }
  {
  ooaofooa_SQ_TM * ooaofooa_SQ_TMrelated_instance1 = (ooaofooa_SQ_TM *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_TS_instance->Mark_ID ];
  if ( ooaofooa_SQ_TMrelated_instance1 ) {
    ooaofooa_SQ_TS_R942_Link_defines_end_of( ooaofooa_SQ_TMrelated_instance1, ooaofooa_SQ_TS_instance );
  }
  }
}


/*
 * RELATE SQ_TM TO SQ_TS ACROSS R941
 */
void
ooaofooa_SQ_TS_R941_Link_defines_start_of( ooaofooa_SQ_TM * part, ooaofooa_SQ_TS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Prev_Mark_ID = part->Mark_ID;
  form->SQ_TM_R941_span_begins_at = part;
  Escher_SetInsertElement( &part->SQ_TS_R941_defines_start_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_TM FROM SQ_TS ACROSS R941
 */
void
ooaofooa_SQ_TS_R941_Unlink_defines_start_of( ooaofooa_SQ_TM * part, ooaofooa_SQ_TS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Prev_Mark_ID = 0;
  form->SQ_TM_R941_span_begins_at = 0;
  Escher_SetRemoveElement( &part->SQ_TS_R941_defines_start_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SQ_TM TO SQ_TS ACROSS R942
 */
void
ooaofooa_SQ_TS_R942_Link_defines_end_of( ooaofooa_SQ_TM * part, ooaofooa_SQ_TS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Mark_ID = part->Mark_ID;
  form->SQ_TM_R942_span_ends_at = part;
  Escher_SetInsertElement( &part->SQ_TS_R942_defines_end_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_TM FROM SQ_TS ACROSS R942
 */
void
ooaofooa_SQ_TS_R942_Unlink_defines_end_of( ooaofooa_SQ_TM * part, ooaofooa_SQ_TS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Mark_ID = 0;
  form->SQ_TM_R942_span_ends_at = 0;
  Escher_SetRemoveElement( &part->SQ_TS_R942_defines_end_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_TS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_TS * self = (ooaofooa_SQ_TS *) instance;
  printf( "INSERT INTO SQ_TS VALUES ( %ld,%ld,%ld,'%s','%s' );\n",
    ((long)self->Span_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Mark_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Prev_Mark_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_TS_container[ ooaofooa_SQ_TS_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_TS ooaofooa_SQ_TS_instances[ ooaofooa_SQ_TS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_TS_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_TS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_TS_instances,
  sizeof( ooaofooa_SQ_TS ), 0, ooaofooa_SQ_TS_MAX_EXTENT_SIZE
  };


