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
  Escher_strcpy( self->number_of_containoids, avlstring[ 1 ] );
  Escher_strcpy( self->iterator_class_name, avlstring[ 2 ] );
  Escher_strcpy( self->factory, avlstring[ 3 ] );
  Escher_strcpy( self->init, avlstring[ 4 ] );
  Escher_strcpy( self->copy, avlstring[ 5 ] );
  Escher_strcpy( self->clear, avlstring[ 6 ] );
  Escher_strcpy( self->insert_element, avlstring[ 7 ] );
  Escher_strcpy( self->insert_instance, avlstring[ 8 ] );
  Escher_strcpy( self->insert_block, avlstring[ 9 ] );
  Escher_strcpy( self->remove_element, avlstring[ 10 ] );
  Escher_strcpy( self->remove_instance, avlstring[ 11 ] );
  Escher_strcpy( self->element_count, avlstring[ 12 ] );
  Escher_strcpy( self->contains, avlstring[ 13 ] );
  Escher_strcpy( self->equality, avlstring[ 14 ] );
  Escher_strcpy( self->emptiness, avlstring[ 15 ] );
  Escher_strcpy( self->get_any, avlstring[ 16 ] );
  Escher_strcpy( self->iterator_reset, avlstring[ 17 ] );
  Escher_strcpy( self->iterator_next, avlstring[ 18 ] );
  Escher_strcpy( self->base_class, avlstring[ 19 ] );
  Escher_strcpy( self->element_type, avlstring[ 20 ] );
  Escher_strcpy( self->scope, avlstring[ 21 ] );
  Escher_strcpy( self->module, avlstring[ 22 ] );
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
    self->number_of_containoids,
    self->iterator_class_name,
    self->factory,
    self->init,
    self->copy,
    self->clear,
    self->insert_element,
    self->insert_instance,
    self->insert_block,
    self->remove_element,
    self->remove_instance,
    self->element_count,
    self->contains,
    self->equality,
    self->emptiness,
    self->get_any,
    self->iterator_reset,
    self->iterator_next,
    self->base_class,
    self->element_type,
    self->scope,
    self->module );
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


