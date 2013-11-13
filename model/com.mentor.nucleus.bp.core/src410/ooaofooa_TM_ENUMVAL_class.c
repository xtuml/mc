/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_ENUMVAL_class.c
 *
 * Class:       Enumerator Value  (TM_ENUMVAL)
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
ooaofooa_TM_ENUMVAL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_ENUMVAL * self = (ooaofooa_TM_ENUMVAL *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->Domain, avlstring[ 1 ] );
  Escher_strcpy( self->enumeration, avlstring[ 2 ] );
  Escher_strcpy( self->enumerator, avlstring[ 3 ] );
  Escher_strcpy( self->value, avlstring[ 4 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_ENUMVAL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_ENUMVAL * self = (ooaofooa_TM_ENUMVAL *) instance;
  printf( "INSERT INTO TM_ENUMVAL VALUES ( '%s','%s','%s','%s' );\n",
    self->Domain,
    self->enumeration,
    self->enumerator,
    self->value );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_ENUMVAL_container[ ooaofooa_TM_ENUMVAL_MAX_EXTENT_SIZE ];
static ooaofooa_TM_ENUMVAL ooaofooa_TM_ENUMVAL_instances[ ooaofooa_TM_ENUMVAL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_ENUMVAL_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_ENUMVAL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_ENUMVAL_instances,
  sizeof( ooaofooa_TM_ENUMVAL ), 0, ooaofooa_TM_ENUMVAL_MAX_EXTENT_SIZE
  };


