/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_AVL_class.c
 *
 * Class:       Attribute Value  (I_AVL)
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
ooaofooa_I_AVL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_AVL * self = (ooaofooa_I_AVL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Inst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->Value, avlstring[ 4 ] );
  Escher_strcpy( self->Label, avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_AVL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_AVL * ooaofooa_I_AVL_instance = (ooaofooa_I_AVL *) instance;
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_I_AVL_instance->Attr_ID, ooaofooa_I_AVL_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_I_AVL_R2910_Link_has_instances( ooaofooa_O_ATTRrelated_instance1, ooaofooa_I_AVL_instance );
  }
  {
  ooaofooa_I_INS * ooaofooa_I_INSrelated_instance1 = (ooaofooa_I_INS *) Escher_instance_cache[ (intptr_t) ooaofooa_I_AVL_instance->Inst_ID ];
  if ( ooaofooa_I_INSrelated_instance1 ) {
    ooaofooa_I_AVL_R2909_Link_has_characteristic_abstracted_by( ooaofooa_I_INSrelated_instance1, ooaofooa_I_AVL_instance );
  }
  }
}


/*
 * RELATE I_INS TO I_AVL ACROSS R2909
 */
void
ooaofooa_I_AVL_R2909_Link_has_characteristic_abstracted_by( ooaofooa_I_INS * part, ooaofooa_I_AVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Inst_ID = part->Inst_ID;
  form->I_INS_R2909_defines_value_for_characteristic_of = part;
  Escher_SetInsertElement( &part->I_AVL_R2909_has_characteristic_abstracted_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_INS FROM I_AVL ACROSS R2909
 */
void
ooaofooa_I_AVL_R2909_Unlink_has_characteristic_abstracted_by( ooaofooa_I_INS * part, ooaofooa_I_AVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->I_INS_R2909_defines_value_for_characteristic_of = 0;
  Escher_SetRemoveElement( &part->I_AVL_R2909_has_characteristic_abstracted_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_ATTR TO I_AVL ACROSS R2910
 */
void
ooaofooa_I_AVL_R2910_Link_has_instances( ooaofooa_O_ATTR * part, ooaofooa_I_AVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ATTR_R2910_is_instance_of = part;
  Escher_SetInsertElement( &part->I_AVL_R2910_has_instances, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_ATTR FROM I_AVL ACROSS R2910
 */
void
ooaofooa_I_AVL_R2910_Unlink_has_instances( ooaofooa_O_ATTR * part, ooaofooa_I_AVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_ATTR_R2910_is_instance_of = 0;
  Escher_SetRemoveElement( &part->I_AVL_R2910_has_instances, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_AVL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_AVL * self = (ooaofooa_I_AVL *) instance;
  printf( "INSERT INTO I_AVL VALUES ( %ld,%ld,%ld,'%s','%s' );\n",
    ((long)self->Inst_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    self->Value,
    self->Label );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_AVL_container[ ooaofooa_I_AVL_MAX_EXTENT_SIZE ];
static ooaofooa_I_AVL ooaofooa_I_AVL_instances[ ooaofooa_I_AVL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_AVL_extent = {
  {0,0}, {0,0}, &ooaofooa_I_AVL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_AVL_instances,
  sizeof( ooaofooa_I_AVL ), 0, ooaofooa_I_AVL_MAX_EXTENT_SIZE
  };


