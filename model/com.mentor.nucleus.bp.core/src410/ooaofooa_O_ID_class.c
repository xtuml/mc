/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_ID_class.c
 *
 * Class:       Class Identifier  (O_ID)
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
ooaofooa_O_ID_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_ID * self = (ooaofooa_O_ID *) instance;
  /* Initialize application analysis class attributes.  */
  self->Oid_ID = Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_ID_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_ID * ooaofooa_O_ID_instance = (ooaofooa_O_ID *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_O_ID_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_O_ID_R104_Link_is_identified_by( ooaofooa_O_OBJrelated_instance1, ooaofooa_O_ID_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_ID *
ooaofooa_O_ID_AnyWhere1( i_t w_Oid_ID, Escher_UniqueID_t w_Obj_ID )
{
  ooaofooa_O_ID * w; 
  Escher_Iterator_s iter_O_ID;
  Escher_IteratorReset( &iter_O_ID, &pG_ooaofooa_O_ID_extent.active );
  while ( (w = (ooaofooa_O_ID *) Escher_IteratorNext( &iter_O_ID )) != 0 ) {
    if ( w->Oid_ID == w_Oid_ID && w->Obj_ID == w_Obj_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_OBJ TO O_ID ACROSS R104
 */
void
ooaofooa_O_ID_R104_Link_is_identified_by( ooaofooa_O_OBJ * part, ooaofooa_O_ID * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R104_identifies = part;
  Escher_SetInsertElement( &part->O_ID_R104_is_identified_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM O_ID ACROSS R104
 */
void
ooaofooa_O_ID_R104_Unlink_is_identified_by( ooaofooa_O_OBJ * part, ooaofooa_O_ID * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->O_OBJ_R104_identifies = 0;
  Escher_SetRemoveElement( &part->O_ID_R104_is_identified_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_ID_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_ID * self = (ooaofooa_O_ID *) instance;
  printf( "INSERT INTO O_ID VALUES ( %d,%ld );\n",
    self->Oid_ID,
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_ID_container[ ooaofooa_O_ID_MAX_EXTENT_SIZE ];
static ooaofooa_O_ID ooaofooa_O_ID_instances[ ooaofooa_O_ID_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_ID_extent = {
  {0,0}, {0,0}, &ooaofooa_O_ID_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_ID_instances,
  sizeof( ooaofooa_O_ID ), 0, ooaofooa_O_ID_MAX_EXTENT_SIZE
  };


