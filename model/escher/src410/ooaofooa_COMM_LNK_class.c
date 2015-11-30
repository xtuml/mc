/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_LNK_class.c
 *
 * Class:       Communication Link  (COMM_LNK)
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
ooaofooa_COMM_LNK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_COMM_LNK * self = (ooaofooa_COMM_LNK *) instance;
  /* Initialize application analysis class attributes.  */
  self->Link_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Link_ID;
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Numb, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  Escher_strcpy( self->StartText, avlstring[ 5 ] );
  Escher_strcpy( self->EndText, avlstring[ 6 ] );
  self->isFormal = ( '0' != *avlstring[ 7 ] );
  self->StartVisibility = Escher_atoi( avlstring[ 8 ] );
  self->EndVisibility = Escher_atoi( avlstring[ 9 ] );
  self->Start_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->Destination_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_COMM_LNK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_COMM_LNK * ooaofooa_COMM_LNK_instance = (ooaofooa_COMM_LNK *) instance;
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_COMM_LNK_instance->Start_Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_COMM_LNK_R1133_Link_is_start_point( ooaofooa_SQ_Prelated_instance1, ooaofooa_COMM_LNK_instance );
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_COMM_LNK_instance->Destination_Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_COMM_LNK_R1134_Link_is_destination( ooaofooa_SQ_Prelated_instance1, ooaofooa_COMM_LNK_instance );
  }
  }
  {
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance1 = ooaofooa_R_REL_AnyWhere1( ooaofooa_COMM_LNK_instance->Rel_ID );
  if ( ooaofooa_R_RELrelated_instance1 ) {
    ooaofooa_COMM_LNK_R1128_Link_represents_formal_instance( ooaofooa_R_RELrelated_instance1, ooaofooa_COMM_LNK_instance );
  }
  }
}


/*
 * RELATE R_REL TO COMM_LNK ACROSS R1128
 */
void
ooaofooa_COMM_LNK_R1128_Link_represents_formal_instance( ooaofooa_R_REL * part, ooaofooa_COMM_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_REL_R1128_may_be_formalized_against = part;
  Escher_SetInsertElement( &part->COMM_LNK_R1128_represents_formal_instance, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE R_REL FROM COMM_LNK ACROSS R1128
 */
void
ooaofooa_COMM_LNK_R1128_Unlink_represents_formal_instance( ooaofooa_R_REL * part, ooaofooa_COMM_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = 0;
  form->R_REL_R1128_may_be_formalized_against = 0;
  Escher_SetRemoveElement( &part->COMM_LNK_R1128_represents_formal_instance, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SQ_P TO COMM_LNK ACROSS R1133
 */
void
ooaofooa_COMM_LNK_R1133_Link_is_start_point( ooaofooa_SQ_P * part, ooaofooa_COMM_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Start_Part_ID = part->Part_ID;
  form->SQ_P_R1133_starts_at = part;
  Escher_SetInsertElement( &part->COMM_LNK_R1133_is_start_point, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_P FROM COMM_LNK ACROSS R1133
 */
void
ooaofooa_COMM_LNK_R1133_Unlink_is_start_point( ooaofooa_SQ_P * part, ooaofooa_COMM_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Start_Part_ID = 0;
  form->SQ_P_R1133_starts_at = 0;
  Escher_SetRemoveElement( &part->COMM_LNK_R1133_is_start_point, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SQ_P TO COMM_LNK ACROSS R1134
 */
void
ooaofooa_COMM_LNK_R1134_Link_is_destination( ooaofooa_SQ_P * part, ooaofooa_COMM_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Destination_Part_ID = part->Part_ID;
  form->SQ_P_R1134_is_destined_for = part;
  Escher_SetInsertElement( &part->COMM_LNK_R1134_is_destination, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_P FROM COMM_LNK ACROSS R1134
 */
void
ooaofooa_COMM_LNK_R1134_Unlink_is_destination( ooaofooa_SQ_P * part, ooaofooa_COMM_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Destination_Part_ID = 0;
  form->SQ_P_R1134_is_destined_for = 0;
  Escher_SetRemoveElement( &part->COMM_LNK_R1134_is_destination, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_COMM_LNK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_COMM_LNK * self = (ooaofooa_COMM_LNK *) instance;
  printf( "INSERT INTO COMM_LNK VALUES ( %ld,%ld,'%s','%s','%s','%s',%d,%d,%d,%ld,%ld );\n",
    ((long)self->Link_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    self->Numb,
    self->Descrip,
    self->StartText,
    self->EndText,
    self->isFormal,
    self->StartVisibility,
    self->EndVisibility,
    ((long)self->Start_Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Destination_Part_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_COMM_LNK_container[ ooaofooa_COMM_LNK_MAX_EXTENT_SIZE ];
static ooaofooa_COMM_LNK ooaofooa_COMM_LNK_instances[ ooaofooa_COMM_LNK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_COMM_LNK_extent = {
  {0,0}, {0,0}, &ooaofooa_COMM_LNK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_COMM_LNK_instances,
  sizeof( ooaofooa_COMM_LNK ), 0, ooaofooa_COMM_LNK_MAX_EXTENT_SIZE
  };


