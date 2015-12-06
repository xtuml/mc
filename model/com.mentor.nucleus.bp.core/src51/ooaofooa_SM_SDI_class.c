/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SDI_class.c
 *
 * Class:       Supplemental Data Items  (SM_SDI)
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
ooaofooa_SM_SDI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_SDI * self = (ooaofooa_SM_SDI *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_SDI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_SDI * ooaofooa_SM_SDI_instance = (ooaofooa_SM_SDI *) instance;
  ooaofooa_SM_SUPDT * ooaofooa_SM_SUPDTrelated_instance1 = ooaofooa_SM_SUPDT_AnyWhere1( ooaofooa_SM_SDI_instance->SMspd_ID, ooaofooa_SM_SDI_instance->SM_ID );
  ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDIrelated_instance2 = ooaofooa_SM_EVTDI_AnyWhere1( ooaofooa_SM_SDI_instance->SMedi_ID, ooaofooa_SM_SDI_instance->SM_ID );
  if ( ooaofooa_SM_SUPDTrelated_instance1 && ooaofooa_SM_EVTDIrelated_instance2 ) {
    ooaofooa_SM_SDI_R522_Link( ooaofooa_SM_SUPDTrelated_instance1, ooaofooa_SM_EVTDIrelated_instance2, ooaofooa_SM_SDI_instance );
  }
}


/*
 * RELATE SM_SUPDT TO SM_EVTDI ACROSS R522 USING SM_SDI
 */
void
ooaofooa_SM_SDI_R522_Link( ooaofooa_SM_SUPDT * aone, ooaofooa_SM_EVTDI * aoth, ooaofooa_SM_SDI * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SMspd_ID = aone->SMspd_ID;
  assr->SM_ID = aone->SM_ID;
  assr->SM_ID = aoth->SM_ID;
  assr->SMedi_ID = aoth->SMedi_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->SM_SUPDT_R522_makes_up = aone;
  assr->SM_EVTDI_R522_is_made_up_of = aoth;
  Escher_SetInsertElement( &aone->SM_SDI_R522, assr );
  Escher_SetInsertElement( &aoth->SM_SDI_R522, assr );
}

/*
 * UNRELATE SM_SUPDT FROM SM_EVTDI ACROSS R522 USING SM_SDI
 */
void
ooaofooa_SM_SDI_R522_Unlink( ooaofooa_SM_SUPDT * aone, ooaofooa_SM_EVTDI * aoth, ooaofooa_SM_SDI * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SM_SUPDT_R522_makes_up = 0;
  assr->SM_EVTDI_R522_is_made_up_of = 0;
  Escher_SetRemoveElement( &aone->SM_SDI_R522, assr );
  Escher_SetRemoveElement( &aoth->SM_SDI_R522, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_SDI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_SDI * self = (ooaofooa_SM_SDI *) instance;
  printf( "INSERT INTO SM_SDI VALUES ( %ld,%ld,%ld );\n",
    ((long)self->SMedi_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_SDI_container[ ooaofooa_SM_SDI_MAX_EXTENT_SIZE ];
static ooaofooa_SM_SDI ooaofooa_SM_SDI_instances[ ooaofooa_SM_SDI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_SDI_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_SDI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_SDI_instances,
  sizeof( ooaofooa_SM_SDI ), 0, ooaofooa_SM_SDI_MAX_EXTENT_SIZE
  };


