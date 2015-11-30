/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_M_class.c
 *
 * Class:       Match  (SR_M)
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
ooaofooa_SR_M_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SR_M * self = (ooaofooa_SR_M *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Result_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SR_M_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SR_M * ooaofooa_SR_M_instance = (ooaofooa_SR_M *) instance;
  ooaofooa_SR_SR * ooaofooa_SR_SRrelated_instance1 = (ooaofooa_SR_SR *) Escher_instance_cache[ (intptr_t) ooaofooa_SR_M_instance->Result_Id ];
  if ( ooaofooa_SR_SRrelated_instance1 ) {
    ooaofooa_SR_M_R9800_Link_consists_of( ooaofooa_SR_SRrelated_instance1, ooaofooa_SR_M_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SR_M *
ooaofooa_SR_M_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SR_M * w; 
  Escher_Iterator_s iter_SR_M;
  Escher_IteratorReset( &iter_SR_M, &pG_ooaofooa_SR_M_extent.active );
  while ( (w = (ooaofooa_SR_M *) Escher_IteratorNext( &iter_SR_M )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SR_SR TO SR_M ACROSS R9800
 */
void
ooaofooa_SR_M_R9800_Link_consists_of( ooaofooa_SR_SR * part, ooaofooa_SR_M * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Result_Id = part->Id;
  form->SR_SR_R9800_provides_for = part;
  Escher_SetInsertElement( &part->SR_M_R9800_consists_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SR_SR FROM SR_M ACROSS R9800
 */
void
ooaofooa_SR_M_R9800_Unlink_consists_of( ooaofooa_SR_SR * part, ooaofooa_SR_M * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Result_Id = 0;
  form->SR_SR_R9800_provides_for = 0;
  Escher_SetRemoveElement( &part->SR_M_R9800_consists_of, (Escher_ObjectSet_s *) form );
}

/* Accessors to SR_M[R9801] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SR_M_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SR_M * self = (ooaofooa_SR_M *) instance;
  printf( "INSERT INTO SR_M VALUES ( %ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Result_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SR_M_container[ ooaofooa_SR_M_MAX_EXTENT_SIZE ];
static ooaofooa_SR_M ooaofooa_SR_M_instances[ ooaofooa_SR_M_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SR_M_extent = {
  {0,0}, {0,0}, &ooaofooa_SR_M_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SR_M_instances,
  sizeof( ooaofooa_SR_M ), 0, ooaofooa_SR_M_MAX_EXTENT_SIZE
  };


