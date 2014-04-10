/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CI_class.c
 *
 * Class:       Component Instance  (TE_CI)
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
ooaofooa_TE_CI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_CI * self = (ooaofooa_TE_CI *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  Escher_strcpy( self->ClassifierName, avlstring[ 3 ] );
  Escher_strcpy( self->template_parameter_values, avlstring[ 4 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->cl_icId = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_CI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_CI * ooaofooa_TE_CI_instance = (ooaofooa_TE_CI *) instance;
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_CI_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_CI_R2008_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_CI_instance );
  }
  {
  ooaofooa_CL_IC * ooaofooa_CL_ICrelated_instance1 = ooaofooa_CL_IC_AnyWhere1( ooaofooa_TE_CI_instance->cl_icId );
  if ( ooaofooa_CL_ICrelated_instance1 ) {
    ooaofooa_TE_CI_R2009_Link( ooaofooa_CL_ICrelated_instance1, ooaofooa_TE_CI_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_CI *
ooaofooa_TE_CI_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_CI * w; 
  Escher_Iterator_s iter_TE_CI;
  Escher_IteratorReset( &iter_TE_CI, &pG_ooaofooa_TE_CI_extent.active );
  while ( (w = (ooaofooa_TE_CI *) Escher_IteratorNext( &iter_TE_CI )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TE_C TO TE_CI ACROSS R2008
 */
void
ooaofooa_TE_CI_R2008_Link( ooaofooa_TE_C * part, ooaofooa_TE_CI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2008 = part;
  Escher_SetInsertElement( &part->TE_CI_R2008, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_C FROM TE_CI ACROSS R2008
 */
void
ooaofooa_TE_CI_R2008_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_CI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2008 = 0;
  Escher_SetRemoveElement( &part->TE_CI_R2008, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CL_IC TO TE_CI ACROSS R2009
 */
void
ooaofooa_TE_CI_R2009_Link( ooaofooa_CL_IC * part, ooaofooa_TE_CI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->cl_icId = part->Id;
  form->CL_IC_R2009 = part;
  part->TE_CI_R2009 = form;
}

/*
 * UNRELATE CL_IC FROM TE_CI ACROSS R2009
 */
void
ooaofooa_TE_CI_R2009_Unlink( ooaofooa_CL_IC * part, ooaofooa_TE_CI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->cl_icId = 0;
  form->CL_IC_R2009 = 0;
  part->TE_CI_R2009 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_CI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_CI * self = (ooaofooa_TE_CI *) instance;
  printf( "INSERT INTO TE_CI VALUES ( %ld,'%s','%s','%s',%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->ClassifierName,
    self->template_parameter_values,
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    ((long)self->cl_icId & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_CI_container[ ooaofooa_TE_CI_MAX_EXTENT_SIZE ];
static ooaofooa_TE_CI ooaofooa_TE_CI_instances[ ooaofooa_TE_CI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_CI_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_CI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_CI_instances,
  sizeof( ooaofooa_TE_CI ), 0, ooaofooa_TE_CI_MAX_EXTENT_SIZE
  };


