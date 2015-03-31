/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_STRING_class.c
 *
 * Class:       string  (TE_STRING)
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
ooaofooa_TE_STRING_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_STRING * self = (ooaofooa_TE_STRING *) instance;
  /* Initialize application analysis class attributes.  */
  self->memset = Escher_strcpy( self->memset, avlstring[ 1 ] );
  self->memmove = Escher_strcpy( self->memmove, avlstring[ 2 ] );
  self->strcpy = Escher_strcpy( self->strcpy, avlstring[ 3 ] );
  self->stradd = Escher_strcpy( self->stradd, avlstring[ 4 ] );
  self->strlen = Escher_strcpy( self->strlen, avlstring[ 5 ] );
  self->strcmp = Escher_strcpy( self->strcmp, avlstring[ 6 ] );
  self->strget = Escher_strcpy( self->strget, avlstring[ 7 ] );
  self->itoa = Escher_strcpy( self->itoa, avlstring[ 8 ] );
  self->atoi = Escher_strcpy( self->atoi, avlstring[ 9 ] );
  self->max_string_length = Escher_strcpy( self->max_string_length, avlstring[ 10 ] );
  self->debug_buffer_depth = Escher_strcpy( self->debug_buffer_depth, avlstring[ 11 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_STRING_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_STRING * self = (ooaofooa_TE_STRING *) instance;
  printf( "INSERT INTO TE_STRING VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    ( 0 != self->memset ) ? self->memset : "",
    ( 0 != self->memmove ) ? self->memmove : "",
    ( 0 != self->strcpy ) ? self->strcpy : "",
    ( 0 != self->stradd ) ? self->stradd : "",
    ( 0 != self->strlen ) ? self->strlen : "",
    ( 0 != self->strcmp ) ? self->strcmp : "",
    ( 0 != self->strget ) ? self->strget : "",
    ( 0 != self->itoa ) ? self->itoa : "",
    ( 0 != self->atoi ) ? self->atoi : "",
    ( 0 != self->max_string_length ) ? self->max_string_length : "",
    ( 0 != self->debug_buffer_depth ) ? self->debug_buffer_depth : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_STRING_container[ ooaofooa_TE_STRING_MAX_EXTENT_SIZE ];
static ooaofooa_TE_STRING ooaofooa_TE_STRING_instances[ ooaofooa_TE_STRING_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_STRING_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_STRING_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_STRING_instances,
  sizeof( ooaofooa_TE_STRING ), 0, ooaofooa_TE_STRING_MAX_EXTENT_SIZE
  };


