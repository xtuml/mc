/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_MBR_class.c
 *
 * Class:       Extended Member  (TE_MBR)
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
ooaofooa_TE_MBR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_MBR * self = (ooaofooa_TE_MBR *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  Escher_strcpy( self->GeneratedName, avlstring[ 3 ] );
  self->dimensions = Escher_atoi( avlstring[ 4 ] );
  self->te_dimID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  Escher_strcpy( self->array_spec, avlstring[ 6 ] );
  self->previousID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->te_dtID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->Member_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_MBR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_MBR * ooaofooa_TE_MBR_instance = (ooaofooa_TE_MBR *) instance;
  ooaofooa_S_MBR * ooaofooa_S_MBRrelated_instance1 = ooaofooa_S_MBR_AnyWhere1( ooaofooa_TE_MBR_instance->Member_ID, ooaofooa_TE_MBR_instance->DT_ID );
  if ( ooaofooa_S_MBRrelated_instance1 ) {
    ooaofooa_TE_MBR_R2047_Link( ooaofooa_S_MBRrelated_instance1, ooaofooa_TE_MBR_instance );
  }
  {
  ooaofooa_TE_DIM * ooaofooa_TE_DIMrelated_instance1 = (ooaofooa_TE_DIM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_MBR_instance->te_dimID ];
  if ( ooaofooa_TE_DIMrelated_instance1 ) {
    ooaofooa_TE_MBR_R2059_Link_diments( ooaofooa_TE_DIMrelated_instance1, ooaofooa_TE_MBR_instance );
  }
  }
  {
  ooaofooa_TE_MBR * ooaofooa_TE_MBRrelated_instance1 = (ooaofooa_TE_MBR *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_MBR_instance->previousID ];
  if ( ooaofooa_TE_MBRrelated_instance1 ) {
    ooaofooa_TE_MBR_R2067_Link_succeeds( ooaofooa_TE_MBRrelated_instance1, ooaofooa_TE_MBR_instance );
  }
  }
  {
  ooaofooa_TE_DT * ooaofooa_TE_DTrelated_instance1 = (ooaofooa_TE_DT *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_MBR_instance->te_dtID ];
  if ( ooaofooa_TE_DTrelated_instance1 ) {
    ooaofooa_TE_MBR_R2068_Link( ooaofooa_TE_DTrelated_instance1, ooaofooa_TE_MBR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_MBR *
ooaofooa_TE_MBR_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_MBR * w; 
  Escher_Iterator_s iter_TE_MBR;
  Escher_IteratorReset( &iter_TE_MBR, &pG_ooaofooa_TE_MBR_extent.active );
  while ( (w = (ooaofooa_TE_MBR *) Escher_IteratorNext( &iter_TE_MBR )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_MBR TO TE_MBR ACROSS R2047
 */
void
ooaofooa_TE_MBR_R2047_Link( ooaofooa_S_MBR * part, ooaofooa_TE_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Member_ID = part->Member_ID;
  form->DT_ID = part->Parent_DT_DT_ID;
  form->S_MBR_R2047 = part;
  part->TE_MBR_R2047 = form;
}

/*
 * UNRELATE S_MBR FROM TE_MBR ACROSS R2047
 */
void
ooaofooa_TE_MBR_R2047_Unlink( ooaofooa_S_MBR * part, ooaofooa_TE_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Member_ID = 0;
  form->DT_ID = 0;
  form->S_MBR_R2047 = 0;
  part->TE_MBR_R2047 = 0;
}

/*
 * RELATE TE_DIM TO TE_MBR ACROSS R2059
 */
void
ooaofooa_TE_MBR_R2059_Link_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = part->te_dimID;
  form->TE_DIM_R2059_has_first = part;
  part->TE_MBR_R2059_diments = form;
}

/*
 * UNRELATE TE_DIM FROM TE_MBR ACROSS R2059
 */
void
ooaofooa_TE_MBR_R2059_Unlink_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = 0;
  form->TE_DIM_R2059_has_first = 0;
  part->TE_MBR_R2059_diments = 0;
}

/*
 * RELATE <left> TE_MBR TO <right> TE_MBR ACROSS R2067.'succeeds'
 */
void
ooaofooa_TE_MBR_R2067_Link_succeeds( ooaofooa_TE_MBR * left, ooaofooa_TE_MBR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->previousID = left->ID;
  left->TE_MBR_R2067_succeeds = right; /* SR L1 */
  right->TE_MBR_R2067_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_MBR FROM <right> TE_MBR ACROSS R2067.'succeeds'
 */
void
ooaofooa_TE_MBR_R2067_Unlink_succeeds( ooaofooa_TE_MBR * left, ooaofooa_TE_MBR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->previousID = 0;
  left->TE_MBR_R2067_succeeds = 0; /* SR U1 */
  right->TE_MBR_R2067_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_MBR TO <right> TE_MBR ACROSS R2067.'precedes'
 */
void
ooaofooa_TE_MBR_R2067_Link_precedes( ooaofooa_TE_MBR * left, ooaofooa_TE_MBR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->previousID = right->ID;
  right->TE_MBR_R2067_succeeds = left; /* SR L4 */
  left->TE_MBR_R2067_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_MBR FROM <right> TE_MBR ACROSS R2067.'precedes'
 */
void
ooaofooa_TE_MBR_R2067_Unlink_precedes( ooaofooa_TE_MBR * left, ooaofooa_TE_MBR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->previousID = 0;
  right->TE_MBR_R2067_succeeds = 0; /* SR U4 */
  left->TE_MBR_R2067_precedes = 0; /* SR U5 */
}

/*
 * RELATE TE_DT TO TE_MBR ACROSS R2068
 */
void
ooaofooa_TE_MBR_R2068_Link( ooaofooa_TE_DT * part, ooaofooa_TE_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dtID = part->ID;
  form->TE_DT_R2068 = part;
  part->TE_MBR_R2068 = form;
}

/*
 * UNRELATE TE_DT FROM TE_MBR ACROSS R2068
 */
void
ooaofooa_TE_MBR_R2068_Unlink( ooaofooa_TE_DT * part, ooaofooa_TE_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dtID = 0;
  form->TE_DT_R2068 = 0;
  part->TE_MBR_R2068 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_MBR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_MBR * self = (ooaofooa_TE_MBR *) instance;
  printf( "INSERT INTO TE_MBR VALUES ( %ld,'%s','%s',%d,%ld,'%s',%ld,%ld,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->GeneratedName,
    self->dimensions,
    ((long)self->te_dimID & ESCHER_IDDUMP_MASK),
    self->array_spec,
    ((long)self->previousID & ESCHER_IDDUMP_MASK),
    ((long)self->te_dtID & ESCHER_IDDUMP_MASK),
    ((long)self->Member_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_MBR_container[ ooaofooa_TE_MBR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_MBR ooaofooa_TE_MBR_instances[ ooaofooa_TE_MBR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_MBR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_MBR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_MBR_instances,
  sizeof( ooaofooa_TE_MBR ), 0, ooaofooa_TE_MBR_MAX_EXTENT_SIZE
  };


