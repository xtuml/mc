/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMOA_class.c
 *
 * Class:       SM to OBJ Access Path  (CA_SMOA)
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
ooaofooa_CA_SMOA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_SMOA * self = (ooaofooa_CA_SMOA *) instance;
  /* Initialize application analysis class attributes.  */
  self->APath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->IObj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_SMOA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMOA * ooaofooa_CA_SMOA_instance = (ooaofooa_CA_SMOA *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_CA_SMOA_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_CA_SMOA_R417_Link_has_data_access_represented_by( ooaofooa_O_OBJrelated_instance1, ooaofooa_CA_SMOA_instance );
  }
  {
  ooaofooa_O_IOBJ * ooaofooa_O_IOBJrelated_instance1 = ooaofooa_O_IOBJ_AnyWhere1( ooaofooa_CA_SMOA_instance->IObj_ID );
  if ( ooaofooa_O_IOBJrelated_instance1 ) {
    ooaofooa_CA_SMOA_R420_Link_represents_the_destination_OBJ_for( ooaofooa_O_IOBJrelated_instance1, ooaofooa_CA_SMOA_instance );
  }
  }
  {
  ooaofooa_CA_ACC * ooaofooa_CA_ACCrelated_instance1 = (ooaofooa_CA_ACC *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_SMOA_instance->APath_ID ];
  if ( ooaofooa_CA_ACCrelated_instance1 ) {
    ooaofooa_CA_SMOA_R415_Link( ooaofooa_CA_ACCrelated_instance1, ooaofooa_CA_SMOA_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CA_SMOA *
ooaofooa_CA_SMOA_AnyWhere2( Escher_UniqueID_t w_APath_ID, Escher_UniqueID_t w_Obj_ID )
{
  ooaofooa_CA_SMOA * w; 
  Escher_Iterator_s iter_CA_SMOA;
  Escher_IteratorReset( &iter_CA_SMOA, &pG_ooaofooa_CA_SMOA_extent.active );
  while ( (w = (ooaofooa_CA_SMOA *) Escher_IteratorNext( &iter_CA_SMOA )) != 0 ) {
    if ( w->APath_ID == w_APath_ID && w->Obj_ID == w_Obj_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CA_ACC TO CA_SMOA ACROSS R415
 */
void
ooaofooa_CA_SMOA_R415_Link( ooaofooa_CA_ACC * supertype, ooaofooa_CA_SMOA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->APath_ID = supertype->APath_ID;
  /* Optimized linkage for CA_SMOA->CA_ACC[R415] */
  subtype->CA_ACC_R415 = supertype;
  /* Optimized linkage for CA_ACC->CA_SMOA[R415] */
  supertype->R415_subtype = subtype;
  supertype->R415_object_id = ooaofooa_CA_SMOA_CLASS_NUMBER;
}


/*
 * UNRELATE CA_ACC FROM CA_SMOA ACROSS R415
 */
void
ooaofooa_CA_SMOA_R415_Unlink( ooaofooa_CA_ACC * supertype, ooaofooa_CA_SMOA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CA_ACC_R415 = 0;
  supertype->R415_subtype = 0;
  supertype->R415_object_id = 0;
}


/*
 * RELATE O_OBJ TO CA_SMOA ACROSS R417
 */
void
ooaofooa_CA_SMOA_R417_Link_has_data_access_represented_by( ooaofooa_O_OBJ * part, ooaofooa_CA_SMOA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R417_shows_accesses_of_data_from = part;
  Escher_SetInsertElement( &part->CA_SMOA_R417_has_data_access_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM CA_SMOA ACROSS R417
 */
void
ooaofooa_CA_SMOA_R417_Unlink_has_data_access_represented_by( ooaofooa_O_OBJ * part, ooaofooa_CA_SMOA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->O_OBJ_R417_shows_accesses_of_data_from = 0;
  Escher_SetRemoveElement( &part->CA_SMOA_R417_has_data_access_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_IOBJ TO CA_SMOA ACROSS R420
 */
void
ooaofooa_CA_SMOA_R420_Link_represents_the_destination_OBJ_for( ooaofooa_O_IOBJ * part, ooaofooa_CA_SMOA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->IObj_ID = part->IObj_ID;
  form->O_IOBJ_R420_destination_OBJ_can_be_represented_by = part;
  Escher_SetInsertElement( &part->CA_SMOA_R420_represents_the_destination_OBJ_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_IOBJ FROM CA_SMOA ACROSS R420
 */
void
ooaofooa_CA_SMOA_R420_Unlink_represents_the_destination_OBJ_for( ooaofooa_O_IOBJ * part, ooaofooa_CA_SMOA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->IObj_ID = 0;
  form->O_IOBJ_R420_destination_OBJ_can_be_represented_by = 0;
  Escher_SetRemoveElement( &part->CA_SMOA_R420_represents_the_destination_OBJ_for, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_SMOA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMOA * self = (ooaofooa_CA_SMOA *) instance;
  printf( "INSERT INTO CA_SMOA VALUES ( %ld,%ld,%ld );\n",
    ((long)self->APath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->IObj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_SMOA_container[ ooaofooa_CA_SMOA_MAX_EXTENT_SIZE ];
static ooaofooa_CA_SMOA ooaofooa_CA_SMOA_instances[ ooaofooa_CA_SMOA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_SMOA_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_SMOA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_SMOA_instances,
  sizeof( ooaofooa_CA_SMOA ), 0, ooaofooa_CA_SMOA_MAX_EXTENT_SIZE
  };


