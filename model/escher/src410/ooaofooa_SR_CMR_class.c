/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_CMR_class.c
 *
 * Class:       Content Match Result  (SR_CMR)
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
ooaofooa_SR_CMR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SR_CMR * self = (ooaofooa_SR_CMR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->startPosition = Escher_atoi( avlstring[ 2 ] );
  self->length = Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SR_CMR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SR_CMR * self = (ooaofooa_SR_CMR *) instance;
  printf( "INSERT INTO SR_CMR VALUES ( %ld,%d,%d );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->startPosition,
    self->length );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SR_CMR_container[ ooaofooa_SR_CMR_MAX_EXTENT_SIZE ];
static ooaofooa_SR_CMR ooaofooa_SR_CMR_instances[ ooaofooa_SR_CMR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SR_CMR_extent = {
  {0,0}, {0,0}, &ooaofooa_SR_CMR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SR_CMR_instances,
  sizeof( ooaofooa_SR_CMR ), 0, ooaofooa_SR_CMR_MAX_EXTENT_SIZE
  };


