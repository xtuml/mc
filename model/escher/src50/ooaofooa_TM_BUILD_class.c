/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_BUILD_class.c
 *
 * Class:       build  (TM_BUILD)
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
ooaofooa_TM_BUILD_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_BUILD * self = (ooaofooa_TM_BUILD *) instance;
  /* Initialize application analysis class attributes.  */
  self->package_to_build = Escher_strcpy( self->package_to_build, avlstring[ 1 ] );
  self->package_obj_name = Escher_strcpy( self->package_obj_name, avlstring[ 2 ] );
  self->package_inst_name = Escher_strcpy( self->package_inst_name, avlstring[ 3 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_BUILD_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_BUILD * self = (ooaofooa_TM_BUILD *) instance;
  printf( "INSERT INTO TM_BUILD VALUES ( '%s','%s','%s' );\n",
    ( 0 != self->package_to_build ) ? self->package_to_build : "",
    ( 0 != self->package_obj_name ) ? self->package_obj_name : "",
    ( 0 != self->package_inst_name ) ? self->package_inst_name : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_BUILD_container[ ooaofooa_TM_BUILD_MAX_EXTENT_SIZE ];
static ooaofooa_TM_BUILD ooaofooa_TM_BUILD_instances[ ooaofooa_TM_BUILD_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_BUILD_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_BUILD_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_BUILD_instances,
  sizeof( ooaofooa_TM_BUILD ), 0, ooaofooa_TM_BUILD_MAX_EXTENT_SIZE
  };


