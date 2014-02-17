/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_REL_class.c
 *
 * Class:       Extended Relation  (TE_REL)
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
ooaofooa_TE_REL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_REL * self = (ooaofooa_TE_REL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Numb = Escher_atoi( avlstring[ 1 ] );
  self->LinkNeeded = ( '0' != *avlstring[ 2 ] );
  self->UnlinkNeeded = ( '0' != *avlstring[ 3 ] );
  self->Navigated = ( '0' != *avlstring[ 4 ] );
  self->Order = Escher_atoi( avlstring[ 5 ] );
  self->storage_needed = ( '0' != *avlstring[ 6 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_REL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_REL * ooaofooa_TE_REL_instance = (ooaofooa_TE_REL *) instance;
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance1 = ooaofooa_R_REL_AnyWhere1( ooaofooa_TE_REL_instance->Rel_ID );
  if ( ooaofooa_R_RELrelated_instance1 ) {
    ooaofooa_TE_REL_R2034_Link( ooaofooa_R_RELrelated_instance1, ooaofooa_TE_REL_instance );
  }
}


/*
 * RELATE R_REL TO TE_REL ACROSS R2034
 */
void
ooaofooa_TE_REL_R2034_Link( ooaofooa_R_REL * part, ooaofooa_TE_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_REL_R2034 = part;
  part->TE_REL_R2034 = form;
}

/*
 * UNRELATE R_REL FROM TE_REL ACROSS R2034
 */
void
ooaofooa_TE_REL_R2034_Unlink( ooaofooa_R_REL * part, ooaofooa_TE_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = 0;
  form->R_REL_R2034 = 0;
  part->TE_REL_R2034 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_REL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_REL * self = (ooaofooa_TE_REL *) instance;
  printf( "INSERT INTO TE_REL VALUES ( %d,%d,%d,%d,%d,%d,%ld );\n",
    self->Numb,
    self->LinkNeeded,
    self->UnlinkNeeded,
    self->Navigated,
    self->Order,
    self->storage_needed,
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_REL_container[ ooaofooa_TE_REL_MAX_EXTENT_SIZE ];
static ooaofooa_TE_REL ooaofooa_TE_REL_instances[ ooaofooa_TE_REL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_REL_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_REL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_REL_instances,
  sizeof( ooaofooa_TE_REL ), 0, ooaofooa_TE_REL_MAX_EXTENT_SIZE
  };


