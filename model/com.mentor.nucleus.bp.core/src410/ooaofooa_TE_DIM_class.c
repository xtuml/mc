/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DIM_class.c
 *
 * Class:       Extended Dimension  (TE_DIM)
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
ooaofooa_TE_DIM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_DIM * self = (ooaofooa_TE_DIM *) instance;
  /* Initialize application analysis class attributes.  */
  self->te_dimID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->te_dimID;
  self->elementCount = Escher_atoi( avlstring[ 2 ] );
  self->dimensionCount = Escher_atoi( avlstring[ 3 ] );
  self->next_te_dimID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_DIM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_DIM * ooaofooa_TE_DIM_instance = (ooaofooa_TE_DIM *) instance;
  ooaofooa_TE_DIM * ooaofooa_TE_DIMrelated_instance1 = (ooaofooa_TE_DIM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_DIM_instance->next_te_dimID ];
  if ( ooaofooa_TE_DIMrelated_instance1 ) {
    ooaofooa_TE_DIM_R2060_Link( ooaofooa_TE_DIMrelated_instance1, ooaofooa_TE_DIM_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_DIM *
ooaofooa_TE_DIM_AnyWhere1( Escher_UniqueID_t w_te_dimID )
{
  ooaofooa_TE_DIM * w; 
  Escher_Iterator_s iter_TE_DIM;
  Escher_IteratorReset( &iter_TE_DIM, &pG_ooaofooa_TE_DIM_extent.active );
  while ( (w = (ooaofooa_TE_DIM *) Escher_IteratorNext( &iter_TE_DIM )) != 0 ) {
    if ( w->te_dimID == w_te_dimID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE <left> TE_DIM TO <right> TE_DIM ACROSS R2060.''
 */
void
ooaofooa_TE_DIM_R2060_Link( ooaofooa_TE_DIM * left, ooaofooa_TE_DIM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_te_dimID = left->te_dimID;
  left->TE_DIM_R2060 = right; /* SR L1 */
  right->TE_DIM_R2060_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_DIM FROM <right> TE_DIM ACROSS R2060.''
 */
void
ooaofooa_TE_DIM_R2060_Unlink( ooaofooa_TE_DIM * left, ooaofooa_TE_DIM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_te_dimID = 0;
  left->TE_DIM_R2060 = 0; /* SR U1 */
  right->TE_DIM_R2060_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_DIM TO <right> TE_DIM ACROSS R2060.'succeeds'
 */
void
ooaofooa_TE_DIM_R2060_Link_succeeds( ooaofooa_TE_DIM * left, ooaofooa_TE_DIM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_te_dimID = right->te_dimID;
  right->TE_DIM_R2060 = left; /* SR L4 */
  left->TE_DIM_R2060_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_DIM FROM <right> TE_DIM ACROSS R2060.'succeeds'
 */
void
ooaofooa_TE_DIM_R2060_Unlink_succeeds( ooaofooa_TE_DIM * left, ooaofooa_TE_DIM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_te_dimID = 0;
  right->TE_DIM_R2060 = 0; /* SR U4 */
  left->TE_DIM_R2060_succeeds = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_DIM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_DIM * self = (ooaofooa_TE_DIM *) instance;
  printf( "INSERT INTO TE_DIM VALUES ( %ld,%d,%d,%ld );\n",
    ((long)self->te_dimID & ESCHER_IDDUMP_MASK),
    self->elementCount,
    self->dimensionCount,
    ((long)self->next_te_dimID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_DIM_container[ ooaofooa_TE_DIM_MAX_EXTENT_SIZE ];
static ooaofooa_TE_DIM ooaofooa_TE_DIM_instances[ ooaofooa_TE_DIM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_DIM_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_DIM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_DIM_instances,
  sizeof( ooaofooa_TE_DIM ), 0, ooaofooa_TE_DIM_MAX_EXTENT_SIZE
  };


