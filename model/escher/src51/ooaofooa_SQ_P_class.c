/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_P_class.c
 *
 * Class:       Interaction Participant  (SQ_P)
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
ooaofooa_SQ_P_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_P * self = (ooaofooa_SQ_P *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sequence_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_P_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_P * ooaofooa_SQ_P_instance = (ooaofooa_SQ_P *) instance;
  ooaofooa_SQ_S * ooaofooa_SQ_Srelated_instance1 = ooaofooa_SQ_S_AnyWhere1( ooaofooa_SQ_P_instance->Sequence_Package_ID );
  if ( ooaofooa_SQ_Srelated_instance1 ) {
    ooaofooa_SQ_P_R929_Link_contains( ooaofooa_SQ_Srelated_instance1, ooaofooa_SQ_P_instance );
  }
  {
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_P_instance->Part_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_SQ_P_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_SQ_P_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_P *
ooaofooa_SQ_P_AnyWhere1( Escher_UniqueID_t w_Part_ID )
{
  ooaofooa_SQ_P * w; 
  Escher_Iterator_s iter_SQ_P;
  Escher_IteratorReset( &iter_SQ_P, &pG_ooaofooa_SQ_P_extent.active );
  while ( (w = (ooaofooa_SQ_P *) Escher_IteratorNext( &iter_SQ_P )) != 0 ) {
    if ( w->Part_ID == w_Part_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_S TO SQ_P ACROSS R929
 */
void
ooaofooa_SQ_P_R929_Link_contains( ooaofooa_SQ_S * part, ooaofooa_SQ_P * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sequence_Package_ID = part->Package_ID;
  form->SQ_S_R929_participates_in = part;
  Escher_SetInsertElement( &part->SQ_P_R929_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_S FROM SQ_P ACROSS R929
 */
void
ooaofooa_SQ_P_R929_Unlink_contains( ooaofooa_SQ_S * part, ooaofooa_SQ_P * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sequence_Package_ID = 0;
  form->SQ_S_R929_participates_in = 0;
  Escher_SetRemoveElement( &part->SQ_P_R929_contains, (Escher_ObjectSet_s *) form );
}

/* Accessors to SQ_P[R930] subtypes */


/*
 * RELATE PE_PE TO SQ_P ACROSS R8001
 */
void
ooaofooa_SQ_P_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_SQ_P * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Element_ID;
  /* Optimized linkage for SQ_P->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->SQ_P[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_SQ_P_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM SQ_P ACROSS R8001
 */
void
ooaofooa_SQ_P_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_SQ_P * subtype )
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
ooaofooa_SQ_P_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_P * self = (ooaofooa_SQ_P *) instance;
  printf( "INSERT INTO SQ_P VALUES ( %ld,%ld );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sequence_Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_P_container[ ooaofooa_SQ_P_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_P ooaofooa_SQ_P_instances[ ooaofooa_SQ_P_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_P_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_P_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_P_instances,
  sizeof( ooaofooa_SQ_P ), 0, ooaofooa_SQ_P_MAX_EXTENT_SIZE
  };


