/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_CVS_class.c
 *
 * Class:       Component Visibility  (PE_CVS)
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
ooaofooa_PE_CVS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PE_CVS * self = (ooaofooa_PE_CVS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Visibility_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Visibility_ID;
  self->Element_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 4 ] );
  self->Type = Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PE_CVS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PE_CVS * ooaofooa_PE_CVS_instance = (ooaofooa_PE_CVS *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_PE_CVS_instance->Element_ID ];
  ooaofooa_C_C * ooaofooa_C_Crelated_instance2 = ooaofooa_C_C_AnyWhere1( ooaofooa_PE_CVS_instance->Id );
  if ( ooaofooa_PE_PErelated_instance1 && ooaofooa_C_Crelated_instance2 ) {
    ooaofooa_PE_CVS_R8004_Link( ooaofooa_C_Crelated_instance2, ooaofooa_PE_PErelated_instance1, ooaofooa_PE_CVS_instance );
  }
  {
  ooaofooa_PE_CRS * ooaofooa_PE_CRSrelated_instance1 = ooaofooa_PE_CRS_AnyWhere1( ooaofooa_PE_CVS_instance->Id, ooaofooa_PE_CVS_instance->Name, ooaofooa_PE_CVS_instance->Type );
  if ( ooaofooa_PE_CRSrelated_instance1 ) {
    ooaofooa_PE_CVS_R8008_Link_made_up_of( ooaofooa_PE_CRSrelated_instance1, ooaofooa_PE_CVS_instance );
  }
  }
}


/*
 * RELATE C_C TO PE_PE ACROSS R8004 USING PE_CVS
 */
void
ooaofooa_PE_CVS_R8004_Link( ooaofooa_C_C * aone, ooaofooa_PE_PE * aoth, ooaofooa_PE_CVS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Id = aone->Id;
  assr->Element_ID = aoth->Element_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_C_R8004_is_visible_to = aone;
  assr->PE_PE_R8004_has_visibility_of = aoth;
  Escher_SetInsertElement( &aone->PE_CVS_R8004, assr );
  Escher_SetInsertElement( &aoth->PE_CVS_R8004, assr );
}

/*
 * UNRELATE C_C FROM PE_PE ACROSS R8004 USING PE_CVS
 */
void
ooaofooa_PE_CVS_R8004_Unlink( ooaofooa_C_C * aone, ooaofooa_PE_PE * aoth, ooaofooa_PE_CVS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_C_R8004_is_visible_to = 0;
  assr->PE_PE_R8004_has_visibility_of = 0;
  Escher_SetRemoveElement( &aone->PE_CVS_R8004, assr );
  Escher_SetRemoveElement( &aoth->PE_CVS_R8004, assr );
}

/*
 * RELATE PE_CRS TO PE_CVS ACROSS R8008
 */
void
ooaofooa_PE_CVS_R8008_Link_made_up_of( ooaofooa_PE_CRS * part, ooaofooa_PE_CVS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Name = Escher_strcpy( form->Name, part->Name );
  form->Type = part->Type;
  form->Id = part->Id;
  form->PE_CRS_R8008_makes_up_a = part;
  Escher_SetInsertElement( &part->PE_CVS_R8008_made_up_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE PE_CRS FROM PE_CVS ACROSS R8008
 */
void
ooaofooa_PE_CVS_R8008_Unlink_made_up_of( ooaofooa_PE_CRS * part, ooaofooa_PE_CVS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->Name, 0, sizeof( form->Name ) );
  form->Type = ooaofooa_ElementTypeConstants__UNINITIALIZED__e;
  form->PE_CRS_R8008_makes_up_a = 0;
  Escher_SetRemoveElement( &part->PE_CVS_R8008_made_up_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PE_CVS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PE_CVS * self = (ooaofooa_PE_CVS *) instance;
  printf( "INSERT INTO PE_CVS VALUES ( %ld,%ld,%ld,'%s',%d );\n",
    ((long)self->Visibility_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Element_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    self->Type );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PE_CVS_container[ ooaofooa_PE_CVS_MAX_EXTENT_SIZE ];
static ooaofooa_PE_CVS ooaofooa_PE_CVS_instances[ ooaofooa_PE_CVS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PE_CVS_extent = {
  {0,0}, {0,0}, &ooaofooa_PE_CVS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PE_CVS_instances,
  sizeof( ooaofooa_PE_CVS ), 0, ooaofooa_PE_CVS_MAX_EXTENT_SIZE
  };


