.//============================================================================
.// $RCSfile: t.class.extent.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
.//-- 010:20140224 Modified Start (nomura)
.invoke base_arch_prefix = fx_get_base_arch_prefix_name()
.select any te_c from instances of TE_C where (selected.ID == te_class.te_cID)

.invoke objExtent = fx_get_object_extent_size(te_class)
.if (objExtent.result == true)
    .assign max_size_value = objExtent.max_size_value
    .if ( "$r{objExtent.include_file}" != "")
#include "${objExtent.include_file}"	/* ${max_size_value} is defined in this file */
    .end if
#define ${te_class.GeneratedName}_MAX_EXTENT_SIZE ${max_size_value}
.else
#define ${te_class.GeneratedName}_MAX_EXTENT_SIZE ${te_class.MaxExtentSize}
.end if

.//static ${te_set.scope}${te_extent.type} ${te_class.GeneratedName}_class_info;
.invoke classExtent = GetFixedSizeClassExtentInfo(te_class)
${te_set.scope}${te_extent.type} ${classExtent.result};

static ${te_set.scope}${te_set.element_type} * ${te_class.GeneratedName}_container;
static ${te_class.GeneratedName} * ${te_class.GeneratedName}_instance;

.//-- 019:20140328 Add Start (nomura)
int g_${te_class.GeneratedName}_instanceMax = 0;
int g_${te_class.GeneratedName}_instanceNum = 0;
.//-- 019:20140328 Add End (nomura)

/******************************************************************************
 * Initialize object factory services.
 *****************************************************************************/
#include "sys_mechs.h"
void ${te_class.GeneratedName}_FactoryInit()
{
    ${te_class.GeneratedName}_container = (${te_set.scope}${te_set.element_type} *)malloc(sizeof(${te_set.scope}${te_set.element_type})*${te_class.GeneratedName}_MAX_EXTENT_SIZE);
    ${te_class.GeneratedName}_instance = (${te_class.GeneratedName} *)malloc(sizeof(${te_class.GeneratedName})*${te_class.GeneratedName}_MAX_EXTENT_SIZE);

    ${classExtent.result}.active.head = NULL;
    ${classExtent.result}.inactive.head = NULL;
    ${classExtent.result}.container = ${te_class.GeneratedName}_container;
    ${classExtent.result}.pool = (${te_instance.handle})${te_class.GeneratedName}_instance;
    ${classExtent.result}.size = sizeof(${te_class.GeneratedName});
    ${classExtent.result}.initial_state = 1;
    ${classExtent.result}.population = ${te_class.GeneratedName}_MAX_EXTENT_SIZE;

    ${base_arch_prefix.result}_ClassFactoryInit(&${classExtent.result});

}


/******************************************************************************
 * Object Creation Accessor
 *****************************************************************************/
