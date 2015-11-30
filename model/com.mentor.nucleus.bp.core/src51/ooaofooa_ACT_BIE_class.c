/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BIE_class.c
 *
 * Class:       Body in Element  (ACT_BIE)
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
ooaofooa_ACT_BIE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_BIE * self = (ooaofooa_ACT_BIE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Element_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_BIE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BIE * ooaofooa_ACT_BIE_instance = (ooaofooa_ACT_BIE *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BIE_instance->Element_ID ];
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance2 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BIE_instance->Action_ID ];
  if ( ooaofooa_PE_PErelated_instance1 && ooaofooa_ACT_ACTrelated_instance2 ) {
    ooaofooa_ACT_BIE_R640_Link( ooaofooa_ACT_ACTrelated_instance2, ooaofooa_PE_PErelated_instance1, ooaofooa_ACT_BIE_instance );
  }
}


/*
 * RELATE ACT_ACT TO PE_PE ACROSS R640 USING ACT_BIE
 */
void
ooaofooa_ACT_BIE_R640_Link( ooaofooa_ACT_ACT * aone, ooaofooa_PE_PE * aoth, ooaofooa_ACT_BIE * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Action_ID = aone->Action_ID;
  assr->Element_ID = aoth->Element_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->ACT_ACT_R640_has_declared = aone;
  assr->PE_PE_R640_is_declared_in = aoth;
  aone->ACT_BIE_R640 = assr;
  Escher_SetInsertElement( &aoth->ACT_BIE_R640, assr );
}

/*
 * UNRELATE ACT_ACT FROM PE_PE ACROSS R640 USING ACT_BIE
 */
void
ooaofooa_ACT_BIE_R640_Unlink( ooaofooa_ACT_ACT * aone, ooaofooa_PE_PE * aoth, ooaofooa_ACT_BIE * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->ACT_ACT_R640_has_declared = 0;
  assr->PE_PE_R640_is_declared_in = 0;
  aone->ACT_BIE_R640 = 0;
  Escher_SetRemoveElement( &aoth->ACT_BIE_R640, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_BIE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BIE * self = (ooaofooa_ACT_BIE *) instance;
  printf( "INSERT INTO ACT_BIE VALUES ( %ld,%ld );\n",
    ((long)self->Element_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_BIE_container[ ooaofooa_ACT_BIE_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_BIE ooaofooa_ACT_BIE_instances[ ooaofooa_ACT_BIE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_BIE_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_BIE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_BIE_instances,
  sizeof( ooaofooa_ACT_BIE ), 0, ooaofooa_ACT_BIE_MAX_EXTENT_SIZE
  };


