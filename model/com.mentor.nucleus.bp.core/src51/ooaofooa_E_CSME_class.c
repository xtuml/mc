/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CSME_class.c
 *
 * Class:       Create SM Event Statement  (E_CSME)
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
ooaofooa_E_CSME_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_CSME * self = (ooaofooa_E_CSME *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_CSME_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_CSME * ooaofooa_E_CSME_instance = (ooaofooa_E_CSME *) instance;
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = (ooaofooa_SM_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_E_CSME_instance->SMevt_ID ];
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_E_CSME_R706_Link( ooaofooa_SM_EVTrelated_instance1, ooaofooa_E_CSME_instance );
  }
  {
  ooaofooa_E_CES * ooaofooa_E_CESrelated_instance1 = ooaofooa_E_CES_AnyWhere1( ooaofooa_E_CSME_instance->Statement_ID );
  if ( ooaofooa_E_CESrelated_instance1 ) {
    ooaofooa_E_CSME_R702_Link( ooaofooa_E_CESrelated_instance1, ooaofooa_E_CSME_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_E_CSME *
ooaofooa_E_CSME_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_E_CSME * w; 
  Escher_Iterator_s iter_E_CSME;
  Escher_IteratorReset( &iter_E_CSME, &pG_ooaofooa_E_CSME_extent.active );
  while ( (w = (ooaofooa_E_CSME *) Escher_IteratorNext( &iter_E_CSME )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE E_CES TO E_CSME ACROSS R702
 */
void
ooaofooa_E_CSME_R702_Link( ooaofooa_E_CES * supertype, ooaofooa_E_CSME * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_CSME->E_CES[R702] */
  subtype->E_CES_R702 = supertype;
  /* Optimized linkage for E_CES->E_CSME[R702] */
  supertype->R702_subtype = subtype;
  supertype->R702_object_id = ooaofooa_E_CSME_CLASS_NUMBER;
}


/*
 * UNRELATE E_CES FROM E_CSME ACROSS R702
 */
void
ooaofooa_E_CSME_R702_Unlink( ooaofooa_E_CES * supertype, ooaofooa_E_CSME * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_CES_R702 = 0;
  supertype->R702_subtype = 0;
  supertype->R702_object_id = 0;
}


/* Accessors to E_CSME[R704] subtypes */


/*
 * RELATE SM_EVT TO E_CSME ACROSS R706
 */
void
ooaofooa_E_CSME_R706_Link( ooaofooa_SM_EVT * part, ooaofooa_E_CSME * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = part->SMevt_ID;
  form->SM_EVT_R706_creates = part;
  Escher_SetInsertElement( &part->E_CSME_R706, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVT FROM E_CSME ACROSS R706
 */
void
ooaofooa_E_CSME_R706_Unlink( ooaofooa_SM_EVT * part, ooaofooa_E_CSME * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = 0;
  form->SM_EVT_R706_creates = 0;
  Escher_SetRemoveElement( &part->E_CSME_R706, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_CSME_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_CSME * self = (ooaofooa_E_CSME *) instance;
  printf( "INSERT INTO E_CSME VALUES ( %ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_CSME_container[ ooaofooa_E_CSME_MAX_EXTENT_SIZE ];
static ooaofooa_E_CSME ooaofooa_E_CSME_instances[ ooaofooa_E_CSME_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_CSME_extent = {
  {0,0}, {0,0}, &ooaofooa_E_CSME_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_CSME_instances,
  sizeof( ooaofooa_E_CSME ), 0, ooaofooa_E_CSME_MAX_EXTENT_SIZE
  };


