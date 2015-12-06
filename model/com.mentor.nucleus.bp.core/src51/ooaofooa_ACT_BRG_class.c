/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BRG_class.c
 *
 * Class:       Bridge Invocation  (ACT_BRG)
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
ooaofooa_ACT_BRG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_BRG * self = (ooaofooa_ACT_BRG *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Brg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->bridgeNameLineNumber = Escher_atoi( avlstring[ 3 ] );
  self->bridgeNameColumn = Escher_atoi( avlstring[ 4 ] );
  self->externalEntityKeyLettersLineNumber = Escher_atoi( avlstring[ 5 ] );
  self->externalEntityKeyLettersColumn = Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_BRG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BRG * ooaofooa_ACT_BRG_instance = (ooaofooa_ACT_BRG *) instance;
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BRG_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_BRG_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_BRG_instance );
  }
  {
  ooaofooa_S_BRG * ooaofooa_S_BRGrelated_instance1 = (ooaofooa_S_BRG *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BRG_instance->Brg_ID ];
  if ( ooaofooa_S_BRGrelated_instance1 ) {
    ooaofooa_ACT_BRG_R674_Link( ooaofooa_S_BRGrelated_instance1, ooaofooa_ACT_BRG_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_BRG *
ooaofooa_ACT_BRG_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_BRG * w; 
  Escher_Iterator_s iter_ACT_BRG;
  Escher_IteratorReset( &iter_ACT_BRG, &pG_ooaofooa_ACT_BRG_extent.active );
  while ( (w = (ooaofooa_ACT_BRG *) Escher_IteratorNext( &iter_ACT_BRG )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_BRG ACROSS R603
 */
void
ooaofooa_ACT_BRG_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_BRG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_BRG->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_BRG[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_BRG_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_BRG ACROSS R603
 */
void
ooaofooa_ACT_BRG_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_BRG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE S_BRG TO ACT_BRG ACROSS R674
 */
void
ooaofooa_ACT_BRG_R674_Link( ooaofooa_S_BRG * part, ooaofooa_ACT_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = part->Brg_ID;
  form->S_BRG_R674_is_an_invocation_of = part;
  Escher_SetInsertElement( &part->ACT_BRG_R674, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_BRG FROM ACT_BRG ACROSS R674
 */
void
ooaofooa_ACT_BRG_R674_Unlink( ooaofooa_S_BRG * part, ooaofooa_ACT_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = 0;
  form->S_BRG_R674_is_an_invocation_of = 0;
  Escher_SetRemoveElement( &part->ACT_BRG_R674, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_BRG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BRG * self = (ooaofooa_ACT_BRG *) instance;
  printf( "INSERT INTO ACT_BRG VALUES ( %ld,%ld,%d,%d,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Brg_ID & ESCHER_IDDUMP_MASK),
    self->bridgeNameLineNumber,
    self->bridgeNameColumn,
    self->externalEntityKeyLettersLineNumber,
    self->externalEntityKeyLettersColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_BRG_container[ ooaofooa_ACT_BRG_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_BRG ooaofooa_ACT_BRG_instances[ ooaofooa_ACT_BRG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_BRG_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_BRG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_BRG_instances,
  sizeof( ooaofooa_ACT_BRG ), 0, ooaofooa_ACT_BRG_MAX_EXTENT_SIZE
  };


