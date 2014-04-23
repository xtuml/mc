/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_IOBJ_class.c
 *
 * Class:       Imported Class  (O_IOBJ)
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
ooaofooa_O_IOBJ_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_IOBJ * self = (ooaofooa_O_IOBJ *) instance;
  /* Initialize application analysis class attributes.  */
  self->IObj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Modl_Typ = Escher_atoi( avlstring[ 3 ] );
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Obj_Name = Escher_strcpy( self->Obj_Name, avlstring[ 5 ] );
  self->Obj_KL = Escher_strcpy( self->Obj_KL, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_IOBJ_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_IOBJ * ooaofooa_O_IOBJ_instance = (ooaofooa_O_IOBJ *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_O_IOBJ_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_O_IOBJ_R101_Link_has_presence_in_other_subsystems( ooaofooa_O_OBJrelated_instance1, ooaofooa_O_IOBJ_instance );
  }
  {
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_O_IOBJ_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_O_IOBJ_R3_Link_can_contain_classs_from_other_subsystems_via( ooaofooa_S_SSrelated_instance1, ooaofooa_O_IOBJ_instance );
  }
  }
  {
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_O_IOBJ_instance->IObj_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_O_IOBJ_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_O_IOBJ_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_IOBJ *
ooaofooa_O_IOBJ_AnyWhere1( Escher_UniqueID_t w_IObj_ID )
{
  ooaofooa_O_IOBJ * w; 
  Escher_Iterator_s iter_O_IOBJ;
  Escher_IteratorReset( &iter_O_IOBJ, &pG_ooaofooa_O_IOBJ_extent.active );
  while ( (w = (ooaofooa_O_IOBJ *) Escher_IteratorNext( &iter_O_IOBJ )) != 0 ) {
    if ( w->IObj_ID == w_IObj_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SS TO O_IOBJ ACROSS R3
 */
void
ooaofooa_O_IOBJ_R3_Link_can_contain_classs_from_other_subsystems_via( ooaofooa_S_SS * part, ooaofooa_O_IOBJ * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R3_represents_a_class_from_another_subsystem_in = part;
  Escher_SetInsertElement( &part->O_IOBJ_R3_can_contain_classs_from_other_subsystems_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM O_IOBJ ACROSS R3
 */
void
ooaofooa_O_IOBJ_R3_Unlink_can_contain_classs_from_other_subsystems_via( ooaofooa_S_SS * part, ooaofooa_O_IOBJ * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R3_represents_a_class_from_another_subsystem_in = 0;
  Escher_SetRemoveElement( &part->O_IOBJ_R3_can_contain_classs_from_other_subsystems_via, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_OBJ TO O_IOBJ ACROSS R101
 */
void
ooaofooa_O_IOBJ_R101_Link_has_presence_in_other_subsystems( ooaofooa_O_OBJ * part, ooaofooa_O_IOBJ * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R101_represents = part;
  Escher_SetInsertElement( &part->O_IOBJ_R101_has_presence_in_other_subsystems, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM O_IOBJ ACROSS R101
 */
void
ooaofooa_O_IOBJ_R101_Unlink_has_presence_in_other_subsystems( ooaofooa_O_OBJ * part, ooaofooa_O_IOBJ * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R101_represents = 0;
  Escher_SetRemoveElement( &part->O_IOBJ_R101_has_presence_in_other_subsystems, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO O_IOBJ ACROSS R8001
 */
void
ooaofooa_O_IOBJ_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_O_IOBJ * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->IObj_ID = supertype->Element_ID;
  /* Optimized linkage for O_IOBJ->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->O_IOBJ[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_O_IOBJ_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM O_IOBJ ACROSS R8001
 */
void
ooaofooa_O_IOBJ_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_O_IOBJ * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->PE_PE_R8001 = 0;
  supertype->R8001_subtype = 0;
  supertype->R8001_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_IOBJ_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_IOBJ * self = (ooaofooa_O_IOBJ *) instance;
  printf( "INSERT INTO O_IOBJ VALUES ( %ld,%ld,%d,%ld,'%s','%s' );\n",
    ((long)self->IObj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->Modl_Typ,
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Obj_Name ) ? self->Obj_Name : "",
    ( 0 != self->Obj_KL ) ? self->Obj_KL : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_IOBJ_container[ ooaofooa_O_IOBJ_MAX_EXTENT_SIZE ];
static ooaofooa_O_IOBJ ooaofooa_O_IOBJ_instances[ ooaofooa_O_IOBJ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_IOBJ_extent = {
  {0,0}, {0,0}, &ooaofooa_O_IOBJ_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_IOBJ_instances,
  sizeof( ooaofooa_O_IOBJ ), 0, ooaofooa_O_IOBJ_MAX_EXTENT_SIZE
  };


