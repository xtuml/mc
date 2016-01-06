/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CLASS_class.c
 *
 * Class:       Extended Class  (TE_CLASS)
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
ooaofooa_TE_CLASS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_CLASS * self = (ooaofooa_TE_CLASS *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Numb = Escher_atoi( avlstring[ 3 ] );
  self->Key_Lett = Escher_strcpy( self->Key_Lett, avlstring[ 4 ] );
  self->scope = Escher_strcpy( self->scope, avlstring[ 5 ] );
  self->GeneratedName = Escher_strcpy( self->GeneratedName, avlstring[ 6 ] );
  self->CBGeneratedName = Escher_strcpy( self->CBGeneratedName, avlstring[ 7 ] );
  self->Included = ( '0' != *avlstring[ 8 ] );
  self->PEIsDefinedInData = ( '0' != *avlstring[ 9 ] );
  self->IsFixedPopulation = ( '0' != *avlstring[ 10 ] );
  self->IsReadOnly = ( '0' != *avlstring[ 11 ] );
  self->ExcludeFromGen = ( '0' != *avlstring[ 12 ] );
  self->MaxExtentSize = Escher_atoi( avlstring[ 13 ] );
  self->SelfCreated = ( '0' != *avlstring[ 14 ] );
  self->NonSelfCreated = ( '0' != *avlstring[ 15 ] );
  self->Persistent = ( '0' != *avlstring[ 16 ] );
  self->Order = Escher_atoi( avlstring[ 17 ] );
  self->IsTrace = ( '0' != *avlstring[ 18 ] );
  self->ContainerIndex = Escher_atoi( avlstring[ 19 ] );
  self->Task = Escher_atoi( avlstring[ 20 ] );
  self->class_file = Escher_strcpy( self->class_file, avlstring[ 21 ] );
  self->system_class_number = Escher_strcpy( self->system_class_number, avlstring[ 22 ] );
  self->CBsystem_class_number = Escher_strcpy( self->CBsystem_class_number, avlstring[ 23 ] );
  self->persist_link = Escher_strcpy( self->persist_link, avlstring[ 24 ] );
  self->dispatcher = Escher_strcpy( self->dispatcher, avlstring[ 25 ] );
  self->CBdispatcher = Escher_strcpy( self->CBdispatcher, avlstring[ 26 ] );
  self->attribute_format = Escher_strcpy( self->attribute_format, avlstring[ 27 ] );
  self->attribute_dump = Escher_strcpy( self->attribute_dump, avlstring[ 28 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 29 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 30 ] );
  self->nextID = (Escher_iHandle_t) Escher_atoi( avlstring[ 31 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_CLASS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_CLASS * ooaofooa_TE_CLASS_instance = (ooaofooa_TE_CLASS *) instance;
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_CLASS_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_CLASS_R2064_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_CLASS_instance );
  }
  {
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_TE_CLASS_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_TE_CLASS_R2019_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_TE_CLASS_instance );
  }
  }
  {
  ooaofooa_TE_CLASS * ooaofooa_TE_CLASSrelated_instance1 = ooaofooa_TE_CLASS_AnyWhere2( ooaofooa_TE_CLASS_instance->nextID );
  if ( ooaofooa_TE_CLASSrelated_instance1 ) {
    ooaofooa_TE_CLASS_R2092_Link_succeeds( ooaofooa_TE_CLASSrelated_instance1, ooaofooa_TE_CLASS_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_CLASS *
ooaofooa_TE_CLASS_AnyWhere1( c_t * w_GeneratedName )
{
  ooaofooa_TE_CLASS * w; 
  Escher_Iterator_s iter_TE_CLASS;
  Escher_IteratorReset( &iter_TE_CLASS, &pG_ooaofooa_TE_CLASS_extent.active );
  while ( (w = (ooaofooa_TE_CLASS *) Escher_IteratorNext( &iter_TE_CLASS )) != 0 ) {
    if ( w->GeneratedName == w_GeneratedName ) {
      return w;
    }
  }
  return 0;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_CLASS *
ooaofooa_TE_CLASS_AnyWhere2( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_CLASS * w; 
  Escher_Iterator_s iter_TE_CLASS;
  Escher_IteratorReset( &iter_TE_CLASS, &pG_ooaofooa_TE_CLASS_extent.active );
  while ( (w = (ooaofooa_TE_CLASS *) Escher_IteratorNext( &iter_TE_CLASS )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_OBJ TO TE_CLASS ACROSS R2019
 */
void
ooaofooa_TE_CLASS_R2019_Link( ooaofooa_O_OBJ * part, ooaofooa_TE_CLASS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R2019 = part;
  part->TE_CLASS_R2019 = form;
}

/*
 * UNRELATE O_OBJ FROM TE_CLASS ACROSS R2019
 */
void
ooaofooa_TE_CLASS_R2019_Unlink( ooaofooa_O_OBJ * part, ooaofooa_TE_CLASS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R2019 = 0;
  part->TE_CLASS_R2019 = 0;
}

/*
 * RELATE TE_C TO TE_CLASS ACROSS R2064
 */
void
ooaofooa_TE_CLASS_R2064_Link( ooaofooa_TE_C * part, ooaofooa_TE_CLASS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2064 = part;
  Escher_SetInsertElement( &part->TE_CLASS_R2064, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_C FROM TE_CLASS ACROSS R2064
 */
void
ooaofooa_TE_CLASS_R2064_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_CLASS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2064 = 0;
  Escher_SetRemoveElement( &part->TE_CLASS_R2064, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> TE_CLASS TO <right> TE_CLASS ACROSS R2092.'precedes'
 */
void
ooaofooa_TE_CLASS_R2092_Link_precedes( ooaofooa_TE_CLASS * left, ooaofooa_TE_CLASS * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = right->ID;
  left->TE_CLASS_R2092_precedes = right; /* SR L1 */
  right->TE_CLASS_R2092_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_CLASS FROM <right> TE_CLASS ACROSS R2092.'precedes'
 */
void
ooaofooa_TE_CLASS_R2092_Unlink_precedes( ooaofooa_TE_CLASS * left, ooaofooa_TE_CLASS * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = 0;
  left->TE_CLASS_R2092_precedes = 0; /* SR U1 */
  right->TE_CLASS_R2092_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_CLASS TO <right> TE_CLASS ACROSS R2092.'succeeds'
 */
void
ooaofooa_TE_CLASS_R2092_Link_succeeds( ooaofooa_TE_CLASS * left, ooaofooa_TE_CLASS * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = left->ID;
  right->TE_CLASS_R2092_precedes = left; /* SR L4 */
  left->TE_CLASS_R2092_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_CLASS FROM <right> TE_CLASS ACROSS R2092.'succeeds'
 */
void
ooaofooa_TE_CLASS_R2092_Unlink_succeeds( ooaofooa_TE_CLASS * left, ooaofooa_TE_CLASS * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = 0;
  right->TE_CLASS_R2092_precedes = 0; /* SR U4 */
  left->TE_CLASS_R2092_succeeds = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_CLASS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_CLASS * self = (ooaofooa_TE_CLASS *) instance;
  printf( "INSERT INTO TE_CLASS VALUES ( %ld,'%s',%d,'%s','%s','%s','%s',%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,'%s','%s','%s','%s','%s','%s','%s','%s',%ld,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    self->Numb,
    ( 0 != self->Key_Lett ) ? self->Key_Lett : "",
    ( 0 != self->scope ) ? self->scope : "",
    ( 0 != self->GeneratedName ) ? self->GeneratedName : "",
    ( 0 != self->CBGeneratedName ) ? self->CBGeneratedName : "",
    self->Included,
    self->PEIsDefinedInData,
    self->IsFixedPopulation,
    self->IsReadOnly,
    self->ExcludeFromGen,
    self->MaxExtentSize,
    self->SelfCreated,
    self->NonSelfCreated,
    self->Persistent,
    self->Order,
    self->IsTrace,
    self->ContainerIndex,
    self->Task,
    ( 0 != self->class_file ) ? self->class_file : "",
    ( 0 != self->system_class_number ) ? self->system_class_number : "",
    ( 0 != self->CBsystem_class_number ) ? self->CBsystem_class_number : "",
    ( 0 != self->persist_link ) ? self->persist_link : "",
    ( 0 != self->dispatcher ) ? self->dispatcher : "",
    ( 0 != self->CBdispatcher ) ? self->CBdispatcher : "",
    ( 0 != self->attribute_format ) ? self->attribute_format : "",
    ( 0 != self->attribute_dump ) ? self->attribute_dump : "",
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->nextID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_CLASS_container[ ooaofooa_TE_CLASS_MAX_EXTENT_SIZE ];
static ooaofooa_TE_CLASS ooaofooa_TE_CLASS_instances[ ooaofooa_TE_CLASS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_CLASS_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_CLASS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_CLASS_instances,
  sizeof( ooaofooa_TE_CLASS ), 0, ooaofooa_TE_CLASS_MAX_EXTENT_SIZE
  };


