/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_CDT_class.c
 *
 * Class:       Core Data Type  (S_CDT)
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
ooaofooa_S_CDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_CDT * self = (ooaofooa_S_CDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Core_Typ = Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_CDT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_CDT * ooaofooa_S_CDT_instance = (ooaofooa_S_CDT *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_CDT_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_CDT_R17_Link( ooaofooa_S_DTrelated_instance1, ooaofooa_S_CDT_instance );
  }
}


/*
 * RELATE S_DT TO S_CDT ACROSS R17
 */
void
ooaofooa_S_CDT_R17_Link( ooaofooa_S_DT * supertype, ooaofooa_S_CDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for S_CDT->S_DT[R17] */
  subtype->S_DT_R17 = supertype;
  /* Optimized linkage for S_DT->S_CDT[R17] */
  supertype->R17_subtype = subtype;
  supertype->R17_object_id = ooaofooa_S_CDT_CLASS_NUMBER;
}


/*
 * UNRELATE S_DT FROM S_CDT ACROSS R17
 */
void
ooaofooa_S_CDT_R17_Unlink( ooaofooa_S_DT * supertype, ooaofooa_S_CDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->S_DT_R17 = 0;
  supertype->R17_subtype = 0;
  supertype->R17_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_CDT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_CDT * self = (ooaofooa_S_CDT *) instance;
  printf( "INSERT INTO S_CDT VALUES ( %ld,%d );\n",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->Core_Typ );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_CDT_container[ ooaofooa_S_CDT_MAX_EXTENT_SIZE ];
static ooaofooa_S_CDT ooaofooa_S_CDT_instances[ ooaofooa_S_CDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_CDT_extent = {
  {0,0}, {0,0}, &ooaofooa_S_CDT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_CDT_instances,
  sizeof( ooaofooa_S_CDT ), 0, ooaofooa_S_CDT_MAX_EXTENT_SIZE
  };


