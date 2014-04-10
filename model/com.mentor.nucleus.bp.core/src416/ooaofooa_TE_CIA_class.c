/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CIA_class.c
 *
 * Class:       Class Info Array  (TE_CIA)
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
ooaofooa_TE_CIA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_CIA * self = (ooaofooa_TE_CIA *) instance;
  /* Initialize application analysis class attributes.  */
  self->class_info_name = Escher_strcpy( self->class_info_name, avlstring[ 1 ] );
  self->class_info_type = Escher_strcpy( self->class_info_type, avlstring[ 2 ] );
  self->active_count = Escher_strcpy( self->active_count, avlstring[ 3 ] );
  self->class_count = Escher_strcpy( self->class_count, avlstring[ 4 ] );
  self->count_type = Escher_strcpy( self->count_type, avlstring[ 5 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_CIA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_CIA * self = (ooaofooa_TE_CIA *) instance;
  printf( "INSERT INTO TE_CIA VALUES ( '%s','%s','%s','%s','%s' );\n",
    ( 0 != self->class_info_name ) ? self->class_info_name : "",
    ( 0 != self->class_info_type ) ? self->class_info_type : "",
    ( 0 != self->active_count ) ? self->active_count : "",
    ( 0 != self->class_count ) ? self->class_count : "",
    ( 0 != self->count_type ) ? self->count_type : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_CIA_container[ ooaofooa_TE_CIA_MAX_EXTENT_SIZE ];
static ooaofooa_TE_CIA ooaofooa_TE_CIA_instances[ ooaofooa_TE_CIA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_CIA_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_CIA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_CIA_instances,
  sizeof( ooaofooa_TE_CIA ), 0, ooaofooa_TE_CIA_MAX_EXTENT_SIZE
  };


