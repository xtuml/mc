/*----------------------------------------------------------------------------
 * File:  ooaofooa_IP_IPINIP_class.c
 *
 * Class:       Interface Package in Interface Package  (IP_IPINIP)
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
ooaofooa_IP_IPINIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_IP_IPINIP * self = (ooaofooa_IP_IPINIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_IP_IPINIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_IP_IPINIP * ooaofooa_IP_IPINIP_instance = (ooaofooa_IP_IPINIP *) instance;
  ooaofooa_IP_IP * ooaofooa_IP_IPrelated_instance1 = ooaofooa_IP_IP_AnyWhere1( ooaofooa_IP_IPINIP_instance->Package_ID );
  if ( ooaofooa_IP_IPrelated_instance1 ) {
    ooaofooa_IP_IPINIP_R4300_Link_may_contain( ooaofooa_IP_IPrelated_instance1, ooaofooa_IP_IPINIP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_IP_IPINIP *
ooaofooa_IP_IPINIP_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_IP_IPINIP * w; 
  Escher_Iterator_s iter_IP_IPINIP;
  Escher_IteratorReset( &iter_IP_IPINIP, &pG_ooaofooa_IP_IPINIP_extent.active );
  while ( (w = (ooaofooa_IP_IPINIP *) Escher_IteratorNext( &iter_IP_IPINIP )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE IP_IP TO IP_IPINIP ACROSS R4300
 */
void
ooaofooa_IP_IPINIP_R4300_Link_may_contain( ooaofooa_IP_IP * part, ooaofooa_IP_IPINIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->IP_IP_R4300_can_be_shown_in = part;
  part->IP_IPINIP_R4300_may_contain = form;
}

/*
 * UNRELATE IP_IP FROM IP_IPINIP ACROSS R4300
 */
void
ooaofooa_IP_IPINIP_R4300_Unlink_may_contain( ooaofooa_IP_IP * part, ooaofooa_IP_IPINIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->IP_IP_R4300_can_be_shown_in = 0;
  part->IP_IPINIP_R4300_may_contain = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_IP_IPINIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_IP_IPINIP * self = (ooaofooa_IP_IPINIP *) instance;
  printf( "INSERT INTO IP_IPINIP VALUES ( %ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_IP_IPINIP_container[ ooaofooa_IP_IPINIP_MAX_EXTENT_SIZE ];
static ooaofooa_IP_IPINIP ooaofooa_IP_IPINIP_instances[ ooaofooa_IP_IPINIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_IP_IPINIP_extent = {
  {0,0}, {0,0}, &ooaofooa_IP_IPINIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_IP_IPINIP_instances,
  sizeof( ooaofooa_IP_IPINIP ), 0, ooaofooa_IP_IPINIP_MAX_EXTENT_SIZE
  };


