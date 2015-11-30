/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_FPIP_class.c
 *
 * Class:       Function Package in Package  (S_FPIP)
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
ooaofooa_S_FPIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_FPIP * self = (ooaofooa_S_FPIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->FunPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_FPIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_FPIP * ooaofooa_S_FPIP_instance = (ooaofooa_S_FPIP *) instance;
  ooaofooa_S_FPK * ooaofooa_S_FPKrelated_instance1 = (ooaofooa_S_FPK *) Escher_instance_cache[ (intptr_t) ooaofooa_S_FPIP_instance->FunPack_ID ];
  if ( ooaofooa_S_FPKrelated_instance1 ) {
    ooaofooa_S_FPIP_R30_Link_is_parent_to_other_packages_via( ooaofooa_S_FPKrelated_instance1, ooaofooa_S_FPIP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_FPIP *
ooaofooa_S_FPIP_AnyWhere1( Escher_UniqueID_t w_FunPack_ID )
{
  ooaofooa_S_FPIP * w; 
  Escher_Iterator_s iter_S_FPIP;
  Escher_IteratorReset( &iter_S_FPIP, &pG_ooaofooa_S_FPIP_extent.active );
  while ( (w = (ooaofooa_S_FPIP *) Escher_IteratorNext( &iter_S_FPIP )) != 0 ) {
    if ( w->FunPack_ID == w_FunPack_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_FPK TO S_FPIP ACROSS R30
 */
void
ooaofooa_S_FPIP_R30_Link_is_parent_to_other_packages_via( ooaofooa_S_FPK * part, ooaofooa_S_FPIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->FunPack_ID = part->FunPack_ID;
  form->S_FPK_R30_contains_children_of = part;
  part->S_FPIP_R30_is_parent_to_other_packages_via = form;
}

/*
 * UNRELATE S_FPK FROM S_FPIP ACROSS R30
 */
void
ooaofooa_S_FPIP_R30_Unlink_is_parent_to_other_packages_via( ooaofooa_S_FPK * part, ooaofooa_S_FPIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_FPK_R30_contains_children_of = 0;
  part->S_FPIP_R30_is_parent_to_other_packages_via = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_FPIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_FPIP * self = (ooaofooa_S_FPIP *) instance;
  printf( "INSERT INTO S_FPIP VALUES ( %ld );\n",
    ((long)self->FunPack_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_FPIP_container[ ooaofooa_S_FPIP_MAX_EXTENT_SIZE ];
static ooaofooa_S_FPIP ooaofooa_S_FPIP_instances[ ooaofooa_S_FPIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_FPIP_extent = {
  {0,0}, {0,0}, &ooaofooa_S_FPIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_FPIP_instances,
  sizeof( ooaofooa_S_FPIP ), 0, ooaofooa_S_FPIP_MAX_EXTENT_SIZE
  };


