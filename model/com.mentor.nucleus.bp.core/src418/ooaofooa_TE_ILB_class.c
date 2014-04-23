/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ILB_class.c
 *
 * Class:       interleaved bridge  (TE_ILB)
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
ooaofooa_TE_ILB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_ILB * self = (ooaofooa_TE_ILB *) instance;
  /* Initialize application analysis class attributes.  */
  self->file = Escher_strcpy( self->file, avlstring[ 1 ] );
  self->define_name = Escher_strcpy( self->define_name, avlstring[ 2 ] );
  self->data_define_name = Escher_strcpy( self->data_define_name, avlstring[ 3 ] );
  self->interleave_bridge = Escher_strcpy( self->interleave_bridge, avlstring[ 4 ] );
  self->interleave_bridge_done = Escher_strcpy( self->interleave_bridge_done, avlstring[ 5 ] );
  self->get_data = Escher_strcpy( self->get_data, avlstring[ 6 ] );
  self->dispatch = Escher_strcpy( self->dispatch, avlstring[ 7 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_ILB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_ILB * self = (ooaofooa_TE_ILB *) instance;
  printf( "INSERT INTO TE_ILB VALUES ( '%s','%s','%s','%s','%s','%s','%s' );\n",
    ( 0 != self->file ) ? self->file : "",
    ( 0 != self->define_name ) ? self->define_name : "",
    ( 0 != self->data_define_name ) ? self->data_define_name : "",
    ( 0 != self->interleave_bridge ) ? self->interleave_bridge : "",
    ( 0 != self->interleave_bridge_done ) ? self->interleave_bridge_done : "",
    ( 0 != self->get_data ) ? self->get_data : "",
    ( 0 != self->dispatch ) ? self->dispatch : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_ILB_container[ ooaofooa_TE_ILB_MAX_EXTENT_SIZE ];
static ooaofooa_TE_ILB ooaofooa_TE_ILB_instances[ ooaofooa_TE_ILB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_ILB_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_ILB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_ILB_instances,
  sizeof( ooaofooa_TE_ILB ), 0, ooaofooa_TE_ILB_MAX_EXTENT_SIZE
  };


