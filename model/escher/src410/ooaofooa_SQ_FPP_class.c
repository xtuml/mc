/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_FPP_class.c
 *
 * Class:       Function Package Participant  (SQ_FPP)
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
ooaofooa_SQ_FPP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_FPP * self = (ooaofooa_SQ_FPP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->FunPack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Label, avlstring[ 3 ] );
  Escher_strcpy( self->InformalName, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->isFormal = ( '0' != *avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_FPP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_FPP * ooaofooa_SQ_FPP_instance = (ooaofooa_SQ_FPP *) instance;
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_FPP_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_FPP_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_FPP_instance );
  }
  {
  ooaofooa_S_FPK * ooaofooa_S_FPKrelated_instance1 = (ooaofooa_S_FPK *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_FPP_instance->FunPack_ID ];
  if ( ooaofooa_S_FPKrelated_instance1 ) {
    ooaofooa_SQ_FPP_R932_Link_represents_participant_of( ooaofooa_S_FPKrelated_instance1, ooaofooa_SQ_FPP_instance );
  }
  }
}


/*
 * RELATE SQ_P TO SQ_FPP ACROSS R930
 */
void
ooaofooa_SQ_FPP_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_SQ_FPP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for SQ_FPP->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->SQ_FPP[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_SQ_FPP_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM SQ_FPP ACROSS R930
 */
void
ooaofooa_SQ_FPP_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_SQ_FPP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * RELATE S_FPK TO SQ_FPP ACROSS R932
 */
void
ooaofooa_SQ_FPP_R932_Link_represents_participant_of( ooaofooa_S_FPK * part, ooaofooa_SQ_FPP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->FunPack_ID = part->FunPack_ID;
  form->S_FPK_R932_represents = part;
  Escher_SetInsertElement( &part->SQ_FPP_R932_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_FPK FROM SQ_FPP ACROSS R932
 */
void
ooaofooa_SQ_FPP_R932_Unlink_represents_participant_of( ooaofooa_S_FPK * part, ooaofooa_SQ_FPP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->FunPack_ID = 0;
  form->S_FPK_R932_represents = 0;
  Escher_SetRemoveElement( &part->SQ_FPP_R932_represents_participant_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_FPP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_FPP * self = (ooaofooa_SQ_FPP *) instance;
  printf( "INSERT INTO SQ_FPP VALUES ( %ld,%ld,'%s','%s','%s',%d );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->FunPack_ID & ESCHER_IDDUMP_MASK),
    self->Label,
    self->InformalName,
    self->Descrip,
    self->isFormal );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_FPP_container[ ooaofooa_SQ_FPP_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_FPP ooaofooa_SQ_FPP_instances[ ooaofooa_SQ_FPP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_FPP_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_FPP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_FPP_instances,
  sizeof( ooaofooa_SQ_FPP ), 0, ooaofooa_SQ_FPP_MAX_EXTENT_SIZE
  };


