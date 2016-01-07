/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_SR_class.c
 *
 * Class:       Search Result  (SR_SR)
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
ooaofooa_SR_SR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SR_SR * self = (ooaofooa_SR_SR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Engine_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->MatchedParticipant_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SR_SR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SR_SR * ooaofooa_SR_SR_instance = (ooaofooa_SR_SR *) instance;
  ooaofooa_SEN_E * ooaofooa_SEN_Erelated_instance1 = (ooaofooa_SEN_E *) Escher_instance_cache[ (intptr_t) ooaofooa_SR_SR_instance->Engine_Id ];
  if ( ooaofooa_SEN_Erelated_instance1 ) {
    ooaofooa_SR_SR_R9503_Link_determines( ooaofooa_SEN_Erelated_instance1, ooaofooa_SR_SR_instance );
  }
  {
  ooaofooa_SP_SP * ooaofooa_SP_SPrelated_instance1 = (ooaofooa_SP_SP *) Escher_instance_cache[ (intptr_t) ooaofooa_SR_SR_instance->MatchedParticipant_Id ];
  if ( ooaofooa_SP_SPrelated_instance1 ) {
    ooaofooa_SR_SR_R9802_Link( ooaofooa_SP_SPrelated_instance1, ooaofooa_SR_SR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SR_SR *
ooaofooa_SR_SR_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SR_SR * w; 
  Escher_Iterator_s iter_SR_SR;
  Escher_IteratorReset( &iter_SR_SR, &pG_ooaofooa_SR_SR_extent.active );
  while ( (w = (ooaofooa_SR_SR *) Escher_IteratorNext( &iter_SR_SR )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SEN_E TO SR_SR ACROSS R9503
 */
void
ooaofooa_SR_SR_R9503_Link_determines( ooaofooa_SEN_E * part, ooaofooa_SR_SR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Engine_Id = part->Id;
  form->SEN_E_R9503_is_determined_by = part;
  Escher_SetInsertElement( &part->SR_SR_R9503_determines, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SEN_E FROM SR_SR ACROSS R9503
 */
void
ooaofooa_SR_SR_R9503_Unlink_determines( ooaofooa_SEN_E * part, ooaofooa_SR_SR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Engine_Id = 0;
  form->SEN_E_R9503_is_determined_by = 0;
  Escher_SetRemoveElement( &part->SR_SR_R9503_determines, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SP_SP TO SR_SR ACROSS R9802
 */
void
ooaofooa_SR_SR_R9802_Link( ooaofooa_SP_SP * part, ooaofooa_SR_SR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->MatchedParticipant_Id = part->Id;
  form->SP_SP_R9802 = part;
  part->SR_SR_R9802 = form;
}

/*
 * UNRELATE SP_SP FROM SR_SR ACROSS R9802
 */
void
ooaofooa_SR_SR_R9802_Unlink( ooaofooa_SP_SP * part, ooaofooa_SR_SR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->MatchedParticipant_Id = 0;
  form->SP_SP_R9802 = 0;
  part->SR_SR_R9802 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SR_SR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SR_SR * self = (ooaofooa_SR_SR *) instance;
  printf( "INSERT INTO SR_SR VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Engine_Id & ESCHER_IDDUMP_MASK),
    ((long)self->MatchedParticipant_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SR_SR_container[ ooaofooa_SR_SR_MAX_EXTENT_SIZE ];
static ooaofooa_SR_SR ooaofooa_SR_SR_instances[ ooaofooa_SR_SR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SR_SR_extent = {
  {0,0}, {0,0}, &ooaofooa_SR_SR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SR_SR_instances,
  sizeof( ooaofooa_SR_SR ), 0, ooaofooa_SR_SR_MAX_EXTENT_SIZE
  };


