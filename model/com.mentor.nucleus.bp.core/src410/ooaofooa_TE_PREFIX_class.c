/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PREFIX_class.c
 *
 * Class:       prefix  (TE_PREFIX)
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
ooaofooa_TE_PREFIX_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_PREFIX * self = (ooaofooa_TE_PREFIX *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->symbol, avlstring[ 1 ] );
  Escher_strcpy( self->symbolsw, avlstring[ 2 ] );
  Escher_strcpy( self->type, avlstring[ 3 ] );
  Escher_strcpy( self->typesw, avlstring[ 4 ] );
  Escher_strcpy( self->define_u, avlstring[ 5 ] );
  Escher_strcpy( self->define_c, avlstring[ 6 ] );
  Escher_strcpy( self->define_csw, avlstring[ 7 ] );
  Escher_strcpy( self->define_usw, avlstring[ 8 ] );
  Escher_strcpy( self->file, avlstring[ 9 ] );
  Escher_strcpy( self->result, avlstring[ 10 ] );
  Escher_strcpy( self->provided_port, avlstring[ 11 ] );
  Escher_strcpy( self->required_port, avlstring[ 12 ] );
  Escher_strcpy( self->channel, avlstring[ 13 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_PREFIX_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_PREFIX * self = (ooaofooa_TE_PREFIX *) instance;
  printf( "INSERT INTO TE_PREFIX VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    self->symbol,
    self->symbolsw,
    self->type,
    self->typesw,
    self->define_u,
    self->define_c,
    self->define_csw,
    self->define_usw,
    self->file,
    self->result,
    self->provided_port,
    self->required_port,
    self->channel );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_PREFIX_container[ ooaofooa_TE_PREFIX_MAX_EXTENT_SIZE ];
static ooaofooa_TE_PREFIX ooaofooa_TE_PREFIX_instances[ ooaofooa_TE_PREFIX_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_PREFIX_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_PREFIX_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_PREFIX_instances,
  sizeof( ooaofooa_TE_PREFIX ), 0, ooaofooa_TE_PREFIX_MAX_EXTENT_SIZE
  };


