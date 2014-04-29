---

Copyright 2012-2014 Mentor Graphics Corp.  All Rights Reserved. 

---

# Support Customized MCMC
### xtUML Project Implementation Note  


1.  Abstract
------------
The model compiler has been extended by the customer.  The archetypes
used to build the mcmc executable have been changed.  This means that
mcmc cannot be used to speed up the translation.  However, the models
are so big that they do not translate without the use of mcmc.  So, we
must rebuild mcmc using the updated archetypes.

The changes are not compatible with the automated build of mcmc.  There
are problems with the way the meta-model has been extended.  All of these
issues need to be resolved to create a customized mcmc.

2.  History
-----------
None.

3.  Document References
-----------------------
[1] Issues 51 <https://github.com/xtuml/mc/issues/51>
    Support Customized MCMC  
[2] CQ dts0101048380 FX customization mcmc  

6. Work Required
----------------
6.1     Create customer branch of model compiler.  
6.2     Remove extra files that were not actually being used by the model
        compiler.  
6.2.1   q.assoc.pseudoformalize.arc  
6.2.2   q.mc3020.arc  
6.2.3   q.mc_metamodel.populate.arc  
6.2.4   q.parameters.sort.arc  
6.2.5   t.domain_enums.h  
6.2.6   t.ee_ext.h  
6.2.7   t.smt_sr.declare_ref.c  
6.2.8   t.smt_sr.declare_set.c  
6.2.9   t.smt_sr.subtypecheck.c  
6.2.10  fx.class.extent.c  
6.2.11  fx_class.extent.c  
6.2.12  t.domfacade.c  
6.3     Upgrade archetypes to the 4.1.6 version of the model compiler.  
6.3.1   There are several performance enhancements and bug fixes in the
        version 4.1.6 archetypes.  
6.4     Correct and update the schema (xtumlmc_schema.sql).  
6.4.1   Two classes were modified in the schema that are part of the 
        xtUML metamodel.  In the past, we allowed modification of the 
        xtUML metamodel.  Now, we do not allow this.  It is required to
        update the "Extension" version of the classes.  
6.4.2   The modifications made to S_DT and O_OBJ were incorrect.  Attributes
        added to O_OBJ were duplicates of attributes added to TE_CLASS.
        Attributes added to S_DT need to use a marking class (TM_DTMACRO).  
6.4.3   Use only TE_DT and TE_CLASS in these extensions.  Use TE_EE, TE_C,
        TE_BRG, TE_EE, RE_FILE, TE_PO and TE_STI as is.  
6.4.3.1 Add TM_DTMACRO, change marking to create it and update sys_populate
        to see it.  Care must be taken to intialize these in an order that
        preserves the existing attribute setting.  IsExternalMacro must be
        set early to prevent dimensions from being added to values.  The
        remaining TM_DTMACRO attributes should be set late.  
6.4.3.2 Simply remove the added attributes to O_OBJ; they are not used.  
6.5     Update the model of mc3020.  
6.5.1   Add TE_STI.  Add TE_STIDESCRIP to use as a Descrip filed buffer.  
6.5.2   Update TE_BRG, TE_C, TE_DT, TE_EE, TE_FILE and TE_PO.  
6.6     Fix archetypes that changed metamodel classes (S_DT and O_OBJ).  
6.6.1   Move accesses to new attributes in S_DT to TE_DT.  
6.6.2   Move accesses to new attribute in O_OBJ to TE_CLASS.  
6.7     Convert archetypes to follow the mcmc rules.  The primary reason for
        changes for the "convert" step is to make the RSL (archetypes
        language) look like OAL.  This is because we will convert it to OAL
        to make mcmc.  
6.7.1   Separate functions that run during OAL translation from those
        that run later.  This reduces the work of converting the functions
        that run during OAL translation and must follow the mcmc rules.  
6.7.1.1 Move functions from frag_util.arc to fx_util.arc and fx_util2.arc.
        fx_util.arc will be included into mcmc; fx_util2.arc will not.
        Remove fx_generate_auto_inc_id_definision.  It is not used.  
6.7.2   Provide return type comments next to each function that returns
        a value.  These comments are used by the programs that convert
        the RSL into OAL.  
6.7.3   Name all instance references and instance reference sets
        according to the naming convention that imbeds the type of the
        variable in the name.  Follow the form <prefix><lower case key
        letters>.  Add 's' to the end of instance reference set variable
        names.  
6.7.4   Return only a single value from functions and use 'result'
        (attr_result) to carry the return value.  
