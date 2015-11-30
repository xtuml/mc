/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_R_class.c
 *
 * Class:       Return Message  (MSG_R)
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
ooaofooa_MSG_R_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_R * self = (ooaofooa_MSG_R *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  Escher_strcpy( self->GuardCondition, avlstring[ 4 ] );
  Escher_strcpy( self->ResultTarget, avlstring[ 5 ] );
  Escher_strcpy( self->ReturnValue, avlstring[ 6 ] );
  Escher_strcpy( self->SequenceNumb, avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_R_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_R * ooaofooa_MSG_R_instance = (ooaofooa_MSG_R *) instance;
  ooaofooa_MSG_M * ooaofooa_MSG_Mrelated_instance1 = ooaofooa_MSG_M_AnyWhere1( ooaofooa_MSG_R_instance->Msg_ID );
  if ( ooaofooa_MSG_Mrelated_instance1 ) {
    ooaofooa_MSG_R_R1018_Link( ooaofooa_MSG_Mrelated_instance1, ooaofooa_MSG_R_instance );
  }
}


/*
 * RELATE MSG_M TO MSG_R ACROSS R1018
 */
void
ooaofooa_MSG_R_R1018_Link( ooaofooa_MSG_M * supertype, ooaofooa_MSG_R * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_R->MSG_M[R1018] */
  subtype->MSG_M_R1018 = supertype;
  /* Optimized linkage for MSG_M->MSG_R[R1018] */
  supertype->R1018_subtype = subtype;
  supertype->R1018_object_id = ooaofooa_MSG_R_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_M FROM MSG_R ACROSS R1018
 */
void
ooaofooa_MSG_R_R1018_Unlink( ooaofooa_MSG_M * supertype, ooaofooa_MSG_R * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_M_R1018 = 0;
  supertype->R1018_subtype = 0;
  supertype->R1018_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_R_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_R * self = (ooaofooa_MSG_R *) instance;
  printf( "INSERT INTO MSG_R VALUES ( %ld,'%s','%s','%s','%s','%s','%s' );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->GuardCondition,
    self->ResultTarget,
    self->ReturnValue,
    self->SequenceNumb );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_R_container[ ooaofooa_MSG_R_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_R ooaofooa_MSG_R_instances[ ooaofooa_MSG_R_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_R_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_R_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_R_instances,
  sizeof( ooaofooa_MSG_R ), 0, ooaofooa_MSG_R_MAX_EXTENT_SIZE
  };


