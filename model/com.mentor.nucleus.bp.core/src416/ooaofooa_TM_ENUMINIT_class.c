/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_ENUMINIT_class.c
 *
 * Class:       Enumeration Init  (TM_ENUMINIT)
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
ooaofooa_TM_ENUMINIT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_ENUMINIT * self = (ooaofooa_TM_ENUMINIT *) instance;
  /* Initialize application analysis class attributes.  */
  self->Domain = Escher_strcpy( self->Domain, avlstring[ 1 ] );
  self->enumeration = Escher_strcpy( self->enumeration, avlstring[ 2 ] );
  self->value = Escher_strcpy( self->value, avlstring[ 3 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_ENUMINIT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_ENUMINIT * self = (ooaofooa_TM_ENUMINIT *) instance;
  printf( "INSERT INTO TM_ENUMINIT VALUES ( '%s','%s','%s' );\n",
    ( 0 != self->Domain ) ? self->Domain : "",
    ( 0 != self->enumeration ) ? self->enumeration : "",
    ( 0 != self->value ) ? self->value : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_ENUMINIT_container[ ooaofooa_TM_ENUMINIT_MAX_EXTENT_SIZE ];
static ooaofooa_TM_ENUMINIT ooaofooa_TM_ENUMINIT_instances[ ooaofooa_TM_ENUMINIT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_ENUMINIT_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_ENUMINIT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_ENUMINIT_instances,
  sizeof( ooaofooa_TM_ENUMINIT ), 0, ooaofooa_TM_ENUMINIT_MAX_EXTENT_SIZE
  };


