/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_ESS_class.c
 *
 * Class:       Event Specification Statement  (E_ESS)
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
ooaofooa_E_ESS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_ESS * self = (ooaofooa_E_ESS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->ParmListOK = ( '0' != *avlstring[ 2 ] );
  self->PEIndicated = ( '0' != *avlstring[ 3 ] );
  self->eventDerivedLabelLineNumber = Escher_atoi( avlstring[ 4 ] );
  self->eventDerivedLabelColumn = Escher_atoi( avlstring[ 5 ] );
  self->eventMeaningLineNumber = Escher_atoi( avlstring[ 6 ] );
  self->eventMeaningColumn = Escher_atoi( avlstring[ 7 ] );
  self->eventTargetKeyLettersLineNumber = Escher_atoi( avlstring[ 8 ] );
  self->eventTargetKeyLettersColumn = Escher_atoi( avlstring[ 9 ] );
  self->firstEventDataItemNameLineNumber = Escher_atoi( avlstring[ 10 ] );
  self->firstEventDataItemNameColumn = Escher_atoi( avlstring[ 11 ] );
  self->currentLaterEventDataItemNameLineNumber = Escher_atoi( avlstring[ 12 ] );
  self->currentLaterEventDataItemNameColumn = Escher_atoi( avlstring[ 13 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_ESS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_ESS * ooaofooa_E_ESS_instance = (ooaofooa_E_ESS *) instance;
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_E_ESS_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_E_ESS_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_E_ESS_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_E_ESS *
ooaofooa_E_ESS_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_E_ESS * w; 
  Escher_Iterator_s iter_E_ESS;
  Escher_IteratorReset( &iter_E_ESS, &pG_ooaofooa_E_ESS_extent.active );
  while ( (w = (ooaofooa_E_ESS *) Escher_IteratorNext( &iter_E_ESS )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO E_ESS ACROSS R603
 */
void
ooaofooa_E_ESS_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_E_ESS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_ESS->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->E_ESS[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_E_ESS_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM E_ESS ACROSS R603
 */
void
ooaofooa_E_ESS_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_E_ESS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/* Accessors to E_ESS[R701] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_ESS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_ESS * self = (ooaofooa_E_ESS *) instance;
  printf( "INSERT INTO E_ESS VALUES ( %ld,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    self->ParmListOK,
    self->PEIndicated,
    self->eventDerivedLabelLineNumber,
    self->eventDerivedLabelColumn,
    self->eventMeaningLineNumber,
    self->eventMeaningColumn,
    self->eventTargetKeyLettersLineNumber,
    self->eventTargetKeyLettersColumn,
    self->firstEventDataItemNameLineNumber,
    self->firstEventDataItemNameColumn,
    self->currentLaterEventDataItemNameLineNumber,
    self->currentLaterEventDataItemNameColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_ESS_container[ ooaofooa_E_ESS_MAX_EXTENT_SIZE ];
static ooaofooa_E_ESS ooaofooa_E_ESS_instances[ ooaofooa_E_ESS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_ESS_extent = {
  {0,0}, {0,0}, &ooaofooa_E_ESS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_ESS_instances,
  sizeof( ooaofooa_E_ESS ), 0, ooaofooa_E_ESS_MAX_EXTENT_SIZE
  };