${te_instance.handle} ${te_class.GeneratedName}_Create()
{

    ${te_class.GeneratedName} * ${te_relstore.self_name};
    ${te_set.element_type} * node;
    ${te_instance.handle} instance;
    ${te_set.scope}${te_extent.type} * dci = &${classExtent.result};

    node = dci->${te_extent.inactive}.head;

    /* Check if object pool is empty. */
    if (node == 0) {
        ${base_arch_prefix.result}_UserObjectPoolEmptyCallout("${te_c.Name}", "${te_class.Name}");
        return (${te_instance.handle})0;
    }

    dci->${te_extent.inactive}.head = dci->${te_extent.inactive}.head->next;
    instance = (${te_instance.handle}) node->object;
    if ( 0 != dci->${te_extent.istate_name} ) {
        instance->${te_instance.current_state} = dci->${te_extent.istate_name};
    }
    ${te_set.insert_instance}( &dci->${te_extent.active}, node );

    ${te_relstore.self_name} = (${te_class.GeneratedName} *)instance;

    /* Initialize appication analysis object attributes. */
    .invoke first_attr = fx_get_first_attribute_in_object_model(te_class)
    .assign current_attr = first_attr.result
    .while ( not_empty current_attr )
      .invoke code_needed = fx_generate_code_for_object_attribute(current_attr)
      .if (code_needed.result)
        .//.invoke member_type = GetAttributeCodeGenType(current_attr)
	.invoke member_type = GetAttributeDataType(current_attr)
	.select one te_attr related by current_attr->TE_ATTR[R2033]
        .assign te_dt = member_type.result
	.assign initial_value = te_dt.Initial_Value
	.//
	.// Don't generate anything for "current_attr" attribute.
	.if (te_dt.Core_Typ != 6)
	  .if (te_dt.Core_Typ == 5)
	    .// Core_Typ == 5 is "unique_id"
	    .select any oida related by current_attr->O_OIDA[R105]
	    .if (not_empty oida)
    ${te_relstore.self_name}->${te_attr.GeneratedName} = (${te_dt.ExtName}) self;
	    .else
    ${te_relstore.self_name}->${te_attr.GeneratedName} = ${initial_value};
	    .end if
	  .else
	  .//.print "te_dt Name:${te_dt.Name} Core_Typ:${te_dt.Core_Typ} Initial_Value:${initial_value}"
	    .if (initial_value != "")
	      .if (initial_value != "CTOR")
    ${te_relstore.self_name}->${te_attr.GeneratedName} = ${initial_value};
	      .else
    memset(self->${te_attr.GeneratedName}, 0, sizeof(self->${te_attr.GeneratedName}));
	      .end if
	    .end if
	  .end if
	.end if
      .end if
      .select one next_attr related by current_attr->O_ATTR[R103.'succeeds']
      .assign current_attr = next_attr
    .end while
    .//
    .// AUTO INC‘Î‰ž
    .select one o_obj related by te_class->O_OBJ[R2019]
    .invoke auto_inc = fx_generate_auto_inc_id_execution(o_obj, "self")
    .if (auto_inc.result)
${auto_inc.body}
    .end if
    .//
    .// If active instance, initialize initial state.
    .select one ism related by o_obj->SM_ISM[R518]
    .if ( not_empty ism )
      .invoke current_state = GetInstanceInitialStateEnum(o_obj)
    ${te_relstore.self_name}->${te_instance.current_state} = ${current_state.result};
    .end if

    .// initialzie relationship stotage
    .if (te_relstore.data_init != "")
    /* Initialize relationship storage */
  ${te_relstore.data_init}
    .end if

.//-- 019:20140328 Add Start (nomura)
#ifdef MC3020_MAX_NUM_MEASURE
    g_${te_class.GeneratedName}_instanceNum++;
    g_${te_class.GeneratedName}_instanceMax = ((g_${te_class.GeneratedName}_instanceMax < g_${te_class.GeneratedName}_instanceNum) ? g_${te_class.GeneratedName}_instanceNum : g_${te_class.GeneratedName}_instanceMax);
#endif
.//-- 019:20140328 Add End (nomura)

    return instance;

}
 
/******************************************************************************
 * Object Deletion Accessor
 *****************************************************************************/
void ${te_class.GeneratedName}_Delete(${te_instance.handle} instance)
{
    ${te_class.GeneratedName} * ${te_relstore.self_name};
    ${te_set.element_type} * node;
    ${te_set.scope}${te_extent.type} * dci = &${classExtent.result};

    ${te_relstore.self_name} = (${te_class.GeneratedName} *)instance;

    if ( !${te_relstore.self_name} ) {
        return;
    }

    .//.print "te_relsore: ${te_class.Name} data_init ${te_relstore.data_init}"
    .//.print "te_relsore: ${te_class.Name} data_fini ${te_relstore.data_fini}"
    .if (te_relstore.data_fini != "")
    /* Release relationship storage */
${te_relstore.data_fini}
    .end if
    .invoke default_prefix = fx_get_default_arch_prefix_name()

    node = ${default_prefix.result}_SetRemoveNode(&(dci->${te_extent.active}), instance, &${classExtent.result});
    if ( node ) {
      node->next = dci->${te_extent.inactive}.head;
      dci->${te_extent.inactive}.head = node;
    }

    .// If active instance, initialize initial state.
    .select one ism related by o_obj->SM_ISM[R518]
    .if ( not_empty ism )
      .select any te_eq from instances of TE_EQ
    ${te_relstore.self_name}->${te_instance.current_state} = ${te_eq.cant_happen};
    .end if

    /* Initialize storage to zero. */
    ${default_prefix.result}_memset( instance, 0, dci->size );

.//-- 019:20140328 Add Start (nomura)
#ifdef MC3020_MAX_NUM_MEASURE
    g_${te_class.GeneratedName}_instanceNum--;
#endif
.//-- 019:20140328 Add End (nomura)
}

.//-- 010:20140224 Modified End (nomura)
