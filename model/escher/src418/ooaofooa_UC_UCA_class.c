/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_UCA_class.c
 *
 * Class:       Use Case Association  (UC_UCA)
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
ooaofooa_UC_UCA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_UC_UCA * self = (ooaofooa_UC_UCA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Assoc_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Source_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Destination_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_UC_UCA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_UC_UCA * ooaofooa_UC_UCA_instance = (ooaofooa_UC_UCA *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_UC_UCA_instance->Assoc_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_UC_UCA_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_UC_UCA_instance );
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_UC_UCA_instance->Source_Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_UC_UCA_R1206_Link_is_source( ooaofooa_SQ_Prelated_instance1, ooaofooa_UC_UCA_instance );
  }
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_UC_UCA_instance->Destination_Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_UC_UCA_R1207_Link_is_destination( ooaofooa_SQ_Prelated_instance1, ooaofooa_UC_UCA_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_UC_UCA *
ooaofooa_UC_UCA_AnyWhere1( Escher_UniqueID_t w_Assoc_ID )
{
  ooaofooa_UC_UCA * w; 
  Escher_Iterator_s iter_UC_UCA;
  Escher_IteratorReset( &iter_UC_UCA, &pG_ooaofooa_UC_UCA_extent.active );
  while ( (w = (ooaofooa_UC_UCA *) Escher_IteratorNext( &iter_UC_UCA )) != 0 ) {
    if ( w->Assoc_ID == w_Assoc_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_P TO UC_UCA ACROSS R1206
 */
void
ooaofooa_UC_UCA_R1206_Link_is_source( ooaofooa_SQ_P * part, ooaofooa_UC_UCA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Source_Part_ID = part->Part_ID;
  form->SQ_P_R1206_starts_at = part;
  Escher_SetInsertElement( &part->UC_UCA_R1206_is_source, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_P FROM UC_UCA ACROSS R1206
 */
void
ooaofooa_UC_UCA_R1206_Unlink_is_source( ooaofooa_SQ_P * part, ooaofooa_UC_UCA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Source_Part_ID = 0;
  form->SQ_P_R1206_starts_at = 0;
  Escher_SetRemoveElement( &part->UC_UCA_R1206_is_source, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SQ_P TO UC_UCA ACROSS R1207
 */
void
ooaofooa_UC_UCA_R1207_Link_is_destination( ooaofooa_SQ_P * part, ooaofooa_UC_UCA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Destination_Part_ID = part->Part_ID;
  form->SQ_P_R1207_ends_at = part;
  Escher_SetInsertElement( &part->UC_UCA_R1207_is_destination, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_P FROM UC_UCA ACROSS R1207
 */
void
ooaofooa_UC_UCA_R1207_Unlink_is_destination( ooaofooa_SQ_P * part, ooaofooa_UC_UCA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Destination_Part_ID = 0;
  form->SQ_P_R1207_ends_at = 0;
  Escher_SetRemoveElement( &part->UC_UCA_R1207_is_destination, (Escher_ObjectSet_s *) form );
}

/* Accessors to UC_UCA[R1210] subtypes */


/*
 * RELATE PE_PE TO UC_UCA ACROSS R8001
 */
void
ooaofooa_UC_UCA_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_UC_UCA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Assoc_ID = supertype->Element_ID;
  /* Optimized linkage for UC_UCA->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->UC_UCA[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_UC_UCA_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM UC_UCA ACROSS R8001
 */
void
ooaofooa_UC_UCA_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_UC_UCA * subtype )
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
ooaofooa_UC_UCA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_UC_UCA * self = (ooaofooa_UC_UCA *) instance;
  printf( "INSERT INTO UC_UCA VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Assoc_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Source_Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Destination_Part_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_UC_UCA_container[ ooaofooa_UC_UCA_MAX_EXTENT_SIZE ];
static ooaofooa_UC_UCA ooaofooa_UC_UCA_instances[ ooaofooa_UC_UCA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_UC_UCA_extent = {
  {0,0}, {0,0}, &ooaofooa_UC_UCA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_UC_UCA_instances,
  sizeof( ooaofooa_UC_UCA ), 0, ooaofooa_UC_UCA_MAX_EXTENT_SIZE
  };


