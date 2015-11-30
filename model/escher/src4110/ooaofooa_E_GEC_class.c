/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GEC_class.c
 *
 * Class:       Generate to Creator  (E_GEC)
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
ooaofooa_E_GEC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_GEC * self = (ooaofooa_E_GEC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_GEC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_GEC * ooaofooa_E_GEC_instance = (ooaofooa_E_GEC *) instance;
  ooaofooa_E_GSME * ooaofooa_E_GSMErelated_instance1 = ooaofooa_E_GSME_AnyWhere1( ooaofooa_E_GEC_instance->Statement_ID );
  if ( ooaofooa_E_GSMErelated_instance1 ) {
    ooaofooa_E_GEC_R705_Link( ooaofooa_E_GSMErelated_instance1, ooaofooa_E_GEC_instance );
  }
}


/*
 * RELATE E_GSME TO E_GEC ACROSS R705
 */
void
ooaofooa_E_GEC_R705_Link( ooaofooa_E_GSME * supertype, ooaofooa_E_GEC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_GEC->E_GSME[R705] */
  subtype->E_GSME_R705 = supertype;
  /* Optimized linkage for E_GSME->E_GEC[R705] */
  supertype->R705_subtype = subtype;
  supertype->R705_object_id = ooaofooa_E_GEC_CLASS_NUMBER;
}


/*
 * UNRELATE E_GSME FROM E_GEC ACROSS R705
 */
void
ooaofooa_E_GEC_R705_Unlink( ooaofooa_E_GSME * supertype, ooaofooa_E_GEC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_GSME_R705 = 0;
  supertype->R705_subtype = 0;
  supertype->R705_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_GEC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_GEC * self = (ooaofooa_E_GEC *) instance;
  printf( "INSERT INTO E_GEC VALUES ( %ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_GEC_container[ ooaofooa_E_GEC_MAX_EXTENT_SIZE ];
static ooaofooa_E_GEC ooaofooa_E_GEC_instances[ ooaofooa_E_GEC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_GEC_extent = {
  {0,0}, {0,0}, &ooaofooa_E_GEC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_GEC_instances,
  sizeof( ooaofooa_E_GEC ), 0, ooaofooa_E_GEC_MAX_EXTENT_SIZE
  };


