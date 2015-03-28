/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ENUM_class.c
 *
 * Class:       Extended Enumerator  (TE_ENUM)
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
ooaofooa_TE_ENUM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_ENUM * self = (ooaofooa_TE_ENUM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Name = Escher_strcpy( self->Name, avlstring[ 1 ] );
  self->Value = Escher_strcpy( self->Value, avlstring[ 2 ] );
  self->Order = Escher_atoi( avlstring[ 3 ] );
  self->GeneratedName = Escher_strcpy( self->GeneratedName, avlstring[ 4 ] );
  self->Enum_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_ENUM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_ENUM * ooaofooa_TE_ENUM_instance = (ooaofooa_TE_ENUM *) instance;
  ooaofooa_S_ENUM * ooaofooa_S_ENUMrelated_instance1 = (ooaofooa_S_ENUM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_ENUM_instance->Enum_ID ];
  if ( ooaofooa_S_ENUMrelated_instance1 ) {
    ooaofooa_TE_ENUM_R2027_Link( ooaofooa_S_ENUMrelated_instance1, ooaofooa_TE_ENUM_instance );
  }
}


/*
 * RELATE S_ENUM TO TE_ENUM ACROSS R2027
 */
void
ooaofooa_TE_ENUM_R2027_Link( ooaofooa_S_ENUM * part, ooaofooa_TE_ENUM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Enum_ID = part->Enum_ID;
  form->S_ENUM_R2027 = part;
  part->TE_ENUM_R2027 = form;
}

/*
 * UNRELATE S_ENUM FROM TE_ENUM ACROSS R2027
 */
void
ooaofooa_TE_ENUM_R2027_Unlink( ooaofooa_S_ENUM * part, ooaofooa_TE_ENUM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Enum_ID = 0;
  form->S_ENUM_R2027 = 0;
  part->TE_ENUM_R2027 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_ENUM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_ENUM * self = (ooaofooa_TE_ENUM *) instance;
  printf( "INSERT INTO TE_ENUM VALUES ( '%s','%s',%d,'%s',%ld );\n",
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Value ) ? self->Value : "",
    self->Order,
    ( 0 != self->GeneratedName ) ? self->GeneratedName : "",
    ((long)self->Enum_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_ENUM_container[ ooaofooa_TE_ENUM_MAX_EXTENT_SIZE ];
static ooaofooa_TE_ENUM ooaofooa_TE_ENUM_instances[ ooaofooa_TE_ENUM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_ENUM_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_ENUM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_ENUM_instances,
  sizeof( ooaofooa_TE_ENUM ), 0, ooaofooa_TE_ENUM_MAX_EXTENT_SIZE
  };


