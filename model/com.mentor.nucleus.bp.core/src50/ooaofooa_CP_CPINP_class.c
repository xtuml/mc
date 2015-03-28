/*----------------------------------------------------------------------------
 * File:  ooaofooa_CP_CPINP_class.c
 *
 * Class:       Component Package in Package  (CP_CPINP)
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
ooaofooa_CP_CPINP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CP_CPINP * self = (ooaofooa_CP_CPINP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Parent_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CP_CPINP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CP_CPINP * ooaofooa_CP_CPINP_instance = (ooaofooa_CP_CPINP *) instance;
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_CP_CPINP_instance->Parent_Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_CP_CPINP_R4600_Link_may_nest( ooaofooa_CP_CPrelated_instance1, ooaofooa_CP_CPINP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CP_CPINP *
ooaofooa_CP_CPINP_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_CP_CPINP * w; 
  Escher_Iterator_s iter_CP_CPINP;
  Escher_IteratorReset( &iter_CP_CPINP, &pG_ooaofooa_CP_CPINP_extent.active );
  while ( (w = (ooaofooa_CP_CPINP *) Escher_IteratorNext( &iter_CP_CPINP )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CP_CP TO CP_CPINP ACROSS R4600
 */
void
ooaofooa_CP_CPINP_R4600_Link_may_nest( ooaofooa_CP_CP * part, ooaofooa_CP_CPINP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = part->Package_ID;
  form->CP_CP_R4600_may_be_nested_in = part;
  Escher_SetInsertElement( &part->CP_CPINP_R4600_may_nest, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM CP_CPINP ACROSS R4600
 */
void
ooaofooa_CP_CPINP_R4600_Unlink_may_nest( ooaofooa_CP_CP * part, ooaofooa_CP_CPINP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = 0;
  form->CP_CP_R4600_may_be_nested_in = 0;
  Escher_SetRemoveElement( &part->CP_CPINP_R4600_may_nest, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CP_CPINP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CP_CPINP * self = (ooaofooa_CP_CPINP *) instance;
  printf( "INSERT INTO CP_CPINP VALUES ( %ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Parent_Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CP_CPINP_container[ ooaofooa_CP_CPINP_MAX_EXTENT_SIZE ];
static ooaofooa_CP_CPINP ooaofooa_CP_CPINP_instances[ ooaofooa_CP_CPINP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CP_CPINP_extent = {
  {0,0}, {0,0}, &ooaofooa_CP_CPINP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CP_CPINP_instances,
  sizeof( ooaofooa_CP_CPINP ), 0, ooaofooa_CP_CPINP_MAX_EXTENT_SIZE
  };


