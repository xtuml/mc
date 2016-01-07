/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_COMM_class.c
 *
 * Class:       Communication Path  (CA_COMM)
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
ooaofooa_CA_COMM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_COMM * self = (ooaofooa_CA_COMM *) instance;
  /* Initialize application analysis class attributes.  */
  self->CPath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->CPath_ID;
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_COMM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_COMM * ooaofooa_CA_COMM_instance = (ooaofooa_CA_COMM *) instance;
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_COMM_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_CA_COMM_R5_Link_contains( ooaofooa_S_SSrelated_instance1, ooaofooa_CA_COMM_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CA_COMM *
ooaofooa_CA_COMM_AnyWhere1( Escher_UniqueID_t w_CPath_ID )
{
  ooaofooa_CA_COMM * w; 
  Escher_Iterator_s iter_CA_COMM;
  Escher_IteratorReset( &iter_CA_COMM, &pG_ooaofooa_CA_COMM_extent.active );
  while ( (w = (ooaofooa_CA_COMM *) Escher_IteratorNext( &iter_CA_COMM )) != 0 ) {
    if ( w->CPath_ID == w_CPath_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SS TO CA_COMM ACROSS R5
 */
void
ooaofooa_CA_COMM_R5_Link_contains( ooaofooa_S_SS * part, ooaofooa_CA_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R5_abstracts_asynchronous_communication_between_classes_in = part;
  Escher_SetInsertElement( &part->CA_COMM_R5_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM CA_COMM ACROSS R5
 */
void
ooaofooa_CA_COMM_R5_Unlink_contains( ooaofooa_S_SS * part, ooaofooa_CA_COMM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R5_abstracts_asynchronous_communication_between_classes_in = 0;
  Escher_SetRemoveElement( &part->CA_COMM_R5_contains, (Escher_ObjectSet_s *) form );
}

/* Accessors to CA_COMM[R401] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_COMM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_COMM * self = (ooaofooa_CA_COMM *) instance;
  printf( "INSERT INTO CA_COMM VALUES ( %ld,%ld );\n",
    ((long)self->CPath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_COMM_container[ ooaofooa_CA_COMM_MAX_EXTENT_SIZE ];
static ooaofooa_CA_COMM ooaofooa_CA_COMM_instances[ ooaofooa_CA_COMM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_COMM_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_COMM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_COMM_instances,
  sizeof( ooaofooa_CA_COMM ), 0, ooaofooa_CA_COMM_MAX_EXTENT_SIZE
  };


