/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_PRECISION_class.c
 *
 * Class:       Data Type Precision  (TM_PRECISION)
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
ooaofooa_TM_PRECISION_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_PRECISION * self = (ooaofooa_TM_PRECISION *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->Domain, avlstring[ 1 ] );
  Escher_strcpy( self->DT_name, avlstring[ 2 ] );
  Escher_strcpy( self->xName, avlstring[ 3 ] );
  Escher_strcpy( self->initial_value, avlstring[ 4 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_PRECISION_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_PRECISION * self = (ooaofooa_TM_PRECISION *) instance;
  printf( "INSERT INTO TM_PRECISION VALUES ( '%s','%s','%s','%s' );\n",
    self->Domain,
    self->DT_name,
    self->xName,
    self->initial_value );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_PRECISION_container[ ooaofooa_TM_PRECISION_MAX_EXTENT_SIZE ];
static ooaofooa_TM_PRECISION ooaofooa_TM_PRECISION_instances[ ooaofooa_TM_PRECISION_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_PRECISION_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_PRECISION_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_PRECISION_instances,
  sizeof( ooaofooa_TM_PRECISION ), 0, ooaofooa_TM_PRECISION_MAX_EXTENT_SIZE
  };


