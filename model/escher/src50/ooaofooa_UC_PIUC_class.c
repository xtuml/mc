/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_PIUC_class.c
 *
 * Class:       Participant in Use Case  (UC_PIUC)
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
ooaofooa_UC_PIUC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_UC_PIUC * self = (ooaofooa_UC_PIUC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_UC_PIUC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_UC_PIUC * ooaofooa_UC_PIUC_instance = (ooaofooa_UC_PIUC *) instance;
  ooaofooa_UC_UCC * ooaofooa_UC_UCCrelated_instance1 = ooaofooa_UC_UCC_AnyWhere1( ooaofooa_UC_PIUC_instance->Package_ID );
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance2 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_UC_PIUC_instance->Part_ID );
  if ( ooaofooa_UC_UCCrelated_instance1 && ooaofooa_SQ_Prelated_instance2 ) {
    ooaofooa_UC_PIUC_R1203_Link( ooaofooa_UC_UCCrelated_instance1, ooaofooa_SQ_Prelated_instance2, ooaofooa_UC_PIUC_instance );
  }
}


/*
 * RELATE UC_UCC TO SQ_P ACROSS R1203 USING UC_PIUC
 */
void
ooaofooa_UC_PIUC_R1203_Link( ooaofooa_UC_UCC * aone, ooaofooa_SQ_P * aoth, ooaofooa_UC_PIUC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Package_ID = aone->Package_ID;
  assr->Part_ID = aoth->Part_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->UC_UCC_R1203_is_displayed_in = aone;
  assr->SQ_P_R1203_can_display = aoth;
  Escher_SetInsertElement( &aone->UC_PIUC_R1203, assr );
  aoth->UC_PIUC_R1203 = assr;
}

/*
 * UNRELATE UC_UCC FROM SQ_P ACROSS R1203 USING UC_PIUC
 */
void
ooaofooa_UC_PIUC_R1203_Unlink( ooaofooa_UC_UCC * aone, ooaofooa_SQ_P * aoth, ooaofooa_UC_PIUC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->UC_UCC_R1203_is_displayed_in = 0;
  assr->SQ_P_R1203_can_display = 0;
  Escher_SetRemoveElement( &aone->UC_PIUC_R1203, assr );
  aoth->UC_PIUC_R1203 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_UC_PIUC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_UC_PIUC * self = (ooaofooa_UC_PIUC *) instance;
  printf( "INSERT INTO UC_PIUC VALUES ( %ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_UC_PIUC_container[ ooaofooa_UC_PIUC_MAX_EXTENT_SIZE ];
static ooaofooa_UC_PIUC ooaofooa_UC_PIUC_instances[ ooaofooa_UC_PIUC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_UC_PIUC_extent = {
  {0,0}, {0,0}, &ooaofooa_UC_PIUC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_UC_PIUC_instances,
  sizeof( ooaofooa_UC_PIUC ), 0, ooaofooa_UC_PIUC_MAX_EXTENT_SIZE
  };


