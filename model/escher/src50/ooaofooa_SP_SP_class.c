/*----------------------------------------------------------------------------
 * File:  ooaofooa_SP_SP_class.c
 *
 * Class:       Search Participant  (SP_SP)
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
ooaofooa_SP_SP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SP_SP * self = (ooaofooa_SP_SP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Engine_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SP_SP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SP_SP * ooaofooa_SP_SP_instance = (ooaofooa_SP_SP *) instance;
  ooaofooa_SEN_E * ooaofooa_SEN_Erelated_instance1 = (ooaofooa_SEN_E *) Escher_instance_cache[ (intptr_t) ooaofooa_SP_SP_instance->Engine_Id ];
  if ( ooaofooa_SEN_Erelated_instance1 ) {
    ooaofooa_SP_SP_R9502_Link_searches_against( ooaofooa_SEN_Erelated_instance1, ooaofooa_SP_SP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SP_SP *
ooaofooa_SP_SP_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SP_SP * w; 
  Escher_Iterator_s iter_SP_SP;
  Escher_IteratorReset( &iter_SP_SP, &pG_ooaofooa_SP_SP_extent.active );
  while ( (w = (ooaofooa_SP_SP *) Escher_IteratorNext( &iter_SP_SP )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SEN_E TO SP_SP ACROSS R9502
 */
void
ooaofooa_SP_SP_R9502_Link_searches_against( ooaofooa_SEN_E * part, ooaofooa_SP_SP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Engine_Id = part->Id;
  form->SEN_E_R9502_searched_for_by = part;
  Escher_SetInsertElement( &part->SP_SP_R9502_searches_against, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SEN_E FROM SP_SP ACROSS R9502
 */
void
ooaofooa_SP_SP_R9502_Unlink_searches_against( ooaofooa_SEN_E * part, ooaofooa_SP_SP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Engine_Id = 0;
  form->SEN_E_R9502_searched_for_by = 0;
  Escher_SetRemoveElement( &part->SP_SP_R9502_searches_against, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SP_SP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SP_SP * self = (ooaofooa_SP_SP *) instance;
  printf( "INSERT INTO SP_SP VALUES ( %ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Engine_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SP_SP_container[ ooaofooa_SP_SP_MAX_EXTENT_SIZE ];
static ooaofooa_SP_SP ooaofooa_SP_SP_instances[ ooaofooa_SP_SP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SP_SP_extent = {
  {0,0}, {0,0}, &ooaofooa_SP_SP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SP_SP_instances,
  sizeof( ooaofooa_SP_SP ), 0, ooaofooa_SP_SP_MAX_EXTENT_SIZE
  };


