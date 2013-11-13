/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQU_Q_class.c
 *
 * Class:       Query  (SQU_Q)
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
ooaofooa_SQU_Q_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQU_Q * self = (ooaofooa_SQU_Q *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Engine_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->pattern, avlstring[ 3 ] );
  self->regEx = ( '0' != *avlstring[ 4 ] );
  self->caseSensitive = ( '0' != *avlstring[ 5 ] );
  self->scope = Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQU_Q_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQU_Q * ooaofooa_SQU_Q_instance = (ooaofooa_SQU_Q *) instance;
  ooaofooa_SEN_E * ooaofooa_SEN_Erelated_instance1 = (ooaofooa_SEN_E *) Escher_instance_cache[ (intptr_t) ooaofooa_SQU_Q_instance->Engine_Id ];
  if ( ooaofooa_SEN_Erelated_instance1 ) {
    ooaofooa_SQU_Q_R9500_Link_processes( ooaofooa_SEN_Erelated_instance1, ooaofooa_SQU_Q_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQU_Q *
ooaofooa_SQU_Q_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SQU_Q * w; 
  Escher_Iterator_s iter_SQU_Q;
  Escher_IteratorReset( &iter_SQU_Q, &pG_ooaofooa_SQU_Q_extent.active );
  while ( (w = (ooaofooa_SQU_Q *) Escher_IteratorNext( &iter_SQU_Q )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SEN_E TO SQU_Q ACROSS R9500
 */
void
ooaofooa_SQU_Q_R9500_Link_processes( ooaofooa_SEN_E * part, ooaofooa_SQU_Q * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Engine_Id = part->Id;
  form->SEN_E_R9500_processed_by = part;
  part->SQU_Q_R9500_processes = form;
}

/*
 * UNRELATE SEN_E FROM SQU_Q ACROSS R9500
 */
void
ooaofooa_SQU_Q_R9500_Unlink_processes( ooaofooa_SEN_E * part, ooaofooa_SQU_Q * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Engine_Id = 0;
  form->SEN_E_R9500_processed_by = 0;
  part->SQU_Q_R9500_processes = 0;
}

/* Accessors to SQU_Q[R9600] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQU_Q_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQU_Q * self = (ooaofooa_SQU_Q *) instance;
  printf( "INSERT INTO SQU_Q VALUES ( %ld,%ld,'%s',%d,%d,%d );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Engine_Id & ESCHER_IDDUMP_MASK),
    self->pattern,
    self->regEx,
    self->caseSensitive,
    self->scope );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQU_Q_container[ ooaofooa_SQU_Q_MAX_EXTENT_SIZE ];
static ooaofooa_SQU_Q ooaofooa_SQU_Q_instances[ ooaofooa_SQU_Q_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQU_Q_extent = {
  {0,0}, {0,0}, &ooaofooa_SQU_Q_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQU_Q_instances,
  sizeof( ooaofooa_SQU_Q ), 0, ooaofooa_SQU_Q_MAX_EXTENT_SIZE
  };


