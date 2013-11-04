/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_VAL_class.c
 *
 * Class:       Extended Value  (TE_VAL)
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
ooaofooa_TE_VAL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_VAL * self = (ooaofooa_TE_VAL *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->OAL, avlstring[ 1 ] );
  Escher_strcpy( self->buffer, avlstring[ 2 ] );
  self->dimensions = Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->array_spec, avlstring[ 4 ] );
  self->te_dimID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_VAL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_VAL * ooaofooa_TE_VAL_instance = (ooaofooa_TE_VAL *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_VAL_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_TE_VAL_R2040_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_TE_VAL_instance );
  }
  {
  ooaofooa_TE_DIM * ooaofooa_TE_DIMrelated_instance1 = (ooaofooa_TE_DIM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_VAL_instance->te_dimID ];
  if ( ooaofooa_TE_DIMrelated_instance1 ) {
    ooaofooa_TE_VAL_R2079_Link( ooaofooa_TE_DIMrelated_instance1, ooaofooa_TE_VAL_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_VAL *
ooaofooa_TE_VAL_AnyWhere1( Escher_UniqueID_t w_Value_ID )
{
  ooaofooa_TE_VAL * w; 
  Escher_Iterator_s iter_TE_VAL;
  Escher_IteratorReset( &iter_TE_VAL, &pG_ooaofooa_TE_VAL_extent.active );
  while ( (w = (ooaofooa_TE_VAL *) Escher_IteratorNext( &iter_TE_VAL )) != 0 ) {
    if ( w->Value_ID == w_Value_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE V_VAL TO TE_VAL ACROSS R2040
 */
void
ooaofooa_TE_VAL_R2040_Link( ooaofooa_V_VAL * part, ooaofooa_TE_VAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R2040 = part;
  part->TE_VAL_R2040 = form;
}

/*
 * UNRELATE V_VAL FROM TE_VAL ACROSS R2040
 */
void
ooaofooa_TE_VAL_R2040_Unlink( ooaofooa_V_VAL * part, ooaofooa_TE_VAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_VAL_R2040 = 0;
  part->TE_VAL_R2040 = 0;
}

/*
 * RELATE TE_DIM TO TE_VAL ACROSS R2079
 */
void
ooaofooa_TE_VAL_R2079_Link( ooaofooa_TE_DIM * part, ooaofooa_TE_VAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = part->te_dimID;
  form->TE_DIM_R2079 = part;
  Escher_SetInsertElement( &part->TE_VAL_R2079, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_DIM FROM TE_VAL ACROSS R2079
 */
void
ooaofooa_TE_VAL_R2079_Unlink( ooaofooa_TE_DIM * part, ooaofooa_TE_VAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = 0;
  form->TE_DIM_R2079 = 0;
  Escher_SetRemoveElement( &part->TE_VAL_R2079, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_VAL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_VAL * self = (ooaofooa_TE_VAL *) instance;
  printf( "INSERT INTO TE_VAL VALUES ( '%s','%s',%d,'%s',%ld,%ld );\n",
    self->OAL,
    self->buffer,
    self->dimensions,
    self->array_spec,
    ((long)self->te_dimID & ESCHER_IDDUMP_MASK),
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_VAL_container[ ooaofooa_TE_VAL_MAX_EXTENT_SIZE ];
static ooaofooa_TE_VAL ooaofooa_TE_VAL_instances[ ooaofooa_TE_VAL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_VAL_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_VAL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_VAL_instances,
  sizeof( ooaofooa_TE_VAL ), 0, ooaofooa_TE_VAL_MAX_EXTENT_SIZE
  };


