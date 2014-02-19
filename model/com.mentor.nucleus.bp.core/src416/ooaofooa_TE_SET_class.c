/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SET_class.c
 *
 * Class:       set  (TE_SET)
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
ooaofooa_TE_SET_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SET * self = (ooaofooa_TE_SET *) instance;
  /* Initialize application analysis class attributes.  */
  self->number_of_containoids = Escher_strcpy( self->number_of_containoids, avlstring[ 1 ] );
  self->iterator_class_name = Escher_strcpy( self->iterator_class_name, avlstring[ 2 ] );
  self->factory = Escher_strcpy( self->factory, avlstring[ 3 ] );
  self->init = Escher_strcpy( self->init, avlstring[ 4 ] );
  self->copy = Escher_strcpy( self->copy, avlstring[ 5 ] );
  self->clear = Escher_strcpy( self->clear, avlstring[ 6 ] );
  self->insert_element = Escher_strcpy( self->insert_element, avlstring[ 7 ] );
  self->insert_instance = Escher_strcpy( self->insert_instance, avlstring[ 8 ] );
  self->insert_block = Escher_strcpy( self->insert_block, avlstring[ 9 ] );
  self->remove_element = Escher_strcpy( self->remove_element, avlstring[ 10 ] );
  self->remove_instance = Escher_strcpy( self->remove_instance, avlstring[ 11 ] );
  self->element_count = Escher_strcpy( self->element_count, avlstring[ 12 ] );
  self->contains = Escher_strcpy( self->contains, avlstring[ 13 ] );
  self->equality = Escher_strcpy( self->equality, avlstring[ 14 ] );
  self->emptiness = Escher_strcpy( self->emptiness, avlstring[ 15 ] );
  self->get_any = Escher_strcpy( self->get_any, avlstring[ 16 ] );
  self->iterator_reset = Escher_strcpy( self->iterator_reset, avlstring[ 17 ] );
  self->iterator_next = Escher_strcpy( self->iterator_next, avlstring[ 18 ] );
  self->base_class = Escher_strcpy( self->base_class, avlstring[ 19 ] );
  self->element_type = Escher_strcpy( self->element_type, avlstring[ 20 ] );
  self->scope = Escher_strcpy( self->scope, avlstring[ 21 ] );
  self->module = Escher_strcpy( self->module, avlstring[ 22 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_SET_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SET * self = (ooaofooa_TE_SET *) instance;
  printf( "INSERT INTO TE_SET VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    ( 0 != self->number_of_containoids ) ? self->number_of_containoids : "",
    ( 0 != self->iterator_class_name ) ? self->iterator_class_name : "",
    ( 0 != self->factory ) ? self->factory : "",
    ( 0 != self->init ) ? self->init : "",
    ( 0 != self->copy ) ? self->copy : "",
    ( 0 != self->clear ) ? self->clear : "",
    ( 0 != self->insert_element ) ? self->insert_element : "",
    ( 0 != self->insert_instance ) ? self->insert_instance : "",
    ( 0 != self->insert_block ) ? self->insert_block : "",
    ( 0 != self->remove_element ) ? self->remove_element : "",
    ( 0 != self->remove_instance ) ? self->remove_instance : "",
    ( 0 != self->element_count ) ? self->element_count : "",
    ( 0 != self->contains ) ? self->contains : "",
    ( 0 != self->equality ) ? self->equality : "",
    ( 0 != self->emptiness ) ? self->emptiness : "",
    ( 0 != self->get_any ) ? self->get_any : "",
    ( 0 != self->iterator_reset ) ? self->iterator_reset : "",
    ( 0 != self->iterator_next ) ? self->iterator_next : "",
    ( 0 != self->base_class ) ? self->base_class : "",
    ( 0 != self->element_type ) ? self->element_type : "",
    ( 0 != self->scope ) ? self->scope : "",
    ( 0 != self->module ) ? self->module : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SET_container[ ooaofooa_TE_SET_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SET ooaofooa_TE_SET_instances[ ooaofooa_TE_SET_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SET_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SET_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SET_instances,
  sizeof( ooaofooa_TE_SET ), 0, ooaofooa_TE_SET_MAX_EXTENT_SIZE
  };


