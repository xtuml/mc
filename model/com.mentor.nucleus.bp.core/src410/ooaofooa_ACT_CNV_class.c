/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_CNV_class.c
 *
 * Class:       Create No Variable  (ACT_CNV)
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
ooaofooa_ACT_CNV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_CNV * self = (ooaofooa_ACT_CNV *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->modelClassKeyLettersLineNumber = Escher_atoi( avlstring[ 3 ] );
  self->modelClassKeyLettersColumn = Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_CNV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_CNV * ooaofooa_ACT_CNV_instance = (ooaofooa_ACT_CNV *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_ACT_CNV_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_ACT_CNV_R672_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_ACT_CNV_instance );
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_CNV_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_CNV_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_CNV_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO ACT_CNV ACROSS R603
 */
void
ooaofooa_ACT_CNV_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_CNV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_CNV->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_CNV[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_CNV_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_CNV ACROSS R603
 */
void
ooaofooa_ACT_CNV_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_CNV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE O_OBJ TO ACT_CNV ACROSS R672
 */
void
ooaofooa_ACT_CNV_R672_Link( ooaofooa_O_OBJ * part, ooaofooa_ACT_CNV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R672_instance_of = part;
  Escher_SetInsertElement( &part->ACT_CNV_R672, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM ACT_CNV ACROSS R672
 */
void
ooaofooa_ACT_CNV_R672_Unlink( ooaofooa_O_OBJ * part, ooaofooa_ACT_CNV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R672_instance_of = 0;
  Escher_SetRemoveElement( &part->ACT_CNV_R672, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_CNV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_CNV * self = (ooaofooa_ACT_CNV *) instance;
  printf( "INSERT INTO ACT_CNV VALUES ( %ld,%ld,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->modelClassKeyLettersLineNumber,
    self->modelClassKeyLettersColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_CNV_container[ ooaofooa_ACT_CNV_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_CNV ooaofooa_ACT_CNV_instances[ ooaofooa_ACT_CNV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_CNV_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_CNV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_CNV_instances,
  sizeof( ooaofooa_ACT_CNV ), 0, ooaofooa_ACT_CNV_MAX_EXTENT_SIZE
  };


