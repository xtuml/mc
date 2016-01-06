/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_CH_class.c
 *
 * Class:       Cant Happen  (SM_CH)
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
ooaofooa_SM_CH_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_CH * self = (ooaofooa_SM_CH *) instance;
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
void ooaofooa_SM_CH_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_CH * ooaofooa_SM_CH_instance = (ooaofooa_SM_CH *) instance;
  ooaofooa_SM_SEME * ooaofooa_SM_SEMErelated_instance1 = ooaofooa_SM_SEME_AnyWhere1( ooaofooa_SM_CH_instance->SMstt_ID, ooaofooa_SM_CH_instance->SMevt_ID, ooaofooa_SM_CH_instance->SM_ID, ooaofooa_SM_CH_instance->SMspd_ID );
  if ( ooaofooa_SM_SEMErelated_instance1 ) {
    ooaofooa_SM_CH_R504_Link( ooaofooa_SM_SEMErelated_instance1, ooaofooa_SM_CH_instance );
  }
}


/*
 * RELATE SM_SEME TO SM_CH ACROSS R504
 */
void
ooaofooa_SM_CH_R504_Link( ooaofooa_SM_SEME * supertype, ooaofooa_SM_CH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SMspd_ID = supertype->SMspd_ID;
  subtype->SMevt_ID = supertype->SMevt_ID;
  subtype->SM_ID = supertype->SM_ID;
  subtype->SMstt_ID = supertype->SMstt_ID;
  /* Optimized linkage for SM_CH->SM_SEME[R504] */
  subtype->SM_SEME_R504 = supertype;
  /* Optimized linkage for SM_SEME->SM_CH[R504] */
  supertype->R504_subtype = subtype;
  supertype->R504_object_id = ooaofooa_SM_CH_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SEME FROM SM_CH ACROSS R504
 */
void
ooaofooa_SM_CH_R504_Unlink( ooaofooa_SM_SEME * supertype, ooaofooa_SM_CH * subtype )
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
ooaofooa_SM_CH_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_CH * self = (ooaofooa_SM_CH *) instance;
  printf( "INSERT INTO SM_CH VALUES ( %ld,%ld,%ld,%ld,'%s' );\n",
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_CH_container[ ooaofooa_SM_CH_MAX_EXTENT_SIZE ];
static ooaofooa_SM_CH ooaofooa_SM_CH_instances[ ooaofooa_SM_CH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_CH_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_CH_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_CH_instances,
  sizeof( ooaofooa_SM_CH ), 0, ooaofooa_SM_CH_MAX_EXTENT_SIZE
  };


