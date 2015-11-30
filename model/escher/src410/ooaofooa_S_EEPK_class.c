/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EEPK_class.c
 *
 * Class:       External Entity Package  (S_EEPK)
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
ooaofooa_S_EEPK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EEPK * self = (ooaofooa_S_EEPK *) instance;
  /* Initialize application analysis class attributes.  */
  self->EEPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->EEPack_ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Parent_EEPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EEPK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EEPK * ooaofooa_S_EEPK_instance = (ooaofooa_S_EEPK *) instance;
  ooaofooa_S_EEPIP * ooaofooa_S_EEPIPrelated_instance1 = ooaofooa_S_EEPIP_AnyWhere1( ooaofooa_S_EEPK_instance->Parent_EEPack_ID );
  if ( ooaofooa_S_EEPIPrelated_instance1 ) {
    ooaofooa_S_EEPK_R35_Link_contains( ooaofooa_S_EEPIPrelated_instance1, ooaofooa_S_EEPK_instance );
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_EEPK_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_S_EEPK_R36_Link_contains( ooaofooa_S_DOMrelated_instance1, ooaofooa_S_EEPK_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_EEPK *
ooaofooa_S_EEPK_AnyWhere1( Escher_UniqueID_t w_EEPack_ID )
{
  ooaofooa_S_EEPK * w; 
  Escher_Iterator_s iter_S_EEPK;
  Escher_IteratorReset( &iter_S_EEPK, &pG_ooaofooa_S_EEPK_extent.active );
  while ( (w = (ooaofooa_S_EEPK *) Escher_IteratorNext( &iter_S_EEPK )) != 0 ) {
    if ( w->EEPack_ID == w_EEPack_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_EEPIP TO S_EEPK ACROSS R35
 */
void
ooaofooa_S_EEPK_R35_Link_contains( ooaofooa_S_EEPIP * part, ooaofooa_S_EEPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_EEPack_ID = part->EEPack_ID;
  form->S_EEPIP_R35_is_child_via = part;
  Escher_SetInsertElement( &part->S_EEPK_R35_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EEPIP FROM S_EEPK ACROSS R35
 */
void
ooaofooa_S_EEPK_R35_Unlink_contains( ooaofooa_S_EEPIP * part, ooaofooa_S_EEPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_EEPack_ID = 0;
  form->S_EEPIP_R35_is_child_via = 0;
  Escher_SetRemoveElement( &part->S_EEPK_R35_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DOM TO S_EEPK ACROSS R36
 */
void
ooaofooa_S_EEPK_R36_Link_contains( ooaofooa_S_DOM * part, ooaofooa_S_EEPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R36_is_contained_in = part;
  Escher_SetInsertElement( &part->S_EEPK_R36_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM S_EEPK ACROSS R36
 */
void
ooaofooa_S_EEPK_R36_Unlink_contains( ooaofooa_S_DOM * part, ooaofooa_S_EEPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R36_is_contained_in = 0;
  Escher_SetRemoveElement( &part->S_EEPK_R36_contains, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EEPK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EEPK * self = (ooaofooa_S_EEPK *) instance;
  printf( "INSERT INTO S_EEPK VALUES ( %ld,'%s',%ld,%ld );\n",
    ((long)self->EEPack_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Parent_EEPack_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EEPK_container[ ooaofooa_S_EEPK_MAX_EXTENT_SIZE ];
static ooaofooa_S_EEPK ooaofooa_S_EEPK_instances[ ooaofooa_S_EEPK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EEPK_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EEPK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EEPK_instances,
  sizeof( ooaofooa_S_EEPK ), 0, ooaofooa_S_EEPK_MAX_EXTENT_SIZE
  };


