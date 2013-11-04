/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_VIS_class.c
 *
 * Class:       Element Visibility  (PE_VIS)
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
ooaofooa_PE_VIS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PE_VIS * self = (ooaofooa_PE_VIS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Visibility_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Visibility_ID;
  self->Element_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->Name, avlstring[ 4 ] );
  self->Type = Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PE_VIS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PE_VIS * ooaofooa_PE_VIS_instance = (ooaofooa_PE_VIS *) instance;
  ooaofooa_PE_SRS * ooaofooa_PE_SRSrelated_instance1 = ooaofooa_PE_SRS_AnyWhere1( ooaofooa_PE_VIS_instance->Package_ID, ooaofooa_PE_VIS_instance->Name, ooaofooa_PE_VIS_instance->Type );
  if ( ooaofooa_PE_SRSrelated_instance1 ) {
    ooaofooa_PE_VIS_R8006_Link( ooaofooa_PE_SRSrelated_instance1, ooaofooa_PE_VIS_instance );
  }
  {
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_PE_VIS_instance->Element_ID ];
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance2 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_PE_VIS_instance->Package_ID );
  if ( ooaofooa_PE_PErelated_instance1 && ooaofooa_EP_PKGrelated_instance2 ) {
    ooaofooa_PE_VIS_R8002_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_EP_PKGrelated_instance2, ooaofooa_PE_VIS_instance );
  }
  }
}


/*
 * RELATE PE_PE TO EP_PKG ACROSS R8002 USING PE_VIS
 */
void
ooaofooa_PE_VIS_R8002_Link( ooaofooa_PE_PE * aone, ooaofooa_EP_PKG * aoth, ooaofooa_PE_VIS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Element_ID = aone->Element_ID;
  assr->Package_ID = aoth->Package_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->PE_PE_R8002_has_visibility_of = aone;
  assr->EP_PKG_R8002_is_visible_to_elements_in = aoth;
  Escher_SetInsertElement( &aone->PE_VIS_R8002, assr );
  Escher_SetInsertElement( &aoth->PE_VIS_R8002, assr );
}

/*
 * UNRELATE PE_PE FROM EP_PKG ACROSS R8002 USING PE_VIS
 */
void
ooaofooa_PE_VIS_R8002_Unlink( ooaofooa_PE_PE * aone, ooaofooa_EP_PKG * aoth, ooaofooa_PE_VIS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->PE_PE_R8002_has_visibility_of = 0;
  assr->EP_PKG_R8002_is_visible_to_elements_in = 0;
  Escher_SetRemoveElement( &aone->PE_VIS_R8002, assr );
  Escher_SetRemoveElement( &aoth->PE_VIS_R8002, assr );
}

/*
 * RELATE PE_SRS TO PE_VIS ACROSS R8006
 */
void
ooaofooa_PE_VIS_R8006_Link( ooaofooa_PE_SRS * part, ooaofooa_PE_VIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_strcpy( form->Name, part->Name );
  form->Type = part->Type;
  form->Package_ID = part->Package_ID;
  form->PE_SRS_R8006 = part;
  Escher_SetInsertElement( &part->PE_VIS_R8006, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE PE_SRS FROM PE_VIS ACROSS R8006
 */
void
ooaofooa_PE_VIS_R8006_Unlink( ooaofooa_PE_SRS * part, ooaofooa_PE_VIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->Name, 0, sizeof( form->Name ) );
  form->Type = ooaofooa_ElementTypeConstants__UNINITIALIZED__e;
  form->PE_SRS_R8006 = 0;
  Escher_SetRemoveElement( &part->PE_VIS_R8006, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PE_VIS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PE_VIS * self = (ooaofooa_PE_VIS *) instance;
  printf( "INSERT INTO PE_VIS VALUES ( %ld,%ld,%ld,'%s',%d );\n",
    ((long)self->Visibility_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Element_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Type );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PE_VIS_container[ ooaofooa_PE_VIS_MAX_EXTENT_SIZE ];
static ooaofooa_PE_VIS ooaofooa_PE_VIS_instances[ ooaofooa_PE_VIS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PE_VIS_extent = {
  {0,0}, {0,0}, &ooaofooa_PE_VIS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PE_VIS_instances,
  sizeof( ooaofooa_PE_VIS ), 0, ooaofooa_PE_VIS_MAX_EXTENT_SIZE
  };