6.7.5   Eliminate the use of "frag_ref" style parameters.  These are not
        supported in OAL and cannot be supported in mcmc.  
6.7.6   Add relate and unrelate OAL statements as comments around the RSL
        referential attribute setting/resetting lines.  When initializing
        or resetting an attribute with type UNIQUE_ID, use 00 instead of
        0 to help the conversion code know which lines are part of
        relate/unrelate statements.  
6.7.7   Use string arithmetic in functions rather than using "${...}"
        templates whenever possible.  This makes better OAL and a faster
        model compiler.  
6.7.8   Marking
6.7.8.1 Marking is done before sys_populate and after sys_populate.  
6.7.8.2 The marking done before sys_populate is called "pass 1" and
        must not access TE_* classes, because they have not been
        created yet.  
6.7.8.3 The marking done after sys_populate is called "pass 2".  These
        marks can access TE_* class instances.  
6.7.8.4 mcmc compatible marking must only perform invocations.  Other
        RSL in the marking file will not be executed.  
6.7.8.5 All marking files must be named with ".mark" extensions.  
6.7.8.6 All marking files must exist in the "gen" folder.  
6.7.8.7 mcmc will search the marking files for marking invocations and
        invoke the compiled version of the marking function in the mcmc
        executable.  
6.7.8.8 Marks that can be called in "pass 1" must have an if statement
        in m.system.arc in the first half of the mark_all function.  Marks
        that can be called in "pass 2" must have an if statement in the
        second half of the mark_all function.  
6.8     Teach customer to follow mcmc programming conventions.  
6.8.1   This will allow mcmc to be built quickly and mostly automatically.  
6.8.2   Deliver programming style guidelines in a document.  
6.8.3   Change ".clr" files to ".mark" files to be compatible with mcmc.  
6.9     Run mcmc creation scripts against updated model and archetypes.  

7. Implementation Comments
--------------------------
7.1     The general steps to the mcmc creation are upgrade [6.3],
        correct [6.4, 6.5, 6.6], convert [6.7], create new mcmc [6.9].  
7.1.1   Mentor must perform the create new mcmc step.  
7.1.2   Customer has the option to perform correct, convert and upgrade.  
7.2     Possible work scenarios.  
7.2.1   Mentor upgrade, correct, convert and create new mcmc.  
7.2.2   Customer correct.  Mentor upgrade, convert and create new mcmc.  
7.2.3   Customer correct and convert.  Mentor upgrade and create new mcmc.  
7.2.4   Customer upgrade, correct and convert.  Mentor create new mcmc.  


8. Unit Test
------------
8.1     Run mcmc on customer model.  Deliver to customer for testing.

9. Code Changes
---------------
Repository: xtuml/mc
Branch name:  51_fx

