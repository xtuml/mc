/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PERSIST_class.c
 *
 * Class:       persistence  (TE_PERSIST)
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
ooaofooa_TE_PERSIST_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_PERSIST * self = (ooaofooa_TE_PERSIST *) instance;
  /* Initialize application analysis class attributes.  */
  self->persist_file = Escher_strcpy( self->persist_file, avlstring[ 1 ] );
  self->class_union = Escher_strcpy( self->class_union, avlstring[ 2 ] );
  self->instance_cache_depth = Escher_strcpy( self->instance_cache_depth, avlstring[ 3 ] );
  self->link_cache_depth = Escher_strcpy( self->link_cache_depth, avlstring[ 4 ] );
  self->check_mark = Escher_strcpy( self->check_mark, avlstring[ 5 ] );
  self->post_link = Escher_strcpy( self->post_link, avlstring[ 6 ] );
  self->link_type_name = Escher_strcpy( self->link_type_name, avlstring[ 7 ] );
  self->link_type_type = Escher_strcpy( self->link_type_type, avlstring[ 8 ] );
  self->factory_init = Escher_strcpy( self->factory_init, avlstring[ 9 ] );
  self->commit = Escher_strcpy( self->commit, avlstring[ 10 ] );
  self->restore = Escher_strcpy( self->restore, avlstring[ 11 ] );
  self->remove = Escher_strcpy( self->remove, avlstring[ 12 ] );
  self->domainnum_name = Escher_strcpy( self->domainnum_name, avlstring[ 13 ] );
  self->domainnum_type = Escher_strcpy( self->domainnum_type, avlstring[ 14 ] );
  self->classnum_name = Escher_strcpy( self->classnum_name, avlstring[ 15 ] );
  self->classnum_type = Escher_strcpy( self->classnum_type, avlstring[ 16 ] );
  self->index_name = Escher_strcpy( self->index_name, avlstring[ 17 ] );
  self->index_type = Escher_strcpy( self->index_type, avlstring[ 18 ] );
  self->instid_type = Escher_strcpy( self->instid_type, avlstring[ 19 ] );
  self->instid_name = Escher_strcpy( self->instid_name, avlstring[ 20 ] );
  self->dirty_type = Escher_strcpy( self->dirty_type, avlstring[ 21 ] );
  self->dirty_name = Escher_strcpy( self->dirty_name, avlstring[ 22 ] );
  self->dirty_dirty = Escher_atoi( avlstring[ 23 ] );
  self->dirty_clean = Escher_atoi( avlstring[ 24 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_PERSIST_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_PERSIST * self = (ooaofooa_TE_PERSIST *) instance;
  printf( "INSERT INTO TE_PERSIST VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s',%d,%d );\n",
    ( 0 != self->persist_file ) ? self->persist_file : "",
    ( 0 != self->class_union ) ? self->class_union : "",
    ( 0 != self->instance_cache_depth ) ? self->instance_cache_depth : "",
    ( 0 != self->link_cache_depth ) ? self->link_cache_depth : "",
    ( 0 != self->check_mark ) ? self->check_mark : "",
    ( 0 != self->post_link ) ? self->post_link : "",
    ( 0 != self->link_type_name ) ? self->link_type_name : "",
    ( 0 != self->link_type_type ) ? self->link_type_type : "",
    ( 0 != self->factory_init ) ? self->factory_init : "",
    ( 0 != self->commit ) ? self->commit : "",
    ( 0 != self->restore ) ? self->restore : "",
    ( 0 != self->remove ) ? self->remove : "",
    ( 0 != self->domainnum_name ) ? self->domainnum_name : "",
    ( 0 != self->domainnum_type ) ? self->domainnum_type : "",
    ( 0 != self->classnum_name ) ? self->classnum_name : "",
    ( 0 != self->classnum_type ) ? self->classnum_type : "",
    ( 0 != self->index_name ) ? self->index_name : "",
    ( 0 != self->index_type ) ? self->index_type : "",
    ( 0 != self->instid_type ) ? self->instid_type : "",
    ( 0 != self->instid_name ) ? self->instid_name : "",
    ( 0 != self->dirty_type ) ? self->dirty_type : "",
    ( 0 != self->dirty_name ) ? self->dirty_name : "",
    self->dirty_dirty,
    self->dirty_clean );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_PERSIST_container[ ooaofooa_TE_PERSIST_MAX_EXTENT_SIZE ];
static ooaofooa_TE_PERSIST ooaofooa_TE_PERSIST_instances[ ooaofooa_TE_PERSIST_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_PERSIST_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_PERSIST_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_PERSIST_instances,
  sizeof( ooaofooa_TE_PERSIST ), 0, ooaofooa_TE_PERSIST_MAX_EXTENT_SIZE
  };


