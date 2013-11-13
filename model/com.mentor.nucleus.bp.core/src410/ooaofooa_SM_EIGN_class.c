/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_EIGN_class.c
 *
 * Class:       Event Ignored  (SM_EIGN)
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
ooaofooa_SM_EIGN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_EIGN * self = (ooaofooa_SM_EIGN *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_EIGN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_EIGN * ooaofooa_SM_EIGN_instance = (ooaofooa_SM_EIGN *) instance;
  ooaofooa_SM_SEME * ooaofooa_SM_SEMErelated_instance1 = ooaofooa_SM_SEME_AnyWhere1( ooaofooa_SM_EIGN_instance->SMstt_ID, ooaofooa_SM_EIGN_instance->SMevt_ID, ooaofooa_SM_EIGN_instance->SM_ID, ooaofooa_SM_EIGN_instance->SMspd_ID );
  if ( ooaofooa_SM_SEMErelated_instance1 ) {
    ooaofooa_SM_EIGN_R504_Link( ooaofooa_SM_SEMErelated_instance1, ooaofooa_SM_EIGN_instance );
  }
}


/*
 * RELATE SM_SEME TO SM_EIGN ACROSS R504
 */
void
ooaofooa_SM_EIGN_R504_Link( ooaofooa_SM_SEME * supertype, ooaofooa_SM_EIGN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SMspd_ID = supertype->SMspd_ID;
  subtype->SMevt_ID = supertype->SMevt_ID;
  subtype->SM_ID = supertype->SM_ID;
  subtype->SMstt_ID = supertype->SMstt_ID;
  /* Optimized linkage for SM_EIGN->SM_SEME[R504] */
  subtype->SM_SEME_R504 = supertype;
  /* Optimized linkage for SM_SEME->SM_EIGN[R504] */
  supertype->R504_subtype = subtype;
  supertype->R504_object_id = ooaofooa_SM_EIGN_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SEME FROM SM_EIGN ACROSS R504
 */
void
ooaofooa_SM_EIGN_R504_Unlink( ooaofooa_SM_SEME * supertype, ooaofooa_SM_EIGN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_SEME_R504 = 0;
  supertype->R504_subtype = 0;
  supertype->R504_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_EIGN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_EIGN * self = (ooaofooa_SM_EIGN *) instance;
  printf( "INSERT INTO SM_EIGN VALUES ( %ld,%ld,%ld,%ld,'%s' );\n",
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_EIGN_container[ ooaofooa_SM_EIGN_MAX_EXTENT_SIZE ];
static ooaofooa_SM_EIGN ooaofooa_SM_EIGN_instances[ ooaofooa_SM_EIGN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_EIGN_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_EIGN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_EIGN_instances,
  sizeof( ooaofooa_SM_EIGN ), 0, ooaofooa_SM_EIGN_MAX_EXTENT_SIZE
  };


