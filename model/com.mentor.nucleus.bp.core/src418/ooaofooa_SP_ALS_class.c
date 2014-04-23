/*----------------------------------------------------------------------------
 * File:  ooaofooa_SP_ALS_class.c
 *
 * Class:       Action Language Searchable  (SP_ALS)
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
ooaofooa_SP_ALS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SP_ALS * self = (ooaofooa_SP_ALS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->searchableValue = Escher_strcpy( self->searchableValue, avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SP_ALS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SP_ALS * ooaofooa_SP_ALS_instance = (ooaofooa_SP_ALS *) instance;
  ooaofooa_SP_SE * ooaofooa_SP_SErelated_instance1 = (ooaofooa_SP_SE *) Escher_instance_cache[ (intptr_t) ooaofooa_SP_ALS_instance->Id ];
  if ( ooaofooa_SP_SErelated_instance1 ) {
    ooaofooa_SP_ALS_R9702_Link( ooaofooa_SP_SErelated_instance1, ooaofooa_SP_ALS_instance );
  }
}


/*
 * RELATE SP_SE TO SP_ALS ACROSS R9702
 */
void
ooaofooa_SP_ALS_R9702_Link( ooaofooa_SP_SE * supertype, ooaofooa_SP_ALS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SP_ALS->SP_SE[R9702] */
  subtype->SP_SE_R9702 = supertype;
  /* Optimized linkage for SP_SE->SP_ALS[R9702] */
  supertype->R9702_subtype = subtype;
  supertype->R9702_object_id = ooaofooa_SP_ALS_CLASS_NUMBER;
}


/*
 * UNRELATE SP_SE FROM SP_ALS ACROSS R9702
 */
void
ooaofooa_SP_ALS_R9702_Unlink( ooaofooa_SP_SE * supertype, ooaofooa_SP_ALS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SP_SE_R9702 = 0;
  supertype->R9702_subtype = 0;
  supertype->R9702_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SP_ALS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SP_ALS * self = (ooaofooa_SP_ALS *) instance;
  printf( "INSERT INTO SP_ALS VALUES ( %ld,'%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->searchableValue ) ? self->searchableValue : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SP_ALS_container[ ooaofooa_SP_ALS_MAX_EXTENT_SIZE ];
static ooaofooa_SP_ALS ooaofooa_SP_ALS_instances[ ooaofooa_SP_ALS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SP_ALS_extent = {
  {0,0}, {0,0}, &ooaofooa_SP_ALS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SP_ALS_instances,
  sizeof( ooaofooa_SP_ALS ), 0, ooaofooa_SP_ALS_MAX_EXTENT_SIZE
  };


