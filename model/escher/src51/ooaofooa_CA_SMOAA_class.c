/*----------------------------------------------------------------------------
 * File:  ooaofooa_CA_SMOAA_class.c
 *
 * Class:       SM to OBJ Attribute Access  (CA_SMOAA)
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
ooaofooa_CA_SMOAA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CA_SMOAA * self = (ooaofooa_CA_SMOAA *) instance;
  /* Initialize application analysis class attributes.  */
  self->APath_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CA_SMOAA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMOAA * ooaofooa_CA_SMOAA_instance = (ooaofooa_CA_SMOAA *) instance;
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_CA_SMOAA_instance->Attr_ID, ooaofooa_CA_SMOAA_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_CA_SMOAA_R419_Link_is_accessed_by( ooaofooa_O_ATTRrelated_instance1, ooaofooa_CA_SMOAA_instance );
  }
  {
  ooaofooa_CA_SMOA * ooaofooa_CA_SMOArelated_instance1 = ooaofooa_CA_SMOA_AnyWhere2( ooaofooa_CA_SMOAA_instance->APath_ID, ooaofooa_CA_SMOAA_instance->Obj_ID );
  if ( ooaofooa_CA_SMOArelated_instance1 ) {
    ooaofooa_CA_SMOAA_R418_Link_carries( ooaofooa_CA_SMOArelated_instance1, ooaofooa_CA_SMOAA_instance );
  }
  }
}


/*
 * RELATE CA_SMOA TO CA_SMOAA ACROSS R418
 */
void
ooaofooa_CA_SMOAA_R418_Link_carries( ooaofooa_CA_SMOA * part, ooaofooa_CA_SMOAA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->APath_ID = part->APath_ID;
  form->Obj_ID = part->Obj_ID;
  form->CA_SMOA_R418_is_carried_by_ = part;
  Escher_SetInsertElement( &part->CA_SMOAA_R418_carries, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CA_SMOA FROM CA_SMOAA ACROSS R418
 */
void
ooaofooa_CA_SMOAA_R418_Unlink_carries( ooaofooa_CA_SMOA * part, ooaofooa_CA_SMOAA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CA_SMOA_R418_is_carried_by_ = 0;
  Escher_SetRemoveElement( &part->CA_SMOAA_R418_carries, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_ATTR TO CA_SMOAA ACROSS R419
 */
void
ooaofooa_CA_SMOAA_R419_Link_is_accessed_by( ooaofooa_O_ATTR * part, ooaofooa_CA_SMOAA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ATTR_R419_represents_access_of = part;
  Escher_SetInsertElement( &part->CA_SMOAA_R419_is_accessed_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_ATTR FROM CA_SMOAA ACROSS R419
 */
void
ooaofooa_CA_SMOAA_R419_Unlink_is_accessed_by( ooaofooa_O_ATTR * part, ooaofooa_CA_SMOAA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->O_ATTR_R419_represents_access_of = 0;
  Escher_SetRemoveElement( &part->CA_SMOAA_R419_is_accessed_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CA_SMOAA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CA_SMOAA * self = (ooaofooa_CA_SMOAA *) instance;
  printf( "INSERT INTO CA_SMOAA VALUES ( %ld,%ld,%ld );\n",
    ((long)self->APath_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CA_SMOAA_container[ ooaofooa_CA_SMOAA_MAX_EXTENT_SIZE ];
static ooaofooa_CA_SMOAA ooaofooa_CA_SMOAA_instances[ ooaofooa_CA_SMOAA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CA_SMOAA_extent = {
  {0,0}, {0,0}, &ooaofooa_CA_SMOAA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CA_SMOAA_instances,
  sizeof( ooaofooa_CA_SMOAA ), 0, ooaofooa_CA_SMOAA_MAX_EXTENT_SIZE
  };


