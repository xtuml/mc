/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SWC_class.c
 *
 * Class:       Special Where Clause  (TE_SWC)
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
ooaofooa_TE_SWC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SWC * self = (ooaofooa_TE_SWC *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->Obj_Kl, avlstring[ 1 ] );
  Escher_strcpy( self->Where_Spec, avlstring[ 2 ] );
  Escher_strcpy( self->Key, avlstring[ 3 ] );
  self->Ret_Val = ( '0' != *avlstring[ 4 ] );
  self->Built_In = ( '0' != *avlstring[ 5 ] );
  self->Oid_ID = Escher_atoi( avlstring[ 6 ] );
  Escher_strcpy( self->GeneratedName, avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SWC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SWC * ooaofooa_TE_SWC_instance = (ooaofooa_TE_SWC *) instance;
  ooaofooa_TE_CLASS * ooaofooa_TE_CLASSrelated_instance1 = (ooaofooa_TE_CLASS *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SWC_instance->GeneratedName ];
  if ( ooaofooa_TE_CLASSrelated_instance1 ) {
    ooaofooa_TE_SWC_R2001_Link( ooaofooa_TE_CLASSrelated_instance1, ooaofooa_TE_SWC_instance );
  }
}


/*
 * RELATE TE_CLASS TO TE_SWC ACROSS R2001
 */
void
ooaofooa_TE_SWC_R2001_Link( ooaofooa_TE_CLASS * part, ooaofooa_TE_SWC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_strcpy( form->GeneratedName, part->GeneratedName );
  form->TE_CLASS_R2001 = part;
  Escher_SetInsertElement( &part->TE_SWC_R2001, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_CLASS FROM TE_SWC ACROSS R2001
 */
void
ooaofooa_TE_SWC_R2001_Unlink( ooaofooa_TE_CLASS * part, ooaofooa_TE_SWC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->GeneratedName, 0, sizeof( form->GeneratedName ) );
  form->TE_CLASS_R2001 = 0;
  Escher_SetRemoveElement( &part->TE_SWC_R2001, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_SWC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SWC * self = (ooaofooa_TE_SWC *) instance;
  printf( "INSERT INTO TE_SWC VALUES ( '%s','%s','%s',%d,%d,%d,'%s' );\n",
    self->Obj_Kl,
    self->Where_Spec,
    self->Key,
    self->Ret_Val,
    self->Built_In,
    self->Oid_ID,
    self->GeneratedName );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SWC_container[ ooaofooa_TE_SWC_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SWC ooaofooa_TE_SWC_instances[ ooaofooa_TE_SWC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SWC_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SWC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SWC_instances,
  sizeof( ooaofooa_TE_SWC ), 0, ooaofooa_TE_SWC_MAX_EXTENT_SIZE
  };


