/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_CON_class.c
 *
 * Class:       Condition  (BP_CON)
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
ooaofooa_BP_CON_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_BP_CON * self = (ooaofooa_BP_CON *) instance;
  /* Initialize application analysis class attributes.  */
  self->Breakpoint_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Expression = Escher_strcpy( self->Expression, avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_BP_CON_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_BP_CON * ooaofooa_BP_CON_instance = (ooaofooa_BP_CON *) instance;
  ooaofooa_BP_BP * ooaofooa_BP_BPrelated_instance1 = (ooaofooa_BP_BP *) Escher_instance_cache[ (intptr_t) ooaofooa_BP_CON_instance->Breakpoint_ID ];
  if ( ooaofooa_BP_BPrelated_instance1 ) {
    ooaofooa_BP_CON_R3100_Link_halts_based_on( ooaofooa_BP_BPrelated_instance1, ooaofooa_BP_CON_instance );
  }
}


/*
 * RELATE BP_BP TO BP_CON ACROSS R3100
 */
void
ooaofooa_BP_CON_R3100_Link_halts_based_on( ooaofooa_BP_BP * part, ooaofooa_BP_CON * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Breakpoint_ID = part->Breakpoint_ID;
  form->BP_BP_R3100_sets_halt_criteria_for = part;
  part->BP_CON_R3100_halts_based_on = form;
}

/*
 * UNRELATE BP_BP FROM BP_CON ACROSS R3100
 */
void
ooaofooa_BP_CON_R3100_Unlink_halts_based_on( ooaofooa_BP_BP * part, ooaofooa_BP_CON * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Breakpoint_ID = 0;
  form->BP_BP_R3100_sets_halt_criteria_for = 0;
  part->BP_CON_R3100_halts_based_on = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_BP_CON_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_BP_CON * self = (ooaofooa_BP_CON *) instance;
  printf( "INSERT INTO BP_CON VALUES ( %ld,'%s' );\n",
    ((long)self->Breakpoint_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Expression ) ? self->Expression : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_BP_CON_container[ ooaofooa_BP_CON_MAX_EXTENT_SIZE ];
static ooaofooa_BP_CON ooaofooa_BP_CON_instances[ ooaofooa_BP_CON_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_BP_CON_extent = {
  {0,0}, {0,0}, &ooaofooa_BP_CON_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_BP_CON_instances,
  sizeof( ooaofooa_BP_CON ), 0, ooaofooa_BP_CON_MAX_EXTENT_SIZE
  };


