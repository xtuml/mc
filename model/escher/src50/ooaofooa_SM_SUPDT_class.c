/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SUPDT_class.c
 *
 * Class:       Event Supplemental Data  (SM_SUPDT)
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
ooaofooa_SM_SUPDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_SUPDT * self = (ooaofooa_SM_SUPDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->SMspd_ID;
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Non_Local = ( '0' != *avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_SUPDT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_SUPDT * ooaofooa_SM_SUPDT_instance = (ooaofooa_SM_SUPDT *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_SUPDT_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_SUPDT_R523_Link_contains( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_SUPDT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_SUPDT *
ooaofooa_SM_SUPDT_AnyWhere1( Escher_UniqueID_t w_SMspd_ID, Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_SUPDT * w; 
  Escher_Iterator_s iter_SM_SUPDT;
  Escher_IteratorReset( &iter_SM_SUPDT, &pG_ooaofooa_SM_SUPDT_extent.active );
  while ( (w = (ooaofooa_SM_SUPDT *) Escher_IteratorNext( &iter_SM_SUPDT )) != 0 ) {
    if ( w->SMspd_ID == w_SMspd_ID && w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO SM_SUPDT ACROSS R523
 */
void
ooaofooa_SM_SUPDT_R523_Link_contains( ooaofooa_SM_SM * part, ooaofooa_SM_SUPDT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R523_is_assigned_to = part;
  Escher_SetInsertElement( &part->SM_SUPDT_R523_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM SM_SUPDT ACROSS R523
 */
void
ooaofooa_SM_SUPDT_R523_Unlink_contains( ooaofooa_SM_SM * part, ooaofooa_SM_SUPDT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R523_is_assigned_to = 0;
  Escher_SetRemoveElement( &part->SM_SUPDT_R523_contains, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_SUPDT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_SUPDT * self = (ooaofooa_SM_SUPDT *) instance;
  printf( "INSERT INTO SM_SUPDT VALUES ( %ld,%ld,%d );\n",
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    self->Non_Local );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_SUPDT_container[ ooaofooa_SM_SUPDT_MAX_EXTENT_SIZE ];
static ooaofooa_SM_SUPDT ooaofooa_SM_SUPDT_instances[ ooaofooa_SM_SUPDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_SUPDT_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_SUPDT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_SUPDT_instances,
  sizeof( ooaofooa_SM_SUPDT ), 0, ooaofooa_SM_SUPDT_MAX_EXTENT_SIZE
  };


