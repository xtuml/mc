/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_CIN_class.c
 *
 * Class:       Component Instance Container  (I_CIN)
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
ooaofooa_I_CIN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_CIN * self = (ooaofooa_I_CIN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Container_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_CIN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_CIN * ooaofooa_I_CIN_instance = (ooaofooa_I_CIN *) instance;
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_CIN_instance->Container_ID ];
  if ( ooaofooa_I_EXErelated_instance1 ) {
    ooaofooa_I_CIN_R2974_Link( ooaofooa_I_EXErelated_instance1, ooaofooa_I_CIN_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_CIN *
ooaofooa_I_CIN_AnyWhere1( Escher_UniqueID_t w_Container_ID )
{
  ooaofooa_I_CIN * w; 
  Escher_Iterator_s iter_I_CIN;
  Escher_IteratorReset( &iter_I_CIN, &pG_ooaofooa_I_CIN_extent.active );
  while ( (w = (ooaofooa_I_CIN *) Escher_IteratorNext( &iter_I_CIN )) != 0 ) {
    if ( w->Container_ID == w_Container_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE I_EXE TO I_CIN ACROSS R2974
 */
void
ooaofooa_I_CIN_R2974_Link( ooaofooa_I_EXE * part, ooaofooa_I_CIN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Container_ID = part->Execution_Engine_ID;
  form->I_EXE_R2974 = part;
  part->I_CIN_R2974 = form;
}

/*
 * UNRELATE I_EXE FROM I_CIN ACROSS R2974
 */
void
ooaofooa_I_CIN_R2974_Unlink( ooaofooa_I_EXE * part, ooaofooa_I_CIN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->I_EXE_R2974 = 0;
  part->I_CIN_R2974 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_CIN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_CIN * self = (ooaofooa_I_CIN *) instance;
  printf( "INSERT INTO I_CIN VALUES ( %ld );\n",
    ((long)self->Container_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_CIN_container[ ooaofooa_I_CIN_MAX_EXTENT_SIZE ];
static ooaofooa_I_CIN ooaofooa_I_CIN_instances[ ooaofooa_I_CIN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_CIN_extent = {
  {0,0}, {0,0}, &ooaofooa_I_CIN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_CIN_instances,
  sizeof( ooaofooa_I_CIN ), 0, ooaofooa_I_CIN_MAX_EXTENT_SIZE
  };


