/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SRW_class.c
 *
 * Class:       Select Related Where  (ACT_SRW)
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
ooaofooa_ACT_SRW_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_SRW * self = (ooaofooa_ACT_SRW *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Where_Clause_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_SRW_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SRW * ooaofooa_ACT_SRW_instance = (ooaofooa_ACT_SRW *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_SRW_instance->Where_Clause_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_SRW_R611_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_SRW_instance );
  }
  {
  ooaofooa_ACT_SEL * ooaofooa_ACT_SELrelated_instance1 = ooaofooa_ACT_SEL_AnyWhere1( ooaofooa_ACT_SRW_instance->Statement_ID );
  if ( ooaofooa_ACT_SELrelated_instance1 ) {
    ooaofooa_ACT_SRW_R664_Link( ooaofooa_ACT_SELrelated_instance1, ooaofooa_ACT_SRW_instance );
  }
  }
}


/*
 * RELATE V_VAL TO ACT_SRW ACROSS R611
 */
void
ooaofooa_ACT_SRW_R611_Link( ooaofooa_V_VAL * part, ooaofooa_ACT_SRW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Where_Clause_Value_ID = part->Value_ID;
  form->V_VAL_R611_where_clause = part;
  part->ACT_SRW_R611 = form;
}

/*
 * UNRELATE V_VAL FROM ACT_SRW ACROSS R611
 */
void
ooaofooa_ACT_SRW_R611_Unlink( ooaofooa_V_VAL * part, ooaofooa_ACT_SRW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Where_Clause_Value_ID = 0;
  form->V_VAL_R611_where_clause = 0;
  part->ACT_SRW_R611 = 0;
}

/*
 * RELATE ACT_SEL TO ACT_SRW ACROSS R664
 */
void
ooaofooa_ACT_SRW_R664_Link( ooaofooa_ACT_SEL * supertype, ooaofooa_ACT_SRW * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_SRW->ACT_SEL[R664] */
  subtype->ACT_SEL_R664 = supertype;
  /* Optimized linkage for ACT_SEL->ACT_SRW[R664] */
  supertype->R664_subtype = subtype;
  supertype->R664_object_id = ooaofooa_ACT_SRW_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SEL FROM ACT_SRW ACROSS R664
 */
void
ooaofooa_ACT_SRW_R664_Unlink( ooaofooa_ACT_SEL * supertype, ooaofooa_ACT_SRW * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SEL_R664 = 0;
  supertype->R664_subtype = 0;
  supertype->R664_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_SRW_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SRW * self = (ooaofooa_ACT_SRW *) instance;
  printf( "INSERT INTO ACT_SRW VALUES ( %ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Where_Clause_Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_SRW_container[ ooaofooa_ACT_SRW_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_SRW ooaofooa_ACT_SRW_instances[ ooaofooa_ACT_SRW_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_SRW_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_SRW_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_SRW_instances,
  sizeof( ooaofooa_ACT_SRW ), 0, ooaofooa_ACT_SRW_MAX_EXTENT_SIZE
  };


