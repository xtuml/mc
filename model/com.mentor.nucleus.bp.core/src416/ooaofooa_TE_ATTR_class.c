/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ATTR_class.c
 *
 * Class:       Extended Attribute  (TE_ATTR)
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
ooaofooa_TE_ATTR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_ATTR * self = (ooaofooa_TE_ATTR *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->Used = ( '0' != *avlstring[ 2 ] );
  self->read = ( '0' != *avlstring[ 3 ] );
  self->written = ( '0' != *avlstring[ 4 ] );
  self->Included = ( '0' != *avlstring[ 5 ] );
  self->Order = Escher_atoi( avlstring[ 6 ] );
  self->ParamBuffer = Escher_strcpy( self->ParamBuffer, avlstring[ 7 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 8 ] );
  self->GeneratedName = Escher_strcpy( self->GeneratedName, avlstring[ 9 ] );
  self->DefaultValue = Escher_strcpy( self->DefaultValue, avlstring[ 10 ] );
  self->translate = ( '0' != *avlstring[ 11 ] );
  self->dimensions = Escher_atoi( avlstring[ 12 ] );
  self->te_dimID = (Escher_iHandle_t) Escher_atoi( avlstring[ 13 ] );
  self->array_spec = Escher_strcpy( self->array_spec, avlstring[ 14 ] );
  self->te_classGeneratedName = Escher_strcpy( self->te_classGeneratedName, avlstring[ 15 ] );
  self->GeneratedType = Escher_strcpy( self->GeneratedType, avlstring[ 16 ] );
  self->prevID = (Escher_iHandle_t) Escher_atoi( avlstring[ 17 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 18 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 19 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_ATTR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_ATTR * ooaofooa_TE_ATTR_instance = (ooaofooa_TE_ATTR *) instance;
  ooaofooa_TE_DIM * ooaofooa_TE_DIMrelated_instance1 = (ooaofooa_TE_DIM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_ATTR_instance->te_dimID ];
  if ( ooaofooa_TE_DIMrelated_instance1 ) {
    ooaofooa_TE_ATTR_R2055_Link_diments( ooaofooa_TE_DIMrelated_instance1, ooaofooa_TE_ATTR_instance );
  }
  {
  ooaofooa_TE_CLASS * ooaofooa_TE_CLASSrelated_instance1 = (ooaofooa_TE_CLASS *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_ATTR_instance->te_classGeneratedName ];
  if ( ooaofooa_TE_CLASSrelated_instance1 ) {
    ooaofooa_TE_ATTR_R2061_Link( ooaofooa_TE_CLASSrelated_instance1, ooaofooa_TE_ATTR_instance );
  }
  }
  {
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_TE_ATTR_instance->Attr_ID, ooaofooa_TE_ATTR_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_TE_ATTR_R2033_Link( ooaofooa_O_ATTRrelated_instance1, ooaofooa_TE_ATTR_instance );
  }
  }
  {
  ooaofooa_TE_ATTR * ooaofooa_TE_ATTRrelated_instance1 = (ooaofooa_TE_ATTR *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_ATTR_instance->prevID ];
  if ( ooaofooa_TE_ATTRrelated_instance1 ) {
    ooaofooa_TE_ATTR_R2087_Link_precedes( ooaofooa_TE_ATTRrelated_instance1, ooaofooa_TE_ATTR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_ATTR *
ooaofooa_TE_ATTR_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_ATTR * w; 
  Escher_Iterator_s iter_TE_ATTR;
  Escher_IteratorReset( &iter_TE_ATTR, &pG_ooaofooa_TE_ATTR_extent.active );
  while ( (w = (ooaofooa_TE_ATTR *) Escher_IteratorNext( &iter_TE_ATTR )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_ATTR TO TE_ATTR ACROSS R2033
 */
void
ooaofooa_TE_ATTR_R2033_Link( ooaofooa_O_ATTR * part, ooaofooa_TE_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ATTR_R2033 = part;
  part->TE_ATTR_R2033 = form;
}

/*
 * UNRELATE O_ATTR FROM TE_ATTR ACROSS R2033
 */
void
ooaofooa_TE_ATTR_R2033_Unlink( ooaofooa_O_ATTR * part, ooaofooa_TE_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = 0;
  form->Obj_ID = 0;
  form->O_ATTR_R2033 = 0;
  part->TE_ATTR_R2033 = 0;
}

/*
 * RELATE TE_DIM TO TE_ATTR ACROSS R2055
 */
void
ooaofooa_TE_ATTR_R2055_Link_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = part->te_dimID;
  form->TE_DIM_R2055_has_first = part;
  part->TE_ATTR_R2055_diments = form;
}

/*
 * UNRELATE TE_DIM FROM TE_ATTR ACROSS R2055
 */
void
ooaofooa_TE_ATTR_R2055_Unlink_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = 0;
  form->TE_DIM_R2055_has_first = 0;
  part->TE_ATTR_R2055_diments = 0;
}

/*
 * RELATE TE_CLASS TO TE_ATTR ACROSS R2061
 */
void
ooaofooa_TE_ATTR_R2061_Link( ooaofooa_TE_CLASS * part, ooaofooa_TE_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_classGeneratedName = Escher_strcpy( form->te_classGeneratedName, part->GeneratedName );
  form->TE_CLASS_R2061_is_characteristic_of = part;
  Escher_SetInsertElement( &part->TE_ATTR_R2061, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_CLASS FROM TE_ATTR ACROSS R2061
 */
void
ooaofooa_TE_ATTR_R2061_Unlink( ooaofooa_TE_CLASS * part, ooaofooa_TE_ATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->te_classGeneratedName, 0, sizeof( form->te_classGeneratedName ) );
  form->TE_CLASS_R2061_is_characteristic_of = 0;
  Escher_SetRemoveElement( &part->TE_ATTR_R2061, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> TE_ATTR TO <right> TE_ATTR ACROSS R2087.'succeeds'
 */
void
ooaofooa_TE_ATTR_R2087_Link_succeeds( ooaofooa_TE_ATTR * left, ooaofooa_TE_ATTR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->prevID = right->ID;
  left->TE_ATTR_R2087_succeeds = right; /* SR L1 */
  right->TE_ATTR_R2087_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_ATTR FROM <right> TE_ATTR ACROSS R2087.'succeeds'
 */
void
ooaofooa_TE_ATTR_R2087_Unlink_succeeds( ooaofooa_TE_ATTR * left, ooaofooa_TE_ATTR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->prevID = 0;
  left->TE_ATTR_R2087_succeeds = 0; /* SR U1 */
  right->TE_ATTR_R2087_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_ATTR TO <right> TE_ATTR ACROSS R2087.'precedes'
 */
void
ooaofooa_TE_ATTR_R2087_Link_precedes( ooaofooa_TE_ATTR * left, ooaofooa_TE_ATTR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->prevID = left->ID;
  right->TE_ATTR_R2087_succeeds = left; /* SR L4 */
  left->TE_ATTR_R2087_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_ATTR FROM <right> TE_ATTR ACROSS R2087.'precedes'
 */
void
ooaofooa_TE_ATTR_R2087_Unlink_precedes( ooaofooa_TE_ATTR * left, ooaofooa_TE_ATTR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->prevID = 0;
  right->TE_ATTR_R2087_succeeds = 0; /* SR U4 */
  left->TE_ATTR_R2087_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_ATTR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_ATTR * self = (ooaofooa_TE_ATTR *) instance;
  printf( "INSERT INTO TE_ATTR VALUES ( %ld,%d,%d,%d,%d,%d,'%s','%s','%s','%s',%d,%d,%ld,'%s','%s','%s',%ld,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->Used,
    self->read,
    self->written,
    self->Included,
    self->Order,
    ( 0 != self->ParamBuffer ) ? self->ParamBuffer : "",
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->GeneratedName ) ? self->GeneratedName : "",
    ( 0 != self->DefaultValue ) ? self->DefaultValue : "",
    self->translate,
    self->dimensions,
    ((long)self->te_dimID & ESCHER_IDDUMP_MASK),
    ( 0 != self->array_spec ) ? self->array_spec : "",
    ( 0 != self->te_classGeneratedName ) ? self->te_classGeneratedName : "",
    ( 0 != self->GeneratedType ) ? self->GeneratedType : "",
    ((long)self->prevID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_ATTR_container[ ooaofooa_TE_ATTR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_ATTR ooaofooa_TE_ATTR_instances[ ooaofooa_TE_ATTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_ATTR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_ATTR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_ATTR_instances,
  sizeof( ooaofooa_TE_ATTR ), 0, ooaofooa_TE_ATTR_MAX_EXTENT_SIZE
  };


