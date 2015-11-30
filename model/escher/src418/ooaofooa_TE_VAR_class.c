/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_VAR_class.c
 *
 * Class:       Extended Variable  (TE_VAR)
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
ooaofooa_TE_VAR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_VAR * self = (ooaofooa_TE_VAR *) instance;
  /* Initialize application analysis class attributes.  */
  self->OAL = Escher_strcpy( self->OAL, avlstring[ 1 ] );
  self->buffer = Escher_strcpy( self->buffer, avlstring[ 2 ] );
  self->dimensions = Escher_atoi( avlstring[ 3 ] );
  self->te_dimID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->array_spec = Escher_strcpy( self->array_spec, avlstring[ 5 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_VAR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_VAR * ooaofooa_TE_VAR_instance = (ooaofooa_TE_VAR *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_VAR_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_TE_VAR_R2039_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_TE_VAR_instance );
  }
  {
  ooaofooa_TE_DIM * ooaofooa_TE_DIMrelated_instance1 = (ooaofooa_TE_DIM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_VAR_instance->te_dimID ];
  if ( ooaofooa_TE_DIMrelated_instance1 ) {
    ooaofooa_TE_VAR_R2057_Link_diments( ooaofooa_TE_DIMrelated_instance1, ooaofooa_TE_VAR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_VAR *
ooaofooa_TE_VAR_AnyWhere1( Escher_UniqueID_t w_Var_ID )
{
  ooaofooa_TE_VAR * w; 
  Escher_Iterator_s iter_TE_VAR;
  Escher_IteratorReset( &iter_TE_VAR, &pG_ooaofooa_TE_VAR_extent.active );
  while ( (w = (ooaofooa_TE_VAR *) Escher_IteratorNext( &iter_TE_VAR )) != 0 ) {
    if ( w->Var_ID == w_Var_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE V_VAR TO TE_VAR ACROSS R2039
 */
void
ooaofooa_TE_VAR_R2039_Link( ooaofooa_V_VAR * part, ooaofooa_TE_VAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R2039 = part;
  part->TE_VAR_R2039 = form;
}

/*
 * UNRELATE V_VAR FROM TE_VAR ACROSS R2039
 */
void
ooaofooa_TE_VAR_R2039_Unlink( ooaofooa_V_VAR * part, ooaofooa_TE_VAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_VAR_R2039 = 0;
  part->TE_VAR_R2039 = 0;
}

/*
 * RELATE TE_DIM TO TE_VAR ACROSS R2057
 */
void
ooaofooa_TE_VAR_R2057_Link_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_VAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = part->te_dimID;
  form->TE_DIM_R2057_has_first = part;
  part->TE_VAR_R2057_diments = form;
}

/*
 * UNRELATE TE_DIM FROM TE_VAR ACROSS R2057
 */
void
ooaofooa_TE_VAR_R2057_Unlink_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_VAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = 0;
  form->TE_DIM_R2057_has_first = 0;
  part->TE_VAR_R2057_diments = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_VAR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_VAR * self = (ooaofooa_TE_VAR *) instance;
  printf( "INSERT INTO TE_VAR VALUES ( '%s','%s',%d,%ld,'%s',%ld );\n",
    ( 0 != self->OAL ) ? self->OAL : "",
    ( 0 != self->buffer ) ? self->buffer : "",
    self->dimensions,
    ((long)self->te_dimID & ESCHER_IDDUMP_MASK),
    ( 0 != self->array_spec ) ? self->array_spec : "",
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_VAR_container[ ooaofooa_TE_VAR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_VAR ooaofooa_TE_VAR_instances[ ooaofooa_TE_VAR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_VAR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_VAR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_VAR_instances,
  sizeof( ooaofooa_TE_VAR ), 0, ooaofooa_TE_VAR_MAX_EXTENT_SIZE
  };


