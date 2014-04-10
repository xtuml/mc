/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_STATE_class.c
 *
 * Class:       Extended State  (TE_STATE)
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
ooaofooa_TE_STATE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_STATE * self = (ooaofooa_TE_STATE *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->Name, avlstring[ 1 ] );
  Escher_strcpy( self->enumerator, avlstring[ 2 ] );
  self->Numb = Escher_atoi( avlstring[ 3 ] );
  self->number = Escher_atoi( avlstring[ 4 ] );
  self->Order = Escher_atoi( avlstring[ 5 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_STATE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_STATE * ooaofooa_TE_STATE_instance = (ooaofooa_TE_STATE *) instance;
  ooaofooa_SM_STATE * ooaofooa_SM_STATErelated_instance1 = ooaofooa_SM_STATE_AnyWhere1( ooaofooa_TE_STATE_instance->SMstt_ID, ooaofooa_TE_STATE_instance->SM_ID );
  if ( ooaofooa_SM_STATErelated_instance1 ) {
    ooaofooa_TE_STATE_R2037_Link( ooaofooa_SM_STATErelated_instance1, ooaofooa_TE_STATE_instance );
  }
}


/*
 * RELATE SM_STATE TO TE_STATE ACROSS R2037
 */
void
ooaofooa_TE_STATE_R2037_Link( ooaofooa_SM_STATE * part, ooaofooa_TE_STATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMstt_ID = part->SMstt_ID;
  form->SM_STATE_R2037 = part;
  part->TE_STATE_R2037 = form;
}

/*
 * UNRELATE SM_STATE FROM TE_STATE ACROSS R2037
 */
void
ooaofooa_TE_STATE_R2037_Unlink( ooaofooa_SM_STATE * part, ooaofooa_TE_STATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SMstt_ID = 0;
  form->SM_STATE_R2037 = 0;
  part->TE_STATE_R2037 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_STATE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_STATE * self = (ooaofooa_TE_STATE *) instance;
  printf( "INSERT INTO TE_STATE VALUES ( '%s','%s',%d,%d,%d,%ld,%ld );\n",
    self->Name,
    self->enumerator,
    self->Numb,
    self->number,
    self->Order,
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_STATE_container[ ooaofooa_TE_STATE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_STATE ooaofooa_TE_STATE_instances[ ooaofooa_TE_STATE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_STATE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_STATE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_STATE_instances,
  sizeof( ooaofooa_TE_STATE ), 0, ooaofooa_TE_STATE_MAX_EXTENT_SIZE
  };


