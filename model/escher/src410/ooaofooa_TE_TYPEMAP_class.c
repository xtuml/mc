/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TYPEMAP_class.c
 *
 * Class:       type map  (TE_TYPEMAP)
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
ooaofooa_TE_TYPEMAP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_TYPEMAP * self = (ooaofooa_TE_TYPEMAP *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->instance_index_name, avlstring[ 1 ] );
  Escher_strcpy( self->instance_index_type, avlstring[ 2 ] );
  Escher_strcpy( self->object_size_name, avlstring[ 3 ] );
  Escher_strcpy( self->object_size_type, avlstring[ 4 ] );
  Escher_strcpy( self->object_number_name, avlstring[ 5 ] );
  Escher_strcpy( self->object_number_type, avlstring[ 6 ] );
  Escher_strcpy( self->state_number_name, avlstring[ 7 ] );
  Escher_strcpy( self->state_number_type, avlstring[ 8 ] );
  Escher_strcpy( self->domain_number_name, avlstring[ 9 ] );
  Escher_strcpy( self->domain_number_type, avlstring[ 10 ] );
  Escher_strcpy( self->event_number_name, avlstring[ 11 ] );
  Escher_strcpy( self->event_number_type, avlstring[ 12 ] );
  Escher_strcpy( self->event_priority_name, avlstring[ 13 ] );
  Escher_strcpy( self->event_priority_type, avlstring[ 14 ] );
  Escher_strcpy( self->event_flags_name, avlstring[ 15 ] );
  Escher_strcpy( self->event_flags_type, avlstring[ 16 ] );
  Escher_strcpy( self->poly_return_name, avlstring[ 17 ] );
  Escher_strcpy( self->poly_return_type, avlstring[ 18 ] );
  Escher_strcpy( self->SEM_cell_name, avlstring[ 19 ] );
  Escher_strcpy( self->SEM_cell_type, avlstring[ 20 ] );
  Escher_strcpy( self->structured_data_types, avlstring[ 21 ] );
  Escher_strcpy( self->enumeration_info, avlstring[ 22 ] );
  Escher_strcpy( self->user_supplied_data_types, avlstring[ 23 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_TYPEMAP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_TYPEMAP * self = (ooaofooa_TE_TYPEMAP *) instance;
  printf( "INSERT INTO TE_TYPEMAP VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    self->instance_index_name,
    self->instance_index_type,
    self->object_size_name,
    self->object_size_type,
    self->object_number_name,
    self->object_number_type,
    self->state_number_name,
    self->state_number_type,
    self->domain_number_name,
    self->domain_number_type,
    self->event_number_name,
    self->event_number_type,
    self->event_priority_name,
    self->event_priority_type,
    self->event_flags_name,
    self->event_flags_type,
    self->poly_return_name,
    self->poly_return_type,
    self->SEM_cell_name,
    self->SEM_cell_type,
    self->structured_data_types,
    self->enumeration_info,
    self->user_supplied_data_types );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_TYPEMAP_container[ ooaofooa_TE_TYPEMAP_MAX_EXTENT_SIZE ];
static ooaofooa_TE_TYPEMAP ooaofooa_TE_TYPEMAP_instances[ ooaofooa_TE_TYPEMAP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_TYPEMAP_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_TYPEMAP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_TYPEMAP_instances,
  sizeof( ooaofooa_TE_TYPEMAP ), 0, ooaofooa_TE_TYPEMAP_MAX_EXTENT_SIZE
  };


