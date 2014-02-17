/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DBATTR_class.c
 *
 * Class:       Extended Derived Attribute  (TE_DBATTR)
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
ooaofooa_TE_DBATTR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_DBATTR * self = (ooaofooa_TE_DBATTR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Included = ( '0' != *avlstring[ 1 ] );
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->GeneratedName = Escher_strcpy( self->GeneratedName, avlstring[ 3 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_DBATTR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_DBATTR * ooaofooa_TE_DBATTR_instance = (ooaofooa_TE_DBATTR *) instance;
  ooaofooa_TE_ABA * ooaofooa_TE_ABArelated_instance1 = (ooaofooa_TE_ABA *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_DBATTR_instance->AbaID ];
  if ( ooaofooa_TE_ABArelated_instance1 ) {
    ooaofooa_TE_DBATTR_R2010_Link( ooaofooa_TE_ABArelated_instance1, ooaofooa_TE_DBATTR_instance );
  }
  {
  ooaofooa_O_DBATTR * ooaofooa_O_DBATTRrelated_instance1 = ooaofooa_O_DBATTR_AnyWhere1( ooaofooa_TE_DBATTR_instance->Attr_ID, ooaofooa_TE_DBATTR_instance->Obj_ID );
  if ( ooaofooa_O_DBATTRrelated_instance1 ) {
    ooaofooa_TE_DBATTR_R2026_Link( ooaofooa_O_DBATTRrelated_instance1, ooaofooa_TE_DBATTR_instance );
  }
  }
}


/*
 * RELATE TE_ABA TO TE_DBATTR ACROSS R2010
 */
void
ooaofooa_TE_DBATTR_R2010_Link( ooaofooa_TE_ABA * supertype, ooaofooa_TE_DBATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->AbaID = supertype->AbaID;
  /* Optimized linkage for TE_DBATTR->TE_ABA[R2010] */
  subtype->TE_ABA_R2010 = supertype;
  /* Optimized linkage for TE_ABA->TE_DBATTR[R2010] */
  supertype->R2010_subtype = subtype;
  supertype->R2010_object_id = ooaofooa_TE_DBATTR_CLASS_NUMBER;
}


/*
 * UNRELATE TE_ABA FROM TE_DBATTR ACROSS R2010
 */
void
ooaofooa_TE_DBATTR_R2010_Unlink( ooaofooa_TE_ABA * supertype, ooaofooa_TE_DBATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_ABA_R2010 = 0;
  supertype->R2010_subtype = 0;
  supertype->R2010_object_id = 0;
}


/*
 * RELATE O_DBATTR TO TE_DBATTR ACROSS R2026
 */
void
ooaofooa_TE_DBATTR_R2026_Link( ooaofooa_O_DBATTR * part, ooaofooa_TE_DBATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_DBATTR_R2026 = part;
  part->TE_DBATTR_R2026 = form;
}

/*
 * UNRELATE O_DBATTR FROM TE_DBATTR ACROSS R2026
 */
void
ooaofooa_TE_DBATTR_R2026_Unlink( ooaofooa_O_DBATTR * part, ooaofooa_TE_DBATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = 0;
  form->Obj_ID = 0;
  form->O_DBATTR_R2026 = 0;
  part->TE_DBATTR_R2026 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_DBATTR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_DBATTR * self = (ooaofooa_TE_DBATTR *) instance;
  printf( "INSERT INTO TE_DBATTR VALUES ( %d,%ld,'%s',%ld,%ld );\n",
    self->Included,
    ((long)self->AbaID & ESCHER_IDDUMP_MASK),
    ( 0 != self->GeneratedName ) ? self->GeneratedName : "",
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_DBATTR_container[ ooaofooa_TE_DBATTR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_DBATTR ooaofooa_TE_DBATTR_instances[ ooaofooa_TE_DBATTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_DBATTR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_DBATTR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_DBATTR_instances,
  sizeof( ooaofooa_TE_DBATTR ), 0, ooaofooa_TE_DBATTR_MAX_EXTENT_SIZE
  };


