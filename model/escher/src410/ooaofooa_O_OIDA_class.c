/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_OIDA_class.c
 *
 * Class:       Class Identifier Attribute  (O_OIDA)
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
ooaofooa_O_OIDA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_OIDA * self = (ooaofooa_O_OIDA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Oid_ID = Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->localAttributeName, avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_OIDA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_OIDA * ooaofooa_O_OIDA_instance = (ooaofooa_O_OIDA *) instance;
  ooaofooa_O_ID * ooaofooa_O_IDrelated_instance1 = ooaofooa_O_ID_AnyWhere1( ooaofooa_O_OIDA_instance->Oid_ID, ooaofooa_O_OIDA_instance->Obj_ID );
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance2 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_O_OIDA_instance->Attr_ID, ooaofooa_O_OIDA_instance->Obj_ID );
  if ( ooaofooa_O_IDrelated_instance1 && ooaofooa_O_ATTRrelated_instance2 ) {
    ooaofooa_O_OIDA_R105_Link( ooaofooa_O_IDrelated_instance1, ooaofooa_O_ATTRrelated_instance2, ooaofooa_O_OIDA_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_OIDA *
ooaofooa_O_OIDA_AnyWhere1( Escher_UniqueID_t w_Attr_ID, Escher_UniqueID_t w_Obj_ID, i_t w_Oid_ID )
{
  ooaofooa_O_OIDA * w; 
  Escher_Iterator_s iter_O_OIDA;
  Escher_IteratorReset( &iter_O_OIDA, &pG_ooaofooa_O_OIDA_extent.active );
  while ( (w = (ooaofooa_O_OIDA *) Escher_IteratorNext( &iter_O_OIDA )) != 0 ) {
    if ( w->Attr_ID == w_Attr_ID && w->Obj_ID == w_Obj_ID && w->Oid_ID == w_Oid_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_ID TO O_ATTR ACROSS R105 USING O_OIDA
 */
void
ooaofooa_O_OIDA_R105_Link( ooaofooa_O_ID * aone, ooaofooa_O_ATTR * aoth, ooaofooa_O_OIDA * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Oid_ID = aone->Oid_ID;
  assr->Obj_ID = aone->Obj_ID;
  assr->Attr_ID = aoth->Attr_ID;
  assr->Obj_ID = aoth->Obj_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->O_ID_R105_is_part_of_ = aone;
  assr->O_ATTR_R105_is_made_up_of_ = aoth;
  Escher_SetInsertElement( &aone->O_OIDA_R105, assr );
  Escher_SetInsertElement( &aoth->O_OIDA_R105, assr );
}

/*
 * UNRELATE O_ID FROM O_ATTR ACROSS R105 USING O_OIDA
 */
void
ooaofooa_O_OIDA_R105_Unlink( ooaofooa_O_ID * aone, ooaofooa_O_ATTR * aoth, ooaofooa_O_OIDA * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->O_ID_R105_is_part_of_ = 0;
  assr->O_ATTR_R105_is_made_up_of_ = 0;
  Escher_SetRemoveElement( &aone->O_OIDA_R105, assr );
  Escher_SetRemoveElement( &aoth->O_OIDA_R105, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_OIDA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_OIDA * self = (ooaofooa_O_OIDA *) instance;
  printf( "INSERT INTO O_OIDA VALUES ( %ld,%ld,%d,'%s' );\n",
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->Oid_ID,
    self->localAttributeName );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_OIDA_container[ ooaofooa_O_OIDA_MAX_EXTENT_SIZE ];
static ooaofooa_O_OIDA ooaofooa_O_OIDA_instances[ ooaofooa_O_OIDA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_OIDA_extent = {
  {0,0}, {0,0}, &ooaofooa_O_OIDA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_OIDA_instances,
  sizeof( ooaofooa_O_OIDA ), 0, ooaofooa_O_OIDA_MAX_EXTENT_SIZE
  };


