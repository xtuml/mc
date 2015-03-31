/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_UDT_class.c
 *
 * Class:       User Data Type  (S_UDT)
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
ooaofooa_S_UDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_UDT * self = (ooaofooa_S_UDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->CDT_DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Gen_Type = Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_UDT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_UDT * ooaofooa_S_UDT_instance = (ooaofooa_S_UDT *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_UDT_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_UDT_R17_Link( ooaofooa_S_DTrelated_instance1, ooaofooa_S_UDT_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_UDT_instance->CDT_DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_UDT_R18_Link_defines_domain_of( ooaofooa_S_DTrelated_instance1, ooaofooa_S_UDT_instance );
  }
  }
}


/*
 * RELATE S_DT TO S_UDT ACROSS R17
 */
void
ooaofooa_S_UDT_R17_Link( ooaofooa_S_DT * supertype, ooaofooa_S_UDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for S_UDT->S_DT[R17] */
  subtype->S_DT_R17 = supertype;
  /* Optimized linkage for S_DT->S_UDT[R17] */
  supertype->R17_subtype = subtype;
  supertype->R17_object_id = ooaofooa_S_UDT_CLASS_NUMBER;
}


/*
 * UNRELATE S_DT FROM S_UDT ACROSS R17
 */
void
ooaofooa_S_UDT_R17_Unlink( ooaofooa_S_DT * supertype, ooaofooa_S_UDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->S_DT_R17 = 0;
  supertype->R17_subtype = 0;
  supertype->R17_object_id = 0;
}


/*
 * RELATE S_DT TO S_UDT ACROSS R18
 */
void
ooaofooa_S_UDT_R18_Link_defines_domain_of( ooaofooa_S_DT * part, ooaofooa_S_UDT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CDT_DT_ID = part->DT_ID;
  form->S_DT_R18_are_defined_within = part;
  Escher_SetInsertElement( &part->S_UDT_R18_defines_domain_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM S_UDT ACROSS R18
 */
void
ooaofooa_S_UDT_R18_Unlink_defines_domain_of( ooaofooa_S_DT * part, ooaofooa_S_UDT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CDT_DT_ID = 0;
  form->S_DT_R18_are_defined_within = 0;
  Escher_SetRemoveElement( &part->S_UDT_R18_defines_domain_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_UDT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_UDT * self = (ooaofooa_S_UDT *) instance;
  printf( "INSERT INTO S_UDT VALUES ( %ld,%ld,%d );\n",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->CDT_DT_ID & ESCHER_IDDUMP_MASK),
    self->Gen_Type );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_UDT_container[ ooaofooa_S_UDT_MAX_EXTENT_SIZE ];
static ooaofooa_S_UDT ooaofooa_S_UDT_instances[ ooaofooa_S_UDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_UDT_extent = {
  {0,0}, {0,0}, &ooaofooa_S_UDT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_UDT_instances,
  sizeof( ooaofooa_S_UDT ), 0, ooaofooa_S_UDT_MAX_EXTENT_SIZE
  };


