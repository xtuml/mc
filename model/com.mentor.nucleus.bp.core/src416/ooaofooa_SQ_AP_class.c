/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_AP_class.c
 *
 * Class:       Actor Participant  (SQ_AP)
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
ooaofooa_SQ_AP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_AP * self = (ooaofooa_SQ_AP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->LS_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_AP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_AP * ooaofooa_SQ_AP_instance = (ooaofooa_SQ_AP *) instance;
  ooaofooa_SQ_LS * ooaofooa_SQ_LSrelated_instance1 = ooaofooa_SQ_LS_AnyWhere1( ooaofooa_SQ_AP_instance->LS_Part_ID );
  if ( ooaofooa_SQ_LSrelated_instance1 ) {
    ooaofooa_SQ_AP_R949_Link_defines_bounds_of_existence( ooaofooa_SQ_LSrelated_instance1, ooaofooa_SQ_AP_instance );
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_SQ_AP_instance->Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_SQ_AP_R930_Link( ooaofooa_SQ_Prelated_instance1, ooaofooa_SQ_AP_instance );
  }
  }
}


/*
 * RELATE SQ_P TO SQ_AP ACROSS R930
 */
void
ooaofooa_SQ_AP_R930_Link( ooaofooa_SQ_P * supertype, ooaofooa_SQ_AP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Part_ID = supertype->Part_ID;
  /* Optimized linkage for SQ_AP->SQ_P[R930] */
  subtype->SQ_P_R930 = supertype;
  /* Optimized linkage for SQ_P->SQ_AP[R930] */
  supertype->R930_subtype = subtype;
  supertype->R930_object_id = ooaofooa_SQ_AP_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_P FROM SQ_AP ACROSS R930
 */
void
ooaofooa_SQ_AP_R930_Unlink( ooaofooa_SQ_P * supertype, ooaofooa_SQ_AP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_P_R930 = 0;
  supertype->R930_subtype = 0;
  supertype->R930_object_id = 0;
}


/*
 * RELATE SQ_LS TO SQ_AP ACROSS R949
 */
void
ooaofooa_SQ_AP_R949_Link_defines_bounds_of_existence( ooaofooa_SQ_LS * part, ooaofooa_SQ_AP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->LS_Part_ID = part->Part_ID;
  form->SQ_LS_R949_life_is_bounded_by = part;
  part->SQ_AP_R949_defines_bounds_of_existence = form;
}

/*
 * UNRELATE SQ_LS FROM SQ_AP ACROSS R949
 */
void
ooaofooa_SQ_AP_R949_Unlink_defines_bounds_of_existence( ooaofooa_SQ_LS * part, ooaofooa_SQ_AP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->LS_Part_ID = 0;
  form->SQ_LS_R949_life_is_bounded_by = 0;
  part->SQ_AP_R949_defines_bounds_of_existence = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_AP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_AP * self = (ooaofooa_SQ_AP *) instance;
  printf( "INSERT INTO SQ_AP VALUES ( %ld,'%s','%s',%ld );\n",
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ((long)self->LS_Part_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_AP_container[ ooaofooa_SQ_AP_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_AP ooaofooa_SQ_AP_instances[ ooaofooa_SQ_AP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_AP_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_AP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_AP_instances,
  sizeof( ooaofooa_SQ_AP ), 0, ooaofooa_SQ_AP_MAX_EXTENT_SIZE
  };


