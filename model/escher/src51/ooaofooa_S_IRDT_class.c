/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_IRDT_class.c
 *
 * Class:       Instance Reference Data Type  (S_IRDT)
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
ooaofooa_S_IRDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_IRDT * self = (ooaofooa_S_IRDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->isSet = ( '0' != *avlstring[ 2 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_IRDT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_IRDT * ooaofooa_S_IRDT_instance = (ooaofooa_S_IRDT *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_S_IRDT_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_S_IRDT_R123_Link_is_available_as_a_reference_by( ooaofooa_O_OBJrelated_instance1, ooaofooa_S_IRDT_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_IRDT_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_IRDT_R17_Link( ooaofooa_S_DTrelated_instance1, ooaofooa_S_IRDT_instance );
  }
  }
}


/*
 * RELATE S_DT TO S_IRDT ACROSS R17
 */
void
ooaofooa_S_IRDT_R17_Link( ooaofooa_S_DT * supertype, ooaofooa_S_IRDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for S_IRDT->S_DT[R17] */
  subtype->S_DT_R17 = supertype;
  /* Optimized linkage for S_DT->S_IRDT[R17] */
  supertype->R17_subtype = subtype;
  supertype->R17_object_id = ooaofooa_S_IRDT_CLASS_NUMBER;
}


/*
 * UNRELATE S_DT FROM S_IRDT ACROSS R17
 */
void
ooaofooa_S_IRDT_R17_Unlink( ooaofooa_S_DT * supertype, ooaofooa_S_IRDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->S_DT_R17 = 0;
  supertype->R17_subtype = 0;
  supertype->R17_object_id = 0;
}


/*
 * RELATE O_OBJ TO S_IRDT ACROSS R123
 */
void
ooaofooa_S_IRDT_R123_Link_is_available_as_a_reference_by( ooaofooa_O_OBJ * part, ooaofooa_S_IRDT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R123_provides_reference_datatype_for = part;
  Escher_SetInsertElement( &part->S_IRDT_R123_is_available_as_a_reference_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM S_IRDT ACROSS R123
 */
void
ooaofooa_S_IRDT_R123_Unlink_is_available_as_a_reference_by( ooaofooa_O_OBJ * part, ooaofooa_S_IRDT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R123_provides_reference_datatype_for = 0;
  Escher_SetRemoveElement( &part->S_IRDT_R123_is_available_as_a_reference_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_IRDT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_IRDT * self = (ooaofooa_S_IRDT *) instance;
  printf( "INSERT INTO S_IRDT VALUES ( %ld,%d,%ld );\n",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->isSet,
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_IRDT_container[ ooaofooa_S_IRDT_MAX_EXTENT_SIZE ];
static ooaofooa_S_IRDT ooaofooa_S_IRDT_instances[ ooaofooa_S_IRDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_IRDT_extent = {
  {0,0}, {0,0}, &ooaofooa_S_IRDT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_IRDT_instances,
  sizeof( ooaofooa_S_IRDT ), 0, ooaofooa_S_IRDT_MAX_EXTENT_SIZE
  };


