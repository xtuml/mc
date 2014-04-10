/*----------------------------------------------------------------------------
 * File:  ooaofooa_SP_SE_class.c
 *
 * Class:       Searchable Element  (SP_SE)
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
ooaofooa_SP_SE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SP_SE * self = (ooaofooa_SP_SE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Participant_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->modelRootId, avlstring[ 3 ] );
  Escher_strcpy( self->className, avlstring[ 4 ] );
  self->elementId = Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SP_SE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SP_SE * ooaofooa_SP_SE_instance = (ooaofooa_SP_SE *) instance;
  ooaofooa_SP_SP * ooaofooa_SP_SPrelated_instance1 = (ooaofooa_SP_SP *) Escher_instance_cache[ (intptr_t) ooaofooa_SP_SE_instance->Participant_Id ];
  if ( ooaofooa_SP_SPrelated_instance1 ) {
    ooaofooa_SP_SE_R9700_Link_provides_participation_for( ooaofooa_SP_SPrelated_instance1, ooaofooa_SP_SE_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SP_SE *
ooaofooa_SP_SE_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SP_SE * w; 
  Escher_Iterator_s iter_SP_SE;
  Escher_IteratorReset( &iter_SP_SE, &pG_ooaofooa_SP_SE_extent.active );
  while ( (w = (ooaofooa_SP_SE *) Escher_IteratorNext( &iter_SP_SE )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SP_SP TO SP_SE ACROSS R9700
 */
void
ooaofooa_SP_SE_R9700_Link_provides_participation_for( ooaofooa_SP_SP * part, ooaofooa_SP_SE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Participant_Id = part->Id;
  form->SP_SP_R9700_participates_as = part;
  part->SP_SE_R9700_provides_participation_for = form;
}

/*
 * UNRELATE SP_SP FROM SP_SE ACROSS R9700
 */
void
ooaofooa_SP_SE_R9700_Unlink_provides_participation_for( ooaofooa_SP_SP * part, ooaofooa_SP_SE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Participant_Id = 0;
  form->SP_SP_R9700_participates_as = 0;
  part->SP_SE_R9700_provides_participation_for = 0;
}

/* Accessors to SP_SE[R9702] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SP_SE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SP_SE * self = (ooaofooa_SP_SE *) instance;
  printf( "INSERT INTO SP_SE VALUES ( %ld,%ld,'%s','%s',%d );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Participant_Id & ESCHER_IDDUMP_MASK),
    self->modelRootId,
    self->className,
    self->elementId );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SP_SE_container[ ooaofooa_SP_SE_MAX_EXTENT_SIZE ];
static ooaofooa_SP_SE ooaofooa_SP_SE_instances[ ooaofooa_SP_SE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SP_SE_extent = {
  {0,0}, {0,0}, &ooaofooa_SP_SE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SP_SE_instances,
  sizeof( ooaofooa_SP_SE ), 0, ooaofooa_SP_SE_MAX_EXTENT_SIZE
  };


