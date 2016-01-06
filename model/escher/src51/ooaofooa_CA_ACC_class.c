/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_ACC_class.c
 *
 * Class:       Access Path  (CA_ACC)
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
ooaofooa_CA_ACC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_ACC * self = (ooaofooa_CA_ACC *) instance;
  /* Initialize application analysis class attributes.  */
  self->APath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->APath_ID;
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->IObj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_ACC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_ACC * ooaofooa_CA_ACC_instance = (ooaofooa_CA_ACC *) instance;
  ooaofooa_O_IOBJ * ooaofooa_O_IOBJrelated_instance1 = ooaofooa_O_IOBJ_AnyWhere1( ooaofooa_CA_ACC_instance->IObj_ID );
  if ( ooaofooa_O_IOBJrelated_instance1 ) {
    ooaofooa_CA_ACC_R425_Link_represents_origination_OBJ_for( ooaofooa_O_IOBJrelated_instance1, ooaofooa_CA_ACC_instance );
  }
  {
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_ACC_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_CA_ACC_R416_Link_originates( ooaofooa_SM_SMrelated_instance1, ooaofooa_CA_ACC_instance );
  }
  }
  {
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_CA_ACC_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_CA_ACC_R6_Link_contains( ooaofooa_S_SSrelated_instance1, ooaofooa_CA_ACC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CA_ACC *
ooaofooa_CA_ACC_AnyWhere1( Escher_UniqueID_t w_APath_ID )
{
  ooaofooa_CA_ACC * w; 
  Escher_Iterator_s iter_CA_ACC;
  Escher_IteratorReset( &iter_CA_ACC, &pG_ooaofooa_CA_ACC_extent.active );
  while ( (w = (ooaofooa_CA_ACC *) Escher_IteratorNext( &iter_CA_ACC )) != 0 ) {
    if ( w->APath_ID == w_APath_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SS TO CA_ACC ACROSS R6
 */
void
ooaofooa_CA_ACC_R6_Link_contains( ooaofooa_S_SS * part, ooaofooa_CA_ACC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R6_abstracts_synchronous_data_access_between_classes_in = part;
  Escher_SetInsertElement( &part->CA_ACC_R6_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM CA_ACC ACROSS R6
 */
void
ooaofooa_CA_ACC_R6_Unlink_contains( ooaofooa_S_SS * part, ooaofooa_CA_ACC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R6_abstracts_synchronous_data_access_between_classes_in = 0;
  Escher_SetRemoveElement( &part->CA_ACC_R6_contains, (Escher_ObjectSet_s *) form );
}

/* Accessors to CA_ACC[R415] subtypes */


/*
 * RELATE SM_SM TO CA_ACC ACROSS R416
 */
void
ooaofooa_CA_ACC_R416_Link_originates( ooaofooa_SM_SM * part, ooaofooa_CA_ACC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R416_originates_from = part;
  Escher_SetInsertElement( &part->CA_ACC_R416_originates, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM CA_ACC ACROSS R416
 */
void
ooaofooa_CA_ACC_R416_Unlink_originates( ooaofooa_SM_SM * part, ooaofooa_CA_ACC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SM_SM_R416_originates_from = 0;
  Escher_SetRemoveElement( &part->CA_ACC_R416_originates, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_IOBJ TO CA_ACC ACROSS R425
 */
void
ooaofooa_CA_ACC_R425_Link_represents_origination_OBJ_for( ooaofooa_O_IOBJ * part, ooaofooa_CA_ACC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->IObj_ID = part->IObj_ID;
  form->O_IOBJ_R425_origination_OBJ_can_be_represented_by = part;
  Escher_SetInsertElement( &part->CA_ACC_R425_represents_origination_OBJ_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_IOBJ FROM CA_ACC ACROSS R425
 */
void
ooaofooa_CA_ACC_R425_Unlink_represents_origination_OBJ_for( ooaofooa_O_IOBJ * part, ooaofooa_CA_ACC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->IObj_ID = 0;
  form->O_IOBJ_R425_origination_OBJ_can_be_represented_by = 0;
  Escher_SetRemoveElement( &part->CA_ACC_R425_represents_origination_OBJ_for, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_ACC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_ACC * self = (ooaofooa_CA_ACC *) instance;
  printf( "INSERT INTO CA_ACC VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->APath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->IObj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_ACC_container[ ooaofooa_CA_ACC_MAX_EXTENT_SIZE ];
static ooaofooa_CA_ACC ooaofooa_CA_ACC_instances[ ooaofooa_CA_ACC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_ACC_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_ACC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_ACC_instances,
  sizeof( ooaofooa_CA_ACC ), 0, ooaofooa_CA_ACC_MAX_EXTENT_SIZE
  };


