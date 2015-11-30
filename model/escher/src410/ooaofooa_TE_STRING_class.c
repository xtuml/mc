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
  Escher_strcpy( self->memset, avlstring[ 1 ] );
  Escher_strcpy( self->memmove, avlstring[ 2 ] );
  Escher_strcpy( self->strcpy, avlstring[ 3 ] );
  Escher_strcpy( self->stradd, avlstring[ 4 ] );
  Escher_strcpy( self->strlen, avlstring[ 5 ] );
  Escher_strcpy( self->strcmp, avlstring[ 6 ] );
  Escher_strcpy( self->strget, avlstring[ 7 ] );
  Escher_strcpy( self->itoa, avlstring[ 8 ] );
  Escher_strcpy( self->atoi, avlstring[ 9 ] );
  Escher_strcpy( self->max_string_length, avlstring[ 10 ] );
  Escher_strcpy( self->debug_buffer_depth, avlstring[ 11 ] );
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
    self->memset,
    self->memmove,
    self->strcpy,
    self->stradd,
    self->strlen,
    self->strcmp,
    self->strget,
    self->itoa,
    self->atoi,
    self->max_string_length,
    self->debug_buffer_depth );
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


