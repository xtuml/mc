/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_QUEUE_class.c
 *
 * Class:       Message Queue  (TE_QUEUE)
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
ooaofooa_TE_QUEUE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_QUEUE * self = (ooaofooa_TE_QUEUE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Queue_ID = Escher_atoi( avlstring[ 1 ] );
  self->Dispatcher_ID = Escher_atoi( avlstring[ 2 ] );
  self->Type = Escher_atoi( avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->RenderCode = ( '0' != *avlstring[ 5 ] );
  self->MaxDepth = Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_QUEUE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_QUEUE * ooaofooa_TE_QUEUE_instance = (ooaofooa_TE_QUEUE *) instance;
  ooaofooa_TE_DISP * ooaofooa_TE_DISPrelated_instance1 = (ooaofooa_TE_DISP *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_QUEUE_instance->Dispatcher_ID ];
  if ( ooaofooa_TE_DISPrelated_instance1 ) {
    ooaofooa_TE_QUEUE_R2004_Link_manages( ooaofooa_TE_DISPrelated_instance1, ooaofooa_TE_QUEUE_instance );
  }
}


/*
 * RELATE TE_DISP TO TE_QUEUE ACROSS R2004
 */
void
ooaofooa_TE_QUEUE_R2004_Link_manages( ooaofooa_TE_DISP * part, ooaofooa_TE_QUEUE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dispatcher_ID = part->Dispatcher_ID;
  form->TE_DISP_R2004_is_managed_by = part;
  Escher_SetInsertElement( &part->TE_QUEUE_R2004_manages, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_DISP FROM TE_QUEUE ACROSS R2004
 */
void
ooaofooa_TE_QUEUE_R2004_Unlink_manages( ooaofooa_TE_DISP * part, ooaofooa_TE_QUEUE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dispatcher_ID = 0;
  form->TE_DISP_R2004_is_managed_by = 0;
  Escher_SetRemoveElement( &part->TE_QUEUE_R2004_manages, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_QUEUE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_QUEUE * self = (ooaofooa_TE_QUEUE *) instance;
  printf( "INSERT INTO TE_QUEUE VALUES ( %d,%d,%d,'%s',%d,%d );\n",
    self->Queue_ID,
    self->Dispatcher_ID,
    self->Type,
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->RenderCode,
    self->MaxDepth );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_QUEUE_container[ ooaofooa_TE_QUEUE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_QUEUE ooaofooa_TE_QUEUE_instances[ ooaofooa_TE_QUEUE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_QUEUE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_QUEUE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_QUEUE_instances,
  sizeof( ooaofooa_TE_QUEUE ), 0, ooaofooa_TE_QUEUE_MAX_EXTENT_SIZE
  };


