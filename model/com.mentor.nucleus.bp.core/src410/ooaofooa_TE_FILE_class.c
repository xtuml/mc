/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_FILE_class.c
 *
 * Class:       file  (TE_FILE)
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
ooaofooa_TE_FILE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_FILE * self = (ooaofooa_TE_FILE *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->hdr_file_ext, avlstring[ 1 ] );
  Escher_strcpy( self->src_file_ext, avlstring[ 2 ] );
  Escher_strcpy( self->obj_file_ext, avlstring[ 3 ] );
  Escher_strcpy( self->sys_main, avlstring[ 4 ] );
  Escher_strcpy( self->factory, avlstring[ 5 ] );
  Escher_strcpy( self->events, avlstring[ 6 ] );
  Escher_strcpy( self->nvs, avlstring[ 7 ] );
  Escher_strcpy( self->nvs_bridge, avlstring[ 8 ] );
  Escher_strcpy( self->sets, avlstring[ 9 ] );
  Escher_strcpy( self->types, avlstring[ 10 ] );
  Escher_strcpy( self->thread, avlstring[ 11 ] );
  Escher_strcpy( self->trace, avlstring[ 12 ] );
  Escher_strcpy( self->tim, avlstring[ 13 ] );
  Escher_strcpy( self->callout, avlstring[ 14 ] );
  Escher_strcpy( self->ilb, avlstring[ 15 ] );
  Escher_strcpy( self->persist, avlstring[ 16 ] );
  Escher_strcpy( self->xtumlload, avlstring[ 17 ] );
  Escher_strcpy( self->interfaces, avlstring[ 18 ] );
  Escher_strcpy( self->registers, avlstring[ 19 ] );
  Escher_strcpy( self->domain_color_path, avlstring[ 20 ] );
  Escher_strcpy( self->domain_source_path, avlstring[ 21 ] );
  Escher_strcpy( self->domain_include_path, avlstring[ 22 ] );
  Escher_strcpy( self->system_source_path, avlstring[ 23 ] );
  Escher_strcpy( self->system_include_path, avlstring[ 24 ] );
  Escher_strcpy( self->system_color_path, avlstring[ 25 ] );
  Escher_strcpy( self->bridge_mark, avlstring[ 26 ] );
  Escher_strcpy( self->system_mark, avlstring[ 27 ] );
  Escher_strcpy( self->datatype_mark, avlstring[ 28 ] );
  Escher_strcpy( self->event_mark, avlstring[ 29 ] );
  Escher_strcpy( self->class_mark, avlstring[ 30 ] );
  Escher_strcpy( self->domain_mark, avlstring[ 31 ] );
  Escher_strcpy( self->system_functions_mark, avlstring[ 32 ] );
  Escher_strcpy( self->arc_path, avlstring[ 33 ] );
  Escher_strcpy( self->root_path, avlstring[ 34 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_FILE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_FILE * self = (ooaofooa_TE_FILE *) instance;
  printf( "INSERT INTO TE_FILE VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    self->hdr_file_ext,
    self->src_file_ext,
    self->obj_file_ext,
    self->sys_main,
    self->factory,
    self->events,
    self->nvs,
    self->nvs_bridge,
    self->sets,
    self->types,
    self->thread,
    self->trace,
    self->tim,
    self->callout,
    self->ilb,
    self->persist,
    self->xtumlload,
    self->interfaces,
    self->registers,
    self->domain_color_path,
    self->domain_source_path,
    self->domain_include_path,
    self->system_source_path,
    self->system_include_path,
    self->system_color_path,
    self->bridge_mark,
    self->system_mark,
    self->datatype_mark,
    self->event_mark,
    self->class_mark,
    self->domain_mark,
    self->system_functions_mark,
    self->arc_path,
    self->root_path );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_FILE_container[ ooaofooa_TE_FILE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_FILE ooaofooa_TE_FILE_instances[ ooaofooa_TE_FILE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_FILE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_FILE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_FILE_instances,
  sizeof( ooaofooa_TE_FILE ), 0, ooaofooa_TE_FILE_MAX_EXTENT_SIZE
  };


