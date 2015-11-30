/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GES_class.c
 *
 * Class:       Generate Event Statement  (E_GES)
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
ooaofooa_E_GES_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_GES * self = (ooaofooa_E_GES *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_GES_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_GES * ooaofooa_E_GES_instance = (ooaofooa_E_GES *) instance;
  ooaofooa_E_ESS * ooaofooa_E_ESSrelated_instance1 = ooaofooa_E_ESS_AnyWhere1( ooaofooa_E_GES_instance->Statement_ID );
  if ( ooaofooa_E_ESSrelated_instance1 ) {
    ooaofooa_E_GES_R701_Link( ooaofooa_E_ESSrelated_instance1, ooaofooa_E_GES_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_E_GES *
ooaofooa_E_GES_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_E_GES * w; 
  Escher_Iterator_s iter_E_GES;
  Escher_IteratorReset( &iter_E_GES, &pG_ooaofooa_E_GES_extent.active );
  while ( (w = (ooaofooa_E_GES *) Escher_IteratorNext( &iter_E_GES )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE E_ESS TO E_GES ACROSS R701
 */
void
ooaofooa_E_GES_R701_Link( ooaofooa_E_ESS * supertype, ooaofooa_E_GES * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_GES->E_ESS[R701] */
  subtype->E_ESS_R701 = supertype;
  /* Optimized linkage for E_ESS->E_GES[R701] */
  supertype->R701_subtype = subtype;
  supertype->R701_object_id = ooaofooa_E_GES_CLASS_NUMBER;
}


/*
 * UNRELATE E_ESS FROM E_GES ACROSS R701
 */
void
ooaofooa_E_GES_R701_Unlink( ooaofooa_E_ESS * supertype, ooaofooa_E_GES * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_ESS_R701 = 0;
  supertype->R701_subtype = 0;
  supertype->R701_object_id = 0;
}


/* Accessors to E_GES[R703] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_GES_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_GES * self = (ooaofooa_E_GES *) instance;
  printf( "INSERT INTO E_GES VALUES ( %ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_GES_container[ ooaofooa_E_GES_MAX_EXTENT_SIZE ];
static ooaofooa_E_GES ooaofooa_E_GES_instances[ ooaofooa_E_GES_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_GES_extent = {
  {0,0}, {0,0}, &ooaofooa_E_GES_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_GES_instances,
  sizeof( ooaofooa_E_GES ), 0, ooaofooa_E_GES_MAX_EXTENT_SIZE
  };


