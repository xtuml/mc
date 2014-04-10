/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_FPK_class.c
 *
 * Class:       Function Package  (S_FPK)
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
ooaofooa_S_FPK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_FPK * self = (ooaofooa_S_FPK *) instance;
  /* Initialize application analysis class attributes.  */
  self->FunPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->FunPack_ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Parent_FunPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_FPK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_FPK * ooaofooa_S_FPK_instance = (ooaofooa_S_FPK *) instance;
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_FPK_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_S_FPK_R29_Link_contains( ooaofooa_S_DOMrelated_instance1, ooaofooa_S_FPK_instance );
  }
  {
  ooaofooa_S_FPIP * ooaofooa_S_FPIPrelated_instance1 = ooaofooa_S_FPIP_AnyWhere1( ooaofooa_S_FPK_instance->Parent_FunPack_ID );
  if ( ooaofooa_S_FPIPrelated_instance1 ) {
    ooaofooa_S_FPK_R32_Link_contains( ooaofooa_S_FPIPrelated_instance1, ooaofooa_S_FPK_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_FPK *
ooaofooa_S_FPK_AnyWhere1( Escher_UniqueID_t w_FunPack_ID )
{
  ooaofooa_S_FPK * w; 
  Escher_Iterator_s iter_S_FPK;
  Escher_IteratorReset( &iter_S_FPK, &pG_ooaofooa_S_FPK_extent.active );
  while ( (w = (ooaofooa_S_FPK *) Escher_IteratorNext( &iter_S_FPK )) != 0 ) {
    if ( w->FunPack_ID == w_FunPack_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO S_FPK ACROSS R29
 */
void
ooaofooa_S_FPK_R29_Link_contains( ooaofooa_S_DOM * part, ooaofooa_S_FPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R29_is_contained_in = part;
  Escher_SetInsertElement( &part->S_FPK_R29_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM S_FPK ACROSS R29
 */
void
ooaofooa_S_FPK_R29_Unlink_contains( ooaofooa_S_DOM * part, ooaofooa_S_FPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R29_is_contained_in = 0;
  Escher_SetRemoveElement( &part->S_FPK_R29_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_FPIP TO S_FPK ACROSS R32
 */
void
ooaofooa_S_FPK_R32_Link_contains( ooaofooa_S_FPIP * part, ooaofooa_S_FPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_FunPack_ID = part->FunPack_ID;
  form->S_FPIP_R32_is_child_via = part;
  Escher_SetInsertElement( &part->S_FPK_R32_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_FPIP FROM S_FPK ACROSS R32
 */
void
ooaofooa_S_FPK_R32_Unlink_contains( ooaofooa_S_FPIP * part, ooaofooa_S_FPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_FunPack_ID = 0;
  form->S_FPIP_R32_is_child_via = 0;
  Escher_SetRemoveElement( &part->S_FPK_R32_contains, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_FPK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_FPK * self = (ooaofooa_S_FPK *) instance;
  printf( "INSERT INTO S_FPK VALUES ( %ld,'%s',%ld,%ld );\n",
    ((long)self->FunPack_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Parent_FunPack_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_FPK_container[ ooaofooa_S_FPK_MAX_EXTENT_SIZE ];
static ooaofooa_S_FPK ooaofooa_S_FPK_instances[ ooaofooa_S_FPK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_FPK_extent = {
  {0,0}, {0,0}, &ooaofooa_S_FPK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_FPK_instances,
  sizeof( ooaofooa_S_FPK ), 0, ooaofooa_S_FPK_MAX_EXTENT_SIZE
  };


