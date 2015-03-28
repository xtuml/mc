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
  self->symbol = Escher_strcpy( self->symbol, avlstring[ 1 ] );
  self->symbolsw = Escher_strcpy( self->symbolsw, avlstring[ 2 ] );
  self->type = Escher_strcpy( self->type, avlstring[ 3 ] );
  self->typesw = Escher_strcpy( self->typesw, avlstring[ 4 ] );
  self->define_u = Escher_strcpy( self->define_u, avlstring[ 5 ] );
  self->define_c = Escher_strcpy( self->define_c, avlstring[ 6 ] );
  self->define_csw = Escher_strcpy( self->define_csw, avlstring[ 7 ] );
  self->define_usw = Escher_strcpy( self->define_usw, avlstring[ 8 ] );
  self->file = Escher_strcpy( self->file, avlstring[ 9 ] );
  self->result = Escher_strcpy( self->result, avlstring[ 10 ] );
  self->provided_port = Escher_strcpy( self->provided_port, avlstring[ 11 ] );
  self->required_port = Escher_strcpy( self->required_port, avlstring[ 12 ] );
  self->channel = Escher_strcpy( self->channel, avlstring[ 13 ] );
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
    ( 0 != self->symbol ) ? self->symbol : "",
    ( 0 != self->symbolsw ) ? self->symbolsw : "",
    ( 0 != self->type ) ? self->type : "",
    ( 0 != self->typesw ) ? self->typesw : "",
    ( 0 != self->define_u ) ? self->define_u : "",
    ( 0 != self->define_c ) ? self->define_c : "",
    ( 0 != self->define_csw ) ? self->define_csw : "",
    ( 0 != self->define_usw ) ? self->define_usw : "",
    ( 0 != self->file ) ? self->file : "",
    ( 0 != self->result ) ? self->result : "",
    ( 0 != self->provided_port ) ? self->provided_port : "",
    ( 0 != self->required_port ) ? self->required_port : "",
    ( 0 != self->channel ) ? self->channel : "" );
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


