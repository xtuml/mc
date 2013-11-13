/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_TM_class.c
 *
 * Class:       Timing Mark  (SQ_TM)
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
ooaofooa_SQ_TM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_TM * self = (ooaofooa_SQ_TM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Mark_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Mark_ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_TM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_TM * ooaofooa_SQ_TM_instance = (ooaofooa_SQ_TM *) instance;
  ooaofooa_SQ_LS * ooaofooa_SQ_LSrelated_instance1 = ooaofooa_SQ_LS_AnyWhere1( ooaofooa_SQ_TM_instance->Part_ID );
  if ( ooaofooa_SQ_LSrelated_instance1 ) {
    ooaofooa_SQ_TM_R931_Link_has_a_point_in_time_referenced_by( ooaofooa_SQ_LSrelated_instance1, ooaofooa_SQ_TM_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_TM *
ooaofooa_SQ_TM_AnyWhere1( Escher_UniqueID_t w_Mark_ID )
{
  ooaofooa_SQ_TM * w; 
  Escher_Iterator_s iter_SQ_TM;
  Escher_IteratorReset( &iter_SQ_TM, &pG_ooaofooa_SQ_TM_extent.active );
  while ( (w = (ooaofooa_SQ_TM *) Escher_IteratorNext( &iter_SQ_TM )) != 0 ) {
    if ( w->Mark_ID == w_Mark_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_LS TO SQ_TM ACROSS R931
 */
void
ooaofooa_SQ_TM_R931_Link_has_a_point_in_time_referenced_by( ooaofooa_SQ_LS * part, ooaofooa_SQ_TM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Part_ID = part->Part_ID;
  form->SQ_LS_R931_marks_a_point_in_time = part;
  Escher_SetInsertElement( &part->SQ_TM_R931_has_a_point_in_time_referenced_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_LS FROM SQ_TM ACROSS R931
 */
void
ooaofooa_SQ_TM_R931_Unlink_has_a_point_in_time_referenced_by( ooaofooa_SQ_LS * part, ooaofooa_SQ_TM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Part_ID = 0;
  form->SQ_LS_R931_marks_a_point_in_time = 0;
  Escher_SetRemoveElement( &part->SQ_TM_R931_has_a_point_in_time_referenced_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_TM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_TM * self = (ooaofooa_SQ_TM *) instance;
  printf( "INSERT INTO SQ_TM VALUES ( %ld,'%s',%ld,'%s' );\n",
    ((long)self->Mark_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_TM_container[ ooaofooa_SQ_TM_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_TM ooaofooa_SQ_TM_instances[ ooaofooa_SQ_TM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_TM_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_TM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_TM_instances,
  sizeof( ooaofooa_SQ_TM ), 0, ooaofooa_SQ_TM_MAX_EXTENT_SIZE
  };


