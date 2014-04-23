/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEPIP_class.c
 *
 * Class:       EE Package in Package  (S_EEPIP)
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
ooaofooa_S_EEPIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EEPIP * self = (ooaofooa_S_EEPIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->EEPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EEPIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EEPIP * ooaofooa_S_EEPIP_instance = (ooaofooa_S_EEPIP *) instance;
  ooaofooa_S_EEPK * ooaofooa_S_EEPKrelated_instance1 = (ooaofooa_S_EEPK *) Escher_instance_cache[ (intptr_t) ooaofooa_S_EEPIP_instance->EEPack_ID ];
  if ( ooaofooa_S_EEPKrelated_instance1 ) {
    ooaofooa_S_EEPIP_R34_Link_is_parent_to_other_packages_via( ooaofooa_S_EEPKrelated_instance1, ooaofooa_S_EEPIP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_EEPIP *
ooaofooa_S_EEPIP_AnyWhere1( Escher_UniqueID_t w_EEPack_ID )
{
  ooaofooa_S_EEPIP * w; 
  Escher_Iterator_s iter_S_EEPIP;
  Escher_IteratorReset( &iter_S_EEPIP, &pG_ooaofooa_S_EEPIP_extent.active );
  while ( (w = (ooaofooa_S_EEPIP *) Escher_IteratorNext( &iter_S_EEPIP )) != 0 ) {
    if ( w->EEPack_ID == w_EEPack_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_EEPK TO S_EEPIP ACROSS R34
 */
void
ooaofooa_S_EEPIP_R34_Link_is_parent_to_other_packages_via( ooaofooa_S_EEPK * part, ooaofooa_S_EEPIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEPack_ID = part->EEPack_ID;
  form->S_EEPK_R34_contains_children_of = part;
  part->S_EEPIP_R34_is_parent_to_other_packages_via = form;
}

/*
 * UNRELATE S_EEPK FROM S_EEPIP ACROSS R34
 */
void
ooaofooa_S_EEPIP_R34_Unlink_is_parent_to_other_packages_via( ooaofooa_S_EEPK * part, ooaofooa_S_EEPIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_EEPK_R34_contains_children_of = 0;
  part->S_EEPIP_R34_is_parent_to_other_packages_via = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EEPIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EEPIP * self = (ooaofooa_S_EEPIP *) instance;
  printf( "INSERT INTO S_EEPIP VALUES ( %ld );\n",
    ((long)self->EEPack_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EEPIP_container[ ooaofooa_S_EEPIP_MAX_EXTENT_SIZE ];
static ooaofooa_S_EEPIP ooaofooa_S_EEPIP_instances[ ooaofooa_S_EEPIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EEPIP_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EEPIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EEPIP_instances,
  sizeof( ooaofooa_S_EEPIP ), 0, ooaofooa_S_EEPIP_MAX_EXTENT_SIZE
  };


