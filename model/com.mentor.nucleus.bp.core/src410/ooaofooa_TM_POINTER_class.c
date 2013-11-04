/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_POINTER_class.c
 *
 * Class:       Data Type Pointer  (TM_POINTER)
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
ooaofooa_TM_POINTER_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_POINTER * self = (ooaofooa_TM_POINTER *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->Domain, avlstring[ 1 ] );
  Escher_strcpy( self->DT_name, avlstring[ 2 ] );
  Escher_strcpy( self->pointer_type, avlstring[ 3 ] );
  Escher_strcpy( self->include_file, avlstring[ 4 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_POINTER_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_POINTER * self = (ooaofooa_TM_POINTER *) instance;
  printf( "INSERT INTO TM_POINTER VALUES ( '%s','%s','%s','%s' );\n",
    self->Domain,
    self->DT_name,
    self->pointer_type,
    self->include_file );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_POINTER_container[ ooaofooa_TM_POINTER_MAX_EXTENT_SIZE ];
static ooaofooa_TM_POINTER ooaofooa_TM_POINTER_instances[ ooaofooa_TM_POINTER_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_POINTER_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_POINTER_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_POINTER_instances,
  sizeof( ooaofooa_TM_POINTER ), 0, ooaofooa_TM_POINTER_MAX_EXTENT_SIZE
  };


