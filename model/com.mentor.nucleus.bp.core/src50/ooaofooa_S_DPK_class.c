/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DPK_class.c
 *
 * Class:       Data Type Package  (S_DPK)
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
ooaofooa_S_DPK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_DPK * self = (ooaofooa_S_DPK *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Parent_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_DPK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_DPK * ooaofooa_S_DPK_instance = (ooaofooa_S_DPK *) instance;
  ooaofooa_EP_SPKG * ooaofooa_EP_SPKGrelated_instance1 = (ooaofooa_EP_SPKG *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DPK_instance->Package_ID ];
  if ( ooaofooa_EP_SPKGrelated_instance1 ) {
    ooaofooa_S_DPK_R1402_Link( ooaofooa_EP_SPKGrelated_instance1, ooaofooa_S_DPK_instance );
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DPK_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_S_DPK_R40_Link_contains( ooaofooa_S_DOMrelated_instance1, ooaofooa_S_DPK_instance );
  }
  }
  {
  ooaofooa_S_DPIP * ooaofooa_S_DPIPrelated_instance1 = ooaofooa_S_DPIP_AnyWhere1( ooaofooa_S_DPK_instance->Parent_Package_ID );
  if ( ooaofooa_S_DPIPrelated_instance1 ) {
    ooaofooa_S_DPK_R38_Link_contains( ooaofooa_S_DPIPrelated_instance1, ooaofooa_S_DPK_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_DPK *
ooaofooa_S_DPK_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_S_DPK * w; 
  Escher_Iterator_s iter_S_DPK;
  Escher_IteratorReset( &iter_S_DPK, &pG_ooaofooa_S_DPK_extent.active );
  while ( (w = (ooaofooa_S_DPK *) Escher_IteratorNext( &iter_S_DPK )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DPIP TO S_DPK ACROSS R38
 */
void
ooaofooa_S_DPK_R38_Link_contains( ooaofooa_S_DPIP * part, ooaofooa_S_DPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = part->Package_ID;
  form->S_DPIP_R38_is_child_via = part;
  Escher_SetInsertElement( &part->S_DPK_R38_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DPIP FROM S_DPK ACROSS R38
 */
void
ooaofooa_S_DPK_R38_Unlink_contains( ooaofooa_S_DPIP * part, ooaofooa_S_DPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = 0;
  form->S_DPIP_R38_is_child_via = 0;
  Escher_SetRemoveElement( &part->S_DPK_R38_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DOM TO S_DPK ACROSS R40
 */
void
ooaofooa_S_DPK_R40_Link_contains( ooaofooa_S_DOM * part, ooaofooa_S_DPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R40_is_contained_in = part;
  Escher_SetInsertElement( &part->S_DPK_R40_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM S_DPK ACROSS R40
 */
void
ooaofooa_S_DPK_R40_Unlink_contains( ooaofooa_S_DOM * part, ooaofooa_S_DPK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R40_is_contained_in = 0;
  Escher_SetRemoveElement( &part->S_DPK_R40_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE EP_SPKG TO S_DPK ACROSS R1402
 */
void
ooaofooa_S_DPK_R1402_Link( ooaofooa_EP_SPKG * supertype, ooaofooa_S_DPK * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Package_ID = supertype->Package_ID;
  /* Optimized linkage for S_DPK->EP_SPKG[R1402] */
  subtype->EP_SPKG_R1402 = supertype;
  /* Optimized linkage for EP_SPKG->S_DPK[R1402] */
  supertype->R1402_subtype = subtype;
  supertype->R1402_object_id = ooaofooa_S_DPK_CLASS_NUMBER;
}


/*
 * UNRELATE EP_SPKG FROM S_DPK ACROSS R1402
 */
void
ooaofooa_S_DPK_R1402_Unlink( ooaofooa_EP_SPKG * supertype, ooaofooa_S_DPK * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->EP_SPKG_R1402 = 0;
  supertype->R1402_subtype = 0;
  supertype->R1402_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_DPK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_DPK * self = (ooaofooa_S_DPK *) instance;
  printf( "INSERT INTO S_DPK VALUES ( %ld,'%s',%ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Parent_Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_DPK_container[ ooaofooa_S_DPK_MAX_EXTENT_SIZE ];
static ooaofooa_S_DPK ooaofooa_S_DPK_instances[ ooaofooa_S_DPK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_DPK_extent = {
  {0,0}, {0,0}, &ooaofooa_S_DPK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_DPK_instances,
  sizeof( ooaofooa_S_DPK ), 0, ooaofooa_S_DPK_MAX_EXTENT_SIZE
  };


