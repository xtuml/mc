/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GSME_class.c
 *
 * Class:       Generate SM Event Statement  (E_GSME)
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
ooaofooa_E_GSME_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_GSME * self = (ooaofooa_E_GSME *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_GSME_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_GSME * ooaofooa_E_GSME_instance = (ooaofooa_E_GSME *) instance;
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = (ooaofooa_SM_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_E_GSME_instance->SMevt_ID ];
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_E_GSME_R707_Link( ooaofooa_SM_EVTrelated_instance1, ooaofooa_E_GSME_instance );
  }
  {
  ooaofooa_E_GES * ooaofooa_E_GESrelated_instance1 = ooaofooa_E_GES_AnyWhere1( ooaofooa_E_GSME_instance->Statement_ID );
  if ( ooaofooa_E_GESrelated_instance1 ) {
    ooaofooa_E_GSME_R703_Link( ooaofooa_E_GESrelated_instance1, ooaofooa_E_GSME_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_E_GSME *
ooaofooa_E_GSME_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_E_GSME * w; 
  Escher_Iterator_s iter_E_GSME;
  Escher_IteratorReset( &iter_E_GSME, &pG_ooaofooa_E_GSME_extent.active );
  while ( (w = (ooaofooa_E_GSME *) Escher_IteratorNext( &iter_E_GSME )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE E_GES TO E_GSME ACROSS R703
 */
void
ooaofooa_E_GSME_R703_Link( ooaofooa_E_GES * supertype, ooaofooa_E_GSME * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_GSME->E_GES[R703] */
  subtype->E_GES_R703 = supertype;
  /* Optimized linkage for E_GES->E_GSME[R703] */
  supertype->R703_subtype = subtype;
  supertype->R703_object_id = ooaofooa_E_GSME_CLASS_NUMBER;
}


/*
 * UNRELATE E_GES FROM E_GSME ACROSS R703
 */
void
ooaofooa_E_GSME_R703_Unlink( ooaofooa_E_GES * supertype, ooaofooa_E_GSME * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_GES_R703 = 0;
  supertype->R703_subtype = 0;
  supertype->R703_object_id = 0;
}


/* Accessors to E_GSME[R705] subtypes */


/*
 * RELATE SM_EVT TO E_GSME ACROSS R707
 */
void
ooaofooa_E_GSME_R707_Link( ooaofooa_SM_EVT * part, ooaofooa_E_GSME * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = part->SMevt_ID;
  form->SM_EVT_R707_generates = part;
  Escher_SetInsertElement( &part->E_GSME_R707, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVT FROM E_GSME ACROSS R707
 */
void
ooaofooa_E_GSME_R707_Unlink( ooaofooa_SM_EVT * part, ooaofooa_E_GSME * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = 0;
  form->SM_EVT_R707_generates = 0;
  Escher_SetRemoveElement( &part->E_GSME_R707, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_GSME_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_GSME * self = (ooaofooa_E_GSME *) instance;
  printf( "INSERT INTO E_GSME VALUES ( %ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_GSME_container[ ooaofooa_E_GSME_MAX_EXTENT_SIZE ];
static ooaofooa_E_GSME ooaofooa_E_GSME_instances[ ooaofooa_E_GSME_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_GSME_extent = {
  {0,0}, {0,0}, &ooaofooa_E_GSME_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_GSME_instances,
  sizeof( ooaofooa_E_GSME ), 0, ooaofooa_E_GSME_MAX_EXTENT_SIZE
  };


