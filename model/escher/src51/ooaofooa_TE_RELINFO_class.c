/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_RELINFO_class.c
 *
 * Class:       relationship information  (TE_RELINFO)
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
ooaofooa_TE_RELINFO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_RELINFO * self = (ooaofooa_TE_RELINFO *) instance;
  /* Initialize application analysis class attributes.  */
  self->obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->related_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->rel = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->rto = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->rgo = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->oir = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->multiplicity = Escher_atoi( avlstring[ 7 ] );
  self->gen_link_methods = ( '0' != *avlstring[ 8 ] );
  self->rel_phrase = Escher_strcpy( self->rel_phrase, avlstring[ 9 ] );
  self->is_formalizer = ( '0' != *avlstring[ 10 ] );
  self->is_supertype = ( '0' != *avlstring[ 11 ] );
  self->generate_subtype = ( '0' != *avlstring[ 12 ] );
  self->gen_declaration = ( '0' != *avlstring[ 13 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_RELINFO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_RELINFO * self = (ooaofooa_TE_RELINFO *) instance;
  printf( "INSERT INTO TE_RELINFO VALUES ( %ld,%ld,%ld,%ld,%ld,%ld,%d,%d,'%s',%d,%d,%d,%d );\n",
    ((long)self->obj & ESCHER_IDDUMP_MASK),
    ((long)self->related_obj & ESCHER_IDDUMP_MASK),
    ((long)self->rel & ESCHER_IDDUMP_MASK),
    ((long)self->rto & ESCHER_IDDUMP_MASK),
    ((long)self->rgo & ESCHER_IDDUMP_MASK),
    ((long)self->oir & ESCHER_IDDUMP_MASK),
    self->multiplicity,
    self->gen_link_methods,
    ( 0 != self->rel_phrase ) ? self->rel_phrase : "",
    self->is_formalizer,
    self->is_supertype,
    self->generate_subtype,
    self->gen_declaration );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_RELINFO_container[ ooaofooa_TE_RELINFO_MAX_EXTENT_SIZE ];
static ooaofooa_TE_RELINFO ooaofooa_TE_RELINFO_instances[ ooaofooa_TE_RELINFO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_RELINFO_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_RELINFO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_RELINFO_instances,
  sizeof( ooaofooa_TE_RELINFO ), 0, ooaofooa_TE_RELINFO_MAX_EXTENT_SIZE
  };


