/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DCI_class.c
 *
 * Class:       DomainClassInfo  (TE_DCI)
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
ooaofooa_TE_DCI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_DCI * self = (ooaofooa_TE_DCI *) instance;
  /* Initialize application analysis class attributes.  */
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->class_numbers, avlstring[ 2 ] );
  Escher_strcpy( self->persist_union, avlstring[ 3 ] );
  Escher_strcpy( self->task_list, avlstring[ 4 ] );
  Escher_strcpy( self->task_numbers, avlstring[ 5 ] );
  Escher_strcpy( self->max, avlstring[ 6 ] );
  Escher_strcpy( self->max_models, avlstring[ 7 ] );
  Escher_strcpy( self->init, avlstring[ 8 ] );
  Escher_strcpy( self->array_name, avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_DCI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_DCI * ooaofooa_TE_DCI_instance = (ooaofooa_TE_DCI *) instance;
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_DCI_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_DCI_R2090_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_DCI_instance );
  }
}


/*
 * RELATE TE_C TO TE_DCI ACROSS R2090
 */
void
ooaofooa_TE_DCI_R2090_Link( ooaofooa_TE_C * part, ooaofooa_TE_DCI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2090 = part;
  part->TE_DCI_R2090 = form;
}

/*
 * UNRELATE TE_C FROM TE_DCI ACROSS R2090
 */
void
ooaofooa_TE_DCI_R2090_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_DCI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2090 = 0;
  part->TE_DCI_R2090 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_DCI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_DCI * self = (ooaofooa_TE_DCI *) instance;
  printf( "INSERT INTO TE_DCI VALUES ( %ld,'%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    self->class_numbers,
    self->persist_union,
    self->task_list,
    self->task_numbers,
    self->max,
    self->max_models,
    self->init,
    self->array_name );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_DCI_container[ ooaofooa_TE_DCI_MAX_EXTENT_SIZE ];
static ooaofooa_TE_DCI ooaofooa_TE_DCI_instances[ ooaofooa_TE_DCI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_DCI_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_DCI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_DCI_instances,
  sizeof( ooaofooa_TE_DCI ), 0, ooaofooa_TE_DCI_MAX_EXTENT_SIZE
  };