<pre>
 arc/c/q.component.arc          |  10 ++-
 arc/c/q.components.arc         |  10 ++-
 arc/c/q.sys.singletons.arc     |  23 ++++-
 arc/c/sys.arc                  |  77 +++++++++++++---
 arc/c/t.component.message.c    |  22 +++++
 arc/c/t.component.messages.c   |  14 ++-
 arc/c/t.component.module.h     |  17 +++-
 arc/c/t.domain.function.h      |  14 +++
 arc/frag_util.arc              | 160 +++++++++++++++++++++++++++++++++
 arc/fx_bridge_skel.arc         |  52 +++++++++++
 arc/fx_domain_debug.arc        | 146 +++++++++++++++++++++++++++++++
 arc/fx_domain_facade.arc       | 204 ++++++++++++++++++++++++++++++++++++++++++
 arc/fx_domain_init.arc         | 197 +++++++++++++++++++++++++++++++++++++++++
 arc/fx_domain_mech.arc         | 438 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arc/fx_init.arc                |   1 +
 arc/fx_smt_create_instance.arc |  10 +++
 arc/fx_smt_delete_instance.arc |  14 +++
 arc/fx_util.arc                | 360 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arc/m.bridge.arc               |  85 ++++++++++++++++++
 arc/m.datatype.arc             |  48 ++++++++++
 arc/m.domain.arc               |  59 ++++++++++++-
 arc/m.system.arc               |  17 ++++
 arc/q.class.arc                |  88 ++++++++++++++++++-
 arc/q.class.events.arc         |  14 ++-
 arc/q.class.factory.arc        |   4 +
 arc/q.class.link.arc           | 231 +++++++++++++++++++++++++++++++++++++++++++++++-
 arc/q.datatype.arc             |  17 ++++
 arc/q.domain.bridge.arc        |   8 +-
 arc/q.domain.bridges.arc       |  41 +++++----
 arc/q.domain.classes.arc       |   9 ++
 arc/q.domain.enums.arc         |  17 ++++
 arc/q.domain.sync.arc          |  47 +++++++++-
 arc/q.main.arc                 |  16 ++++
 arc/q.names.arc                |  31 +++++++
 arc/q.parameters.arc           |   4 +-
 arc/q.parm.sort.arc            | 355 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------
 arc/q.smt.generate.arc         | 121 +++++++++++++++++++++++--
 arc/q.sys.populate.arc         | 146 ++++++++++++++++++++++++++++---
 arc/q.utils.arc                |   7 +-
 arc/q.val.translate.arc        |  63 ++++++++++---
 arc/t.class.attribute.init.c   |  23 ++++-
 arc/t.class.extent.c           | 222 +++++++++++++++++++++++++++++++++++++++-------
 arc/t.class.extent.h           |  25 ++++--
 arc/t.class.idispatch.c        |  62 ++++++++++---
 arc/t.class.sem.state_names.c  |   4 +-
 arc/t.class.set_refs.c         |   9 ++
 arc/t.domain.function.c        |  15 +++-
 arc/t.domain_classes.h         |  10 ++-
 arc/t.domain_datatypes.h       |   5 +-
 arc/t.domain_enums.h           |  25 ++++++
 arc/t.domain_init.h            |   9 +-
 arc/t.ee_ext.h                 |  39 +++++++++
 arc/t.smt.bridge.c             |  10 +++
 arc/t.smt.c                    |   4 +-
 arc/t.smt.control.c            |   3 +-
 doc/notes/51_fx_int.md         | 175 ++++++++++++++++++++++++++++++++++++
 schema/sql/xtumlmc_schema.sql  |  85 ++++++++++++++++--
 57 files changed, 3735 insertions(+), 187 deletions(-)

 c/q.component.arc          + small bit of code
 c/q.components.arc         + change of include path
 c/q.sys.singletons.arc   .+* some pathing changes and prefix change.  Note, _ch was changed.  There
                              is a dependence on xtumlmc_build here.
 c/sys.arc                  + Base code is excluded and new code included.  However, only after mcmc.
 c/t.component.message.c    + non-mcmc enhancement
 c/t.component.messages.c   + non-mcmc enhancement
 c/t.component.module.h     + non-mcmc enhancement
 c/t.domain.function.h      + non-mcmc enhancement
 c/t.sys_sets.h             + 4.1.6 upgrade
 c/t.sys_types.h            + 4.1.6 upgrade
 frag_util.arc            .+* lots of added functions, one modified function
                              Maybe we can keep functions here that are needed by mcmc, move the others
                              to fx_util and move the fx_util functions needed by mcmc here.
                              Moved non-mcmc functions out to fx_util.arc.
 fx_bridge_skel.arc         + non-mcmc enhancement
 fx_domain_debug.arc        + non-mcmc enhancement
 fx_domain_facade.arc       + non-mcmc enhancement
 fx_domain_init.arc         + non-mcmc enhancement
 fx_domain_mech.arc         + non-mcmc enhancement
 fx_init.arc                + non-mcmc enhancement
 fx_smt_create_instance.arc+* OAL enhancement
                              I suggest we modify the existing template (t.smt.create_instance.c).
 fx_smt_delete_instance.arc+* OAL enhancement
                              I suggest we modify the existing template (t.smt.delete_instance.c).
 fx_util.arc              ?+* Lots of new functions some from old MC technology and are duplicates.
                              Fix bug ".end" -> ".end if".
                              Fix a missing ".end if" bug.
                              Fix bug in SetDomainSelectionNodeMaxNumber using incorrect parameter name.
                              Added new/custom functions (from frag_util.arc).
 m.bridge.arc              +* new marking functions
                              This file makes only one call (to fx_is_exist_real_func) which could
                              be changed into a simple query:
                              .select one te_brg related by te_ee->TE_BRG[R2089] where ( selected.IsRealFunc )
 m.datatype.arc            +* new marking but INCORRECT (using meta-model)
 m.domain.arc             .+* new and updated marking functions
                              These look fine.  Later, the master functions should be enhanced.
 m.system.arc            ?.+* linking in new marking functions
                              FXAT needs to understand marking that occurs in "pass 1" and in "pass 2".
                              fxdatatype is trying to make marking calls in "pass 1".
                              fxcolor is trying to make marking calls in "pass 2".
                              Removed call to MarkDomainMaxEventNumber.  It is not defined.  
 q.class.arc                + non-mcmc enhancement
 q.class.events.arc         + Why is this change?  Did the first way fail?  Is it not standard?
                              We will use the master version of this file.
 q.class.factory.arc        + non-mcmc enhancement
 q.class.link.arc           + big non-mcmc change
                              Move GetObjectClassName from q.names.arc to here.
 q.class.poly.arc           + 4.1.6 upgrade
 q.class.sem.arc            + 4.1.6 upgrade
 q.datatype.arc           .+* one added function
                              Added return type to new function here.
 q.domain.bridge.arc        + non-mcmc enhancement
 q.domain.bridges.arc       + non-mcmc enhancement
 q.domain.classes.arc       + non-mcmc enhancement
 q.domain.enums.arc         + new non-mcmc enhancement
 q.domain.sync.arc          + non-mcmc enhancement
 q.main.arc               .+* new marking invocations
                              We need to add the marking invocations to the correct "pass" (1 or 2).
                              We should either add a new *.mark file, or add the marking invocations
                              to the appropriate existing mark files.
                              xtumlmc_build greps all *.mark files.  So, we can add fxdatatype.mark
                              and fxcolor.mark to the /gen folder.
 q.names.arc              .+* new functions that could be moved to a non-mcmc file
                              Remove incomplete/unused function GetUnrelateMethodName with bug.
                              Move GetObjectClassName to q.class.link.arc.
                              This file now matches master.
 q.parameters.arc           * added a parameter to an invocation
 q.parm.sort.arc          ?+* I cannot tell what is happening here.  Remove use of frag_ref.
                              Fix bug in CreateFirstLinkParameterValue.  ".if" has no ".end if".
                              Removed use of frag_ref.
                              Next, we need to eliminate the ambiguous type being passed in (s_brg or s_sync).
                              This was accomplished by adding a class called TE_STIDESCRIP.  An instance of 
                              this is created.  The Descrip field from s_sync or s_brg is copied into it.
                              This allows the parameter to be of a single type (rather than _both_ S_BRG and S_SYNC).
 q.smt.generate.arc       .+* modifications to OAL statement generation
                              Stop including a custom version t.smt.create_instance.c and t.smt.delete_instance.c.
                              Instead, the templates themselves are modified.
 q.sys.populate.arc       .+* reasonable modifications during initialization
                              I do not recommend changing the "MC types" (i_t, r_t, etc).  Instead,
                              change them in one place in t.sys_types.h.
                              However, if this is for coding style purposes, you can carefully test it.
                              Use the mcmc way of returning data from an invocation.
 q.utils.arc              .+* small change for extra parameter
 q.val.translate.arc      .+* reasonable modifications during initialization
 t.class.attribute.init.c  .+ non-mcmc enhancement
                              Use the mcmc way of returning data from an invocation.
 t.class.extent.c           + non-mcmc enhancement
 t.class.extent.h           + non-mcmc enhancement
 t.class.idispatch.c        + non-mcmc enhancement
 t.class.sem.state_names.c  + non-mcmc enhancement
 t.class.set_refs.c         + non-mcmc enhancement (4.1.6 conflict here, resolved)
 t.domain.function.c        + non-mcmc enhancement
 t.domain_classes.h         + non-mcmc enhancement
 t.domain_datatypes.h       + non-mcmc enhancement
 t.domain_enums.h           + new non-mcmc enhancement
 t.domain_init.h            + non-mcmc enhancement
 t.ee_ext.h                 + new non-mcmc enhancement
 t.smt.assign.c             + 4.1.6 upgrade
 t.smt.bridge.c           .+* marking conditional invocation
 t.smt.c                   .+ not used
                              Removed changes from this file, since they do not get used.
                              Except for a few calls from the component generation archetypes,
                              this file is mostly obsolete.  t_oal_smt_assign is not called.
</pre>

End
---


fx_get_domain_classes_file_name:  This value is found in te_c.classes_file.
fx_get_sys_types_file_name:  This value is found in te_file.types.

Here:  Use SELECT ... RELATED BY.
.function fx_get_first_attribute_in_object_model .// o_attr
.param inst_ref te_class
  .select any obj from instances of O_OBJ where (selected.Obj_ID == te_class.Obj_ID)

