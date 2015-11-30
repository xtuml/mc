/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_N_class.c
 *
 * Class:       Activity Node  (A_N)
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
ooaofooa_A_N_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_N * self = (ooaofooa_A_N *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_N_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_N * ooaofooa_A_N_instance = (ooaofooa_A_N *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_A_N_instance->Id ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_A_N_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_A_N_instance );
  }
  {
  ooaofooa_A_A * ooaofooa_A_Arelated_instance1 = ooaofooa_A_A_AnyWhere1( ooaofooa_A_N_instance->Package_ID );
  if ( ooaofooa_A_Arelated_instance1 ) {
    ooaofooa_A_N_R1101_Link_contained_node( ooaofooa_A_Arelated_instance1, ooaofooa_A_N_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_A_N *
ooaofooa_A_N_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_A_N * w; 
  Escher_Iterator_s iter_A_N;
  Escher_IteratorReset( &iter_A_N, &pG_ooaofooa_A_N_extent.active );
  while ( (w = (ooaofooa_A_N *) Escher_IteratorNext( &iter_A_N )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE A_A TO A_N ACROSS R1101
 */
void
ooaofooa_A_N_R1101_Link_contained_node( ooaofooa_A_A * part, ooaofooa_A_N * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->A_A_R1101 = part;
  Escher_SetInsertElement( &part->A_N_R1101_contained_node, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE A_A FROM A_N ACROSS R1101
 */
void
ooaofooa_A_N_R1101_Unlink_contained_node( ooaofooa_A_A * part, ooaofooa_A_N * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->A_A_R1101 = 0;
  Escher_SetRemoveElement( &part->A_N_R1101_contained_node, (Escher_ObjectSet_s *) form );
}

/* Accessors to A_N[R1105] subtypes */


/*
 * RELATE PE_PE TO A_N ACROSS R8001
 */
void
ooaofooa_A_N_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_A_N * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Element_ID;
  /* Optimized linkage for A_N->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->A_N[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_A_N_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM A_N ACROSS R8001
 */
void
ooaofooa_A_N_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_A_N * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->PE_PE_R8001 = 0;
  supertype->R8001_subtype = 0;
  supertype->R8001_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_N_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_N * self = (ooaofooa_A_N *) instance;
  printf( "INSERT INTO A_N VALUES ( %ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_N_container[ ooaofooa_A_N_MAX_EXTENT_SIZE ];
static ooaofooa_A_N ooaofooa_A_N_instances[ ooaofooa_A_N_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_N_extent = {
  {0,0}, {0,0}, &ooaofooa_A_N_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_N_instances,
  sizeof( ooaofooa_A_N ), 0, ooaofooa_A_N_MAX_EXTENT_SIZE
  };


