/*----------------------------------------------------------------------------
 * File:  ooaofooa_G_EIS_class.c
 *
 * Class:       Global Element in System  (G_EIS)
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
ooaofooa_G_EIS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_G_EIS * self = (ooaofooa_G_EIS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Element_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_G_EIS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_G_EIS * ooaofooa_G_EIS_instance = (ooaofooa_G_EIS *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_G_EIS_instance->Element_ID ];
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance2 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_G_EIS_instance->Sys_ID ];
  if ( ooaofooa_PE_PErelated_instance1 && ooaofooa_S_SYSrelated_instance2 ) {
    ooaofooa_G_EIS_R9100_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_S_SYSrelated_instance2, ooaofooa_G_EIS_instance );
  }
}


/*
 * RELATE PE_PE TO S_SYS ACROSS R9100 USING G_EIS
 */
void
ooaofooa_G_EIS_R9100_Link( ooaofooa_PE_PE * aone, ooaofooa_S_SYS * aoth, ooaofooa_G_EIS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Element_ID = aone->Element_ID;
  assr->Sys_ID = aoth->Sys_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->PE_PE_R9100 = aone;
  assr->S_SYS_R9100 = aoth;
  Escher_SetInsertElement( &aone->G_EIS_R9100, assr );
  Escher_SetInsertElement( &aoth->G_EIS_R9100, assr );
}

/*
 * UNRELATE PE_PE FROM S_SYS ACROSS R9100 USING G_EIS
 */
void
ooaofooa_G_EIS_R9100_Unlink( ooaofooa_PE_PE * aone, ooaofooa_S_SYS * aoth, ooaofooa_G_EIS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->PE_PE_R9100 = 0;
  assr->S_SYS_R9100 = 0;
  Escher_SetRemoveElement( &aone->G_EIS_R9100, assr );
  Escher_SetRemoveElement( &aoth->G_EIS_R9100, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_G_EIS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_G_EIS * self = (ooaofooa_G_EIS *) instance;
  printf( "INSERT INTO G_EIS VALUES ( %ld,%ld );\n",
    ((long)self->Element_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_G_EIS_container[ ooaofooa_G_EIS_MAX_EXTENT_SIZE ];
static ooaofooa_G_EIS ooaofooa_G_EIS_instances[ ooaofooa_G_EIS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_G_EIS_extent = {
  {0,0}, {0,0}, &ooaofooa_G_EIS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_G_EIS_instances,
  sizeof( ooaofooa_G_EIS ), 0, ooaofooa_G_EIS_MAX_EXTENT_SIZE
  };


