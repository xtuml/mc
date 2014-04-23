/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CEA_class.c
 *
 * Class:       Create Event to Class  (E_CEA)
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
ooaofooa_E_CEA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_CEA * self = (ooaofooa_E_CEA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_CEA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_CEA * ooaofooa_E_CEA_instance = (ooaofooa_E_CEA *) instance;
  ooaofooa_E_CSME * ooaofooa_E_CSMErelated_instance1 = ooaofooa_E_CSME_AnyWhere1( ooaofooa_E_CEA_instance->Statement_ID );
  if ( ooaofooa_E_CSMErelated_instance1 ) {
    ooaofooa_E_CEA_R704_Link( ooaofooa_E_CSMErelated_instance1, ooaofooa_E_CEA_instance );
  }
}


/*
 * RELATE E_CSME TO E_CEA ACROSS R704
 */
void
ooaofooa_E_CEA_R704_Link( ooaofooa_E_CSME * supertype, ooaofooa_E_CEA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_CEA->E_CSME[R704] */
  subtype->E_CSME_R704 = supertype;
  /* Optimized linkage for E_CSME->E_CEA[R704] */
  supertype->R704_subtype = subtype;
  supertype->R704_object_id = ooaofooa_E_CEA_CLASS_NUMBER;
}


/*
 * UNRELATE E_CSME FROM E_CEA ACROSS R704
 */
void
ooaofooa_E_CEA_R704_Unlink( ooaofooa_E_CSME * supertype, ooaofooa_E_CEA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_CSME_R704 = 0;
  supertype->R704_subtype = 0;
  supertype->R704_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_CEA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_CEA * self = (ooaofooa_E_CEA *) instance;
  printf( "INSERT INTO E_CEA VALUES ( %ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_CEA_container[ ooaofooa_E_CEA_MAX_EXTENT_SIZE ];
static ooaofooa_E_CEA ooaofooa_E_CEA_instances[ ooaofooa_E_CEA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_CEA_extent = {
  {0,0}, {0,0}, &ooaofooa_E_CEA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_CEA_instances,
  sizeof( ooaofooa_E_CEA ), 0, ooaofooa_E_CEA_MAX_EXTENT_SIZE
  };


