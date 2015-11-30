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
  self->hdr_file_ext = Escher_strcpy( self->hdr_file_ext, avlstring[ 1 ] );
  self->src_file_ext = Escher_strcpy( self->src_file_ext, avlstring[ 2 ] );
  self->obj_file_ext = Escher_strcpy( self->obj_file_ext, avlstring[ 3 ] );
  self->sys_main = Escher_strcpy( self->sys_main, avlstring[ 4 ] );
  self->factory = Escher_strcpy( self->factory, avlstring[ 5 ] );
  self->events = Escher_strcpy( self->events, avlstring[ 6 ] );
  self->nvs = Escher_strcpy( self->nvs, avlstring[ 7 ] );
  self->nvs_bridge = Escher_strcpy( self->nvs_bridge, avlstring[ 8 ] );
  self->sets = Escher_strcpy( self->sets, avlstring[ 9 ] );
  self->types = Escher_strcpy( self->types, avlstring[ 10 ] );
  self->thread = Escher_strcpy( self->thread, avlstring[ 11 ] );
  self->trace = Escher_strcpy( self->trace, avlstring[ 12 ] );
  self->tim = Escher_strcpy( self->tim, avlstring[ 13 ] );
  self->callout = Escher_strcpy( self->callout, avlstring[ 14 ] );
  self->ilb = Escher_strcpy( self->ilb, avlstring[ 15 ] );
  self->persist = Escher_strcpy( self->persist, avlstring[ 16 ] );
  self->xtumlload = Escher_strcpy( self->xtumlload, avlstring[ 17 ] );
  self->interfaces = Escher_strcpy( self->interfaces, avlstring[ 18 ] );
  self->registers = Escher_strcpy( self->registers, avlstring[ 19 ] );
  self->domain_color_path = Escher_strcpy( self->domain_color_path, avlstring[ 20 ] );
  self->domain_source_path = Escher_strcpy( self->domain_source_path, avlstring[ 21 ] );
  self->domain_include_path = Escher_strcpy( self->domain_include_path, avlstring[ 22 ] );
  self->system_source_path = Escher_strcpy( self->system_source_path, avlstring[ 23 ] );
  self->system_include_path = Escher_strcpy( self->system_include_path, avlstring[ 24 ] );
  self->system_color_path = Escher_strcpy( self->system_color_path, avlstring[ 25 ] );
  self->bridge_mark = Escher_strcpy( self->bridge_mark, avlstring[ 26 ] );
  self->system_mark = Escher_strcpy( self->system_mark, avlstring[ 27 ] );
  self->datatype_mark = Escher_strcpy( self->datatype_mark, avlstring[ 28 ] );
  self->event_mark = Escher_strcpy( self->event_mark, avlstring[ 29 ] );
  self->class_mark = Escher_strcpy( self->class_mark, avlstring[ 30 ] );
  self->domain_mark = Escher_strcpy( self->domain_mark, avlstring[ 31 ] );
  self->system_functions_mark = Escher_strcpy( self->system_functions_mark, avlstring[ 32 ] );
  self->arc_path = Escher_strcpy( self->arc_path, avlstring[ 33 ] );
  self->root_path = Escher_strcpy( self->root_path, avlstring[ 34 ] );
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
    ( 0 != self->hdr_file_ext ) ? self->hdr_file_ext : "",
    ( 0 != self->src_file_ext ) ? self->src_file_ext : "",
    ( 0 != self->obj_file_ext ) ? self->obj_file_ext : "",
    ( 0 != self->sys_main ) ? self->sys_main : "",
    ( 0 != self->factory ) ? self->factory : "",
    ( 0 != self->events ) ? self->events : "",
    ( 0 != self->nvs ) ? self->nvs : "",
    ( 0 != self->nvs_bridge ) ? self->nvs_bridge : "",
    ( 0 != self->sets ) ? self->sets : "",
    ( 0 != self->types ) ? self->types : "",
    ( 0 != self->thread ) ? self->thread : "",
    ( 0 != self->trace ) ? self->trace : "",
    ( 0 != self->tim ) ? self->tim : "",
    ( 0 != self->callout ) ? self->callout : "",
    ( 0 != self->ilb ) ? self->ilb : "",
    ( 0 != self->persist ) ? self->persist : "",
    ( 0 != self->xtumlload ) ? self->xtumlload : "",
    ( 0 != self->interfaces ) ? self->interfaces : "",
    ( 0 != self->registers ) ? self->registers : "",
    ( 0 != self->domain_color_path ) ? self->domain_color_path : "",
    ( 0 != self->domain_source_path ) ? self->domain_source_path : "",
    ( 0 != self->domain_include_path ) ? self->domain_include_path : "",
    ( 0 != self->system_source_path ) ? self->system_source_path : "",
    ( 0 != self->system_include_path ) ? self->system_include_path : "",
    ( 0 != self->system_color_path ) ? self->system_color_path : "",
    ( 0 != self->bridge_mark ) ? self->bridge_mark : "",
    ( 0 != self->system_mark ) ? self->system_mark : "",
    ( 0 != self->datatype_mark ) ? self->datatype_mark : "",
    ( 0 != self->event_mark ) ? self->event_mark : "",
    ( 0 != self->class_mark ) ? self->class_mark : "",
    ( 0 != self->domain_mark ) ? self->domain_mark : "",
    ( 0 != self->system_functions_mark ) ? self->system_functions_mark : "",
    ( 0 != self->arc_path ) ? self->arc_path : "",
    ( 0 != self->root_path ) ? self->root_path : "" );
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


