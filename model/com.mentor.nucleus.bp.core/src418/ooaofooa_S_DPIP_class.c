/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DPIP_class.c
 *
 * Class:       Data Type Package in Package  (S_DPIP)
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
ooaofooa_S_DPIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_DPIP * self = (ooaofooa_S_DPIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_DPIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_DPIP * ooaofooa_S_DPIP_instance = (ooaofooa_S_DPIP *) instance;
  ooaofooa_S_DPK * ooaofooa_S_DPKrelated_instance1 = ooaofooa_S_DPK_AnyWhere1( ooaofooa_S_DPIP_instance->Package_ID );
  if ( ooaofooa_S_DPKrelated_instance1 ) {
    ooaofooa_S_DPIP_R37_Link_is_parent_to_other_packages_via( ooaofooa_S_DPKrelated_instance1, ooaofooa_S_DPIP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_DPIP *
ooaofooa_S_DPIP_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_S_DPIP * w; 
  Escher_Iterator_s iter_S_DPIP;
  Escher_IteratorReset( &iter_S_DPIP, &pG_ooaofooa_S_DPIP_extent.active );
  while ( (w = (ooaofooa_S_DPIP *) Escher_IteratorNext( &iter_S_DPIP )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DPK TO S_DPIP ACROSS R37
 */
void
ooaofooa_S_DPIP_R37_Link_is_parent_to_other_packages_via( ooaofooa_S_DPK * part, ooaofooa_S_DPIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->S_DPK_R37_contains_children_of = part;
  part->S_DPIP_R37_is_parent_to_other_packages_via = form;
}

/*
 * UNRELATE S_DPK FROM S_DPIP ACROSS R37
 */
void
ooaofooa_S_DPIP_R37_Unlink_is_parent_to_other_packages_via( ooaofooa_S_DPK * part, ooaofooa_S_DPIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_DPK_R37_contains_children_of = 0;
  part->S_DPIP_R37_is_parent_to_other_packages_via = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_DPIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_DPIP * self = (ooaofooa_S_DPIP *) instance;
  printf( "INSERT INTO S_DPIP VALUES ( %ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_DPIP_container[ ooaofooa_S_DPIP_MAX_EXTENT_SIZE ];
static ooaofooa_S_DPIP ooaofooa_S_DPIP_instances[ ooaofooa_S_DPIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_DPIP_extent = {
  {0,0}, {0,0}, &ooaofooa_S_DPIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_DPIP_instances,
  sizeof( ooaofooa_S_DPIP ), 0, ooaofooa_S_DPIP_MAX_EXTENT_SIZE
  };


