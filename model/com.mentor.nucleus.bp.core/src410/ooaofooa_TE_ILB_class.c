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
  Escher_strcpy( self->file, avlstring[ 1 ] );
  Escher_strcpy( self->define_name, avlstring[ 2 ] );
  Escher_strcpy( self->data_define_name, avlstring[ 3 ] );
  Escher_strcpy( self->interleave_bridge, avlstring[ 4 ] );
  Escher_strcpy( self->interleave_bridge_done, avlstring[ 5 ] );
  Escher_strcpy( self->get_data, avlstring[ 6 ] );
  Escher_strcpy( self->dispatch, avlstring[ 7 ] );
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
    self->file,
    self->define_name,
    self->data_define_name,
    self->interleave_bridge,
    self->interleave_bridge_done,
    self->get_data,
    self->dispatch );
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


