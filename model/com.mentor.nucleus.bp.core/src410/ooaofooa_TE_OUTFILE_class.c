/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_OUTFILE_class.c
 *
 * Class:       output file  (TE_OUTFILE)
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
ooaofooa_TE_OUTFILE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_OUTFILE * self = (ooaofooa_TE_OUTFILE *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  Escher_strcpy( self->body, avlstring[ 3 ] );
  self->Order = Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_OUTFILE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_OUTFILE * self = (ooaofooa_TE_OUTFILE *) instance;
  printf( "INSERT INTO TE_OUTFILE VALUES ( %ld,'%s','%s',%d );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->body,
    self->Order );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_OUTFILE_container[ ooaofooa_TE_OUTFILE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_OUTFILE ooaofooa_TE_OUTFILE_instances[ ooaofooa_TE_OUTFILE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_OUTFILE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_OUTFILE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_OUTFILE_instances,
  sizeof( ooaofooa_TE_OUTFILE ), 0, ooaofooa_TE_OUTFILE_MAX_EXTENT_SIZE
  };


