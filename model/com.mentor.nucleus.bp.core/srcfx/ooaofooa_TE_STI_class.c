/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_STI_class.c
 *
 * Class:       String to Integer  (TE_STI)
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
ooaofooa_TE_STI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_STI * self = (ooaofooa_TE_STI *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->Name_key = Escher_strcpy( self->Name_key, avlstring[ 2 ] );
  self->PID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->IsFirst = ( '0' != *avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_STI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_STI * ooaofooa_TE_STI_instance = (ooaofooa_TE_STI *) instance;
  ooaofooa_TE_STI * ooaofooa_TE_STIrelated_instance1 = (ooaofooa_TE_STI *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_STI_instance->PID ];
  if ( ooaofooa_TE_STIrelated_instance1 ) {
    ooaofooa_TE_STI_R2099_Link_precedes( ooaofooa_TE_STIrelated_instance1, ooaofooa_TE_STI_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_STI *
ooaofooa_TE_STI_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_STI * w; 
  Escher_Iterator_s iter_TE_STI;
  Escher_IteratorReset( &iter_TE_STI, &pG_ooaofooa_TE_STI_extent.active );
  while ( (w = (ooaofooa_TE_STI *) Escher_IteratorNext( &iter_TE_STI )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE <left> TE_STI TO <right> TE_STI ACROSS R2099.'succeeds'
 */
void
ooaofooa_TE_STI_R2099_Link_succeeds( ooaofooa_TE_STI * left, ooaofooa_TE_STI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->PID = right->ID;
  left->TE_STI_R2099_succeeds = right; /* SR L1 */
  right->TE_STI_R2099_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_STI FROM <right> TE_STI ACROSS R2099.'succeeds'
 */
void
ooaofooa_TE_STI_R2099_Unlink_succeeds( ooaofooa_TE_STI * left, ooaofooa_TE_STI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->PID = 0;
  left->TE_STI_R2099_succeeds = 0; /* SR U1 */
  right->TE_STI_R2099_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_STI TO <right> TE_STI ACROSS R2099.'precedes'
 */
void
ooaofooa_TE_STI_R2099_Link_precedes( ooaofooa_TE_STI * left, ooaofooa_TE_STI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->PID = left->ID;
  right->TE_STI_R2099_succeeds = left; /* SR L4 */
  left->TE_STI_R2099_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_STI FROM <right> TE_STI ACROSS R2099.'precedes'
 */
void
ooaofooa_TE_STI_R2099_Unlink_precedes( ooaofooa_TE_STI * left, ooaofooa_TE_STI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->PID = 0;
  right->TE_STI_R2099_succeeds = 0; /* SR U4 */
  left->TE_STI_R2099_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_STI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_STI * self = (ooaofooa_TE_STI *) instance;
  printf( "INSERT INTO TE_STI VALUES ( %ld,'%s',%ld,%d );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name_key ) ? self->Name_key : "",
    ((long)self->PID & ESCHER_IDDUMP_MASK),
    self->IsFirst );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_STI_container[ ooaofooa_TE_STI_MAX_EXTENT_SIZE ];
static ooaofooa_TE_STI ooaofooa_TE_STI_instances[ ooaofooa_TE_STI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_STI_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_STI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_STI_instances,
  sizeof( ooaofooa_TE_STI ), 0, ooaofooa_TE_STI_MAX_EXTENT_SIZE
  };


