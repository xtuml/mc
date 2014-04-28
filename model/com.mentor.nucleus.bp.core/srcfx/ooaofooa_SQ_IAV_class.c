/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_IAV_class.c
 *
 * Class:       Informal Attribute Value  (SQ_IAV)
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
ooaofooa_SQ_IAV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_IAV * self = (ooaofooa_SQ_IAV *) instance;
  /* Initialize application analysis class attributes.  */
  self->Av_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_IAV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_IAV * ooaofooa_SQ_IAV_instance = (ooaofooa_SQ_IAV *) instance;
  ooaofooa_SQ_AV * ooaofooa_SQ_AVrelated_instance1 = (ooaofooa_SQ_AV *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_IAV_instance->Av_ID ];
  if ( ooaofooa_SQ_AVrelated_instance1 ) {
    ooaofooa_SQ_IAV_R948_Link( ooaofooa_SQ_AVrelated_instance1, ooaofooa_SQ_IAV_instance );
  }
}


/*
 * RELATE SQ_AV TO SQ_IAV ACROSS R948
 */
void
ooaofooa_SQ_IAV_R948_Link( ooaofooa_SQ_AV * supertype, ooaofooa_SQ_IAV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Av_ID = supertype->Av_ID;
  /* Optimized linkage for SQ_IAV->SQ_AV[R948] */
  subtype->SQ_AV_R948 = supertype;
  /* Optimized linkage for SQ_AV->SQ_IAV[R948] */
  supertype->R948_subtype = subtype;
  supertype->R948_object_id = ooaofooa_SQ_IAV_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_AV FROM SQ_IAV ACROSS R948
 */
void
ooaofooa_SQ_IAV_R948_Unlink( ooaofooa_SQ_AV * supertype, ooaofooa_SQ_IAV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_AV_R948 = 0;
  supertype->R948_subtype = 0;
  supertype->R948_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_IAV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_IAV * self = (ooaofooa_SQ_IAV *) instance;
  printf( "INSERT INTO SQ_IAV VALUES ( %ld );\n",
    ((long)self->Av_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_IAV_container[ ooaofooa_SQ_IAV_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_IAV ooaofooa_SQ_IAV_instances[ ooaofooa_SQ_IAV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_IAV_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_IAV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_IAV_instances,
  sizeof( ooaofooa_SQ_IAV ), 0, ooaofooa_SQ_IAV_MAX_EXTENT_SIZE
  };


