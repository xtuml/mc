/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_WHERE_class.c
 *
 * Class:       Extended Where  (TE_WHERE)
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
ooaofooa_TE_WHERE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_WHERE * self = (ooaofooa_TE_WHERE *) instance;
  /* Initialize application analysis class attributes.  */
  self->WhereKey = ( '0' != *avlstring[ 1 ] );
  Escher_strcpy( self->select_any_where, avlstring[ 2 ] );
  self->Oid_ID = Escher_atoi( avlstring[ 3 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_WHERE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_WHERE * ooaofooa_TE_WHERE_instance = (ooaofooa_TE_WHERE *) instance;
  ooaofooa_O_ID * ooaofooa_O_IDrelated_instance1 = ooaofooa_O_ID_AnyWhere1( ooaofooa_TE_WHERE_instance->Oid_ID, ooaofooa_TE_WHERE_instance->Obj_ID );
  if ( ooaofooa_O_IDrelated_instance1 ) {
    ooaofooa_TE_WHERE_R2032_Link( ooaofooa_O_IDrelated_instance1, ooaofooa_TE_WHERE_instance );
  }
}


/*
 * RELATE O_ID TO TE_WHERE ACROSS R2032
 */
void
ooaofooa_TE_WHERE_R2032_Link( ooaofooa_O_ID * part, ooaofooa_TE_WHERE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Oid_ID = part->Oid_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ID_R2032 = part;
  part->TE_WHERE_R2032 = form;
}

/*
 * UNRELATE O_ID FROM TE_WHERE ACROSS R2032
 */
void
ooaofooa_TE_WHERE_R2032_Unlink( ooaofooa_O_ID * part, ooaofooa_TE_WHERE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Oid_ID = 0;
  form->Obj_ID = 0;
  form->O_ID_R2032 = 0;
  part->TE_WHERE_R2032 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_WHERE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_WHERE * self = (ooaofooa_TE_WHERE *) instance;
  printf( "INSERT INTO TE_WHERE VALUES ( %d,'%s',%d,%ld );\n",
    self->WhereKey,
    self->select_any_where,
    self->Oid_ID,
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_WHERE_container[ ooaofooa_TE_WHERE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_WHERE ooaofooa_TE_WHERE_instances[ ooaofooa_TE_WHERE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_WHERE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_WHERE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_WHERE_instances,
  sizeof( ooaofooa_TE_WHERE ), 0, ooaofooa_TE_WHERE_MAX_EXTENT_SIZE
  };


