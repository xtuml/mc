/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_PIC_class.c
 *
 * Class:       Participant in Communication  (COMM_PIC)
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
ooaofooa_COMM_PIC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_COMM_PIC * self = (ooaofooa_COMM_PIC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_COMM_PIC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_COMM_PIC * ooaofooa_COMM_PIC_instance = (ooaofooa_COMM_PIC *) instance;
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_COMM_PIC_instance->Part_ID );
  ooaofooa_COMM_COMM * ooaofooa_COMM_COMMrelated_instance2 = ooaofooa_COMM_COMM_AnyWhere1( ooaofooa_COMM_PIC_instance->Package_ID );
  if ( ooaofooa_SQ_Prelated_instance1 && ooaofooa_COMM_COMMrelated_instance2 ) {
    ooaofooa_COMM_PIC_R1126_Link( ooaofooa_COMM_COMMrelated_instance2, ooaofooa_SQ_Prelated_instance1, ooaofooa_COMM_PIC_instance );
  }
}


/*
 * RELATE COMM_COMM TO SQ_P ACROSS R1126 USING COMM_PIC
 */
void
ooaofooa_COMM_PIC_R1126_Link( ooaofooa_COMM_COMM * aone, ooaofooa_SQ_P * aoth, ooaofooa_COMM_PIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Package_ID = aone->Package_ID;
  assr->Part_ID = aoth->Part_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->COMM_COMM_R1126_is_displayed_in = aone;
  assr->SQ_P_R1126_can_display = aoth;
  Escher_SetInsertElement( &aone->COMM_PIC_R1126, assr );
  aoth->COMM_PIC_R1126 = assr;
}

/*
 * UNRELATE COMM_COMM FROM SQ_P ACROSS R1126 USING COMM_PIC
 */
void
ooaofooa_COMM_PIC_R1126_Unlink( ooaofooa_COMM_COMM * aone, ooaofooa_SQ_P * aoth, ooaofooa_COMM_PIC * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->COMM_COMM_R1126_is_displayed_in = 0;
  assr->SQ_P_R1126_can_display = 0;
  Escher_SetRemoveElement( &aone->COMM_PIC_R1126, assr );
  aoth->COMM_PIC_R1126 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_COMM_PIC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_COMM_PIC * self = (ooaofooa_COMM_PIC *) instance;
  printf( "INSERT INTO COMM_PIC VALUES ( %ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Part_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_COMM_PIC_container[ ooaofooa_COMM_PIC_MAX_EXTENT_SIZE ];
static ooaofooa_COMM_PIC ooaofooa_COMM_PIC_instances[ ooaofooa_COMM_PIC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_COMM_PIC_extent = {
  {0,0}, {0,0}, &ooaofooa_COMM_PIC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_COMM_PIC_instances,
  sizeof( ooaofooa_COMM_PIC ), 0, ooaofooa_COMM_PIC_MAX_EXTENT_SIZE
  };


