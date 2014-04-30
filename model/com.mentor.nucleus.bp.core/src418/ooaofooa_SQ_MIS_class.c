/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_MIS_class.c
 *
 * Class:       Message In Sequence  (SQ_MIS)
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
ooaofooa_SQ_MIS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_MIS * self = (ooaofooa_SQ_MIS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_MIS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_MIS * ooaofooa_SQ_MIS_instance = (ooaofooa_SQ_MIS *) instance;
  ooaofooa_SQ_S * ooaofooa_SQ_Srelated_instance1 = ooaofooa_SQ_S_AnyWhere1( ooaofooa_SQ_MIS_instance->Package_ID );
  if ( ooaofooa_SQ_Srelated_instance1 ) {
    ooaofooa_SQ_MIS_R953_Link_contains( ooaofooa_SQ_Srelated_instance1, ooaofooa_SQ_MIS_instance );
  }
  {
  ooaofooa_MSG_M * ooaofooa_MSG_Mrelated_instance1 = ooaofooa_MSG_M_AnyWhere1( ooaofooa_SQ_MIS_instance->Msg_ID );
  if ( ooaofooa_MSG_Mrelated_instance1 ) {
    ooaofooa_SQ_MIS_R954_Link_contained_through( ooaofooa_MSG_Mrelated_instance1, ooaofooa_SQ_MIS_instance );
  }
  }
}


/*
 * RELATE SQ_S TO SQ_MIS ACROSS R953
 */
void
ooaofooa_SQ_MIS_R953_Link_contains( ooaofooa_SQ_S * part, ooaofooa_SQ_MIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->SQ_S_R953_contained_in = part;
  Escher_SetInsertElement( &part->SQ_MIS_R953_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_S FROM SQ_MIS ACROSS R953
 */
void
ooaofooa_SQ_MIS_R953_Unlink_contains( ooaofooa_SQ_S * part, ooaofooa_SQ_MIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SQ_S_R953_contained_in = 0;
  Escher_SetRemoveElement( &part->SQ_MIS_R953_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE MSG_M TO SQ_MIS ACROSS R954
 */
void
ooaofooa_SQ_MIS_R954_Link_contained_through( ooaofooa_MSG_M * part, ooaofooa_SQ_MIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Msg_ID = part->Msg_ID;
  form->MSG_M_R954_provides_containment = part;
  part->SQ_MIS_R954_contained_through = form;
}

/*
 * UNRELATE MSG_M FROM SQ_MIS ACROSS R954
 */
void
ooaofooa_SQ_MIS_R954_Unlink_contained_through( ooaofooa_MSG_M * part, ooaofooa_SQ_MIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->MSG_M_R954_provides_containment = 0;
  part->SQ_MIS_R954_contained_through = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_MIS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_MIS * self = (ooaofooa_SQ_MIS *) instance;
  printf( "INSERT INTO SQ_MIS VALUES ( %ld,%ld );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_MIS_container[ ooaofooa_SQ_MIS_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_MIS ooaofooa_SQ_MIS_instances[ ooaofooa_SQ_MIS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_MIS_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_MIS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_MIS_instances,
  sizeof( ooaofooa_SQ_MIS ), 0, ooaofooa_SQ_MIS_MAX_EXTENT_SIZE
  };


