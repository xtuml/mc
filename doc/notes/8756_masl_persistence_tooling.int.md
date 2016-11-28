---

This work is licensed under the Creative Commons CC0 License

---

# MASL Persistence Tooling
### xtUML Project Implementation Note

1. Abstract
-----------

Issue #8417 [[2.2]](#2.2) introduced a new way of persisting action files. This
will help us maintain MASL activities as separate files. The MASL tooling
(`m2x`, `x2m`, `masl`, parser) and BridgePoint must be updated to utilize this
architecture.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8756 Update MASL tooling to utilize updated persistence structure](https://support.onefact.net/issues/8756) -- This is the parent issue.  
<a id="2.2"></a>2.2 [#8417 Storing activities as dialect files](https://support.onefact.net/issues/8417) -- This is the issue to update the persistence mechanism.  
<a id="2.3"></a>2.3 [#8417 design note](https://github.com/xtuml/bridgepoint/blob/master/doc-bridgepoint/notes/8417_action_dialect_files/8417_action_dialect_files.dnt.md)  
<a id="2.4"></a>2.4 [#8417 implementation note](https://github.com/xtuml/bridgepoint/blob/master/doc-bridgepoint/notes/8417_action_dialect_files/8417_action_dialect_files.int.md)  
<a id="2.5"></a>2.5 [#8739 MASL is not displayed on state model canvas](https://support.onefact.net/issues/8739)  
<a id="2.6"></a>2.6 [#8738 Service signatures](https://support.onefact.net/issues/8738)  
<a id="2.7"></a>2.7 [#8515 string fields are not escaped by the instance dumper](https://support.onefact.net/issues/8515)  
<a id="2.8"></a>2.8 [#8363 MASL editor not opened from the canvas](https://support.onefact.net/issues/8363)  
<a id="2.9"></a>2.9 [#8801 MASL round trip test](https://support.onefact.net/issues/8801)  
<a id="2.10"></a>2.10 [#8802 Test use of tics in string fields in MASL flow](https://support.onefact.net/issues/8802)  
<a id="2.11"></a>2.10 [#8796 turn on dynamic strings in masl](https://support.onefact.net/issues/8796)  

3. Background
-------------
The persistence archictecture implemented in [[2.2]](#2.2) was motivated both by
forward thinking about BridgePoint and by MASL issues. Updating the MASL tooling
will affect several other MASL issues ([[2.5]](#2.5), [[2.6]](#2.6),
[[2.7]](#2.7), [[2.8]](#2.8)) in some way, either resolving them automatically
or forcing a solution to be implemented.

#### [[2.5]](#2.5) MASL is not displayed on state model canvas

This issue is that MASL actions are not seen on states on the canvas. This was
because MASL activities were only ever in tacked-on files and not in the xtUML
memory model. Since the new persistence and importer will allow MASL to exist in
the `Action_Semantics`, this will come for free.

#### [[2.6]](#2.6) Service signatures

This issue was that the service signatures were maintained in two separate
places. Again because the body of the MASL actions will now live in the memory
model of xtUML, action files will be generated upon export and the signatures
will come from the structural xtUML. This also comes for free with this work.

#### [[2.7]](#2.7) string fields are not escaped by the instance dumper

In SQL, single quotes (tics) are not allowed in string fields because a tic is a
token in the SQL grammar itself. Tics can be escaped, however, replacing a tic
with two tics. For example:
```
There's a snake in my boot
```
becomes:
```
There''s a snake in my boot
```
The BridgePoint editor does this already in the importer and exporter, allowing
tics to be used in comments and description fields, but the instance
dumper/loader in MC3020 does not bother to do this.

The tic is part of the grammar of MASL activities (and OAL activities), so this
issue must be addressed for MASL action bodies to be stored in the
`Action_Semantics` field and be persisted as SQL for import into BridgePoint.

#### [[2.8]](#2.8) MASL editor not opened from the canvas

This issue is that because MASL was in special files, only the model explorer
plugin knew how to properly open the MASL activity editor. Since MASL activities
are now stored the same as OAL, this will come for free.

4. Requirements
---------------
4.1 There shall be no reliance on file copying in the MASL flow  
4.1.1 `m2x` shall populate `Action_Semantics` fields with MASL action bodies  
4.1.2 `x2m` shall populate the model of MASL with action bodies from
`Action_Semantics` fields  
4.1.3 `masl` shall generate activity files from structural MASL and action body
text  
4.2 The implementation shall resolve #8739 [[2.5]](#2.5), #8738 [[2.6]](#2.6),
#8515 [[2.7]](#2.7), and #8363 [[2.8]](#2.8)  
4.3 MASL round trip shall continue to produce no differences  

5. Design
---------

5.1 `escapetics`

In the "Background" section, I noted that tics will need to be escaped for
string fields. The design that has been chosen is to add two routines to the
STRING bridge: `escapetics` and `unescapetics`. These routines will take a
string as input and produce a string that has tics escaped by doubling (or
vice-versa). This routine will be used any time a `Descrip` or
`Action_Semantics` field is populated from SMASL or output to SMASL. 

5.2 Interface swapping

During convert, projects have no knowledge of domain data. For this reason,
component references and interface references on projects have been left
unassigned until load time, where they are automatically resolved by name.
Because we are now storing whole action bodies in instances, we cannot wait
until an interface reference is formalized to create the `SPR_` instances -- we
must have an instance to store the action body in. A new strategy has been
designed for this case. Temporary interface reference are defined in a project
and interface references are formalized to them. At load time, the corresponding
interface definition in a domain project is found. The domain interface
definition is then swapped for the temporary interface defined in the project
and the project interface definition is deleted. This is a specialized action,
because it cannot be done with a simple unformalize, then formalize action. The
reason for this is the `SPR_` instances would be deleted on the unformalize and
the action bodies would be lost. For this reason, this specialized swapping
action is implemented.

6. Work Required
----------------

### 6.1 BridgePoint changes

6.1.1 Added abstract `getSignature` routine to "Executable Property" class  
6.1.1.1 Files associated with this change category  
```
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Component/Executable Property/Executable Property.xtuml  |  40 +++++++
```

6.1.2 Added `replaceFormalInterface` function to swap interfaces without
deleting the messages  
6.1.2.1 Files associated with this change category  
```
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Functions/Functions.xtuml                                |  80 +++++++++++++-
```

6.1.3 Updated `ImportHelper`  
6.1.3.1 Removed code that copies MASL files into the project  
6.1.3.2 Added code to swap out the formal interfaces for terminators  
6.1.3.3 Updated component assigning code to only try to assign component
references if in a MASL project package  
6.1.3.4 Files associated with this change category  
```
 src/org.xtuml.bp.io.core/src/org/xtuml/bp/io/core/ImportHelper.java                                              | 324 +++++++++++++++++----------------------------------------
 src/org.xtuml.bp.io.mdl/src/org/xtuml/bp/io/mdl/wizards/ModelImportWizard.java                                   |   6 +-
```

### 6.2 MASL tools changes

#### 6.2.1 Parser changes

6.2.1.1 Updated MASL parser to grab whole action bodies for `codeblock` instead
of simply outputting file names  
6.2.1.1.1 Files associated with this change category  
```
 masl/parser/src/MaslWalker.g                       |  15 +-
```

#### 6.2.2 `m2x` changes

6.2.2.1 Implement `escapetics` routine in the STRING bridge  
6.2.2.2 Add call to `escapetics` in each place where `Action_Semantics` are set  
6.2.2.3 Fix max string problem in `sys_user_co.c`  
6.2.2.4 Update projects to create a new interface for terminators and not delete
it at the end  
6.2.2.5 Several of these changes were completed in the `maslin` project and
copied to the `maslin_new` project  
6.2.2.6 Files associated with this change category
```
 model/maslin/gen/STRING_bridge.c                                                                                           |  29 +++++++++++++++++++++++
 model/maslin/gen/masl2xtuml.c                                                                                              |  34 ++-------------------------
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                                                                          | 198 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------
 model/maslin/gen/sys_user_co.c                                                                                             |   4 ++--
 model/maslin/models/maslin/lib/masl2xtuml/masl2xtuml.xtuml                                                                 |   9 -------
 model/maslin/models/maslin/masl2xtuml/ooapopulation/ooapopulation.xtuml                                                    |  87 ++++++++++++++++++++++++++++++++++++++++++++++----------------------
 model/maslin_new/gen/STRING_bridge.c                                                                                       |  29 +++++++++++++++++++++++
 model/maslin_new/gen/masl2xtuml.c                                                                                          |  34 ++-------------------------
 model/maslin_new/gen/masl2xtuml_ooapopulation_class.c                                                                      | 217 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------
 model/maslin_new/gen/sys_user_co.c                                                                                         |   4 ++--
 model/maslin_new/models/maslin_new/lib/masl2xtuml/masl2xtuml.xtuml                                                         |  11 +--------
 model/maslin_new/models/maslin_new/m2x/ooapopulation/ooapopulation.xtuml                                                   | 107 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------
``` 

#### 6.2.3 `x2m` changes

6.2.3.1 Implement `unescapetics` routine in the STRING bridge  
6.2.3.2 Fix max string length bug in the V bridge and URL encoding library  
6.2.3.3 Increase max string length  
6.2.3.4 Update all calls to `body2code_block` to output `Action_Semantics`  
6.2.3.5 Files associated with this change category
```
 model/maslout/gen/STRING_bridge.c                                                                                          |  27 +++++++++++++++++++++
 model/maslout/gen/V_bridge.c                                                                                               |   4 ++--
 model/maslout/gen/masl_url.c                                                                                               |  10 ++++----
 model/maslout/gen/masl_url.h                                                                                               |   6 +++--
 model/maslout/gen/system.mark                                                                                              |   2 +-
 model/maslout/models/maslout/lib/xtuml2masl/maslout_imported/maslout_imported.xtuml                                        |  16 +++++++------
```

#### 6.2.4 `masl` changes

6.2.4.1 Updated templates for generation of action files  
6.2.4.2 Fixed max string length bug in `sys_user_co.c`  
6.2.4.3 Increased max string length  
6.2.4.4 Update `file` class to generate activity files instead of copying them  
6.2.4.5 Files associated with this change category
```
 model/masl/gen/masl/*
 model/masl/src/masl/*
 model/masl/gen/sys_user_co.c                                                                                               |   4 ++--
 model/masl/gen/system.mark                                                                                                 |   2 +-
 model/masl/models/masl/maslpopulation/file/file.xtuml                                                                      | 136 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------------------
```

#### 6.2.5 Other changes

6.2.5.1 Update `masl2xtuml` script to stop copying action files  
6.2.5.2 Added `escapetics` and `unescapetics` to STRING bridge  
6.2.5.3 Files associated with this change category
```
 bin/masl2xtuml                                                                                                             |   6 -----
 model/mcshared/models/mcshared/MC_EEs/MC_EEs.xtuml                                                                         |  39 +++++++++++++++++++++++++++++++
``` 

7. Implementation Comments
--------------------------

7.1 Long string fields

Since we are now holding whole action bodies in `Action_Semantics` fields, we
are running to problems of maximum string length in MC3020. Simply increasing
the maximum is not a viable solution because strings are statically allocated
and this will result in exhaustion of memory. Because of this problem, the
round trip test with SAC will fail unless a particularly long function is
removed (see section 8.1 for the test). Issue #8796 [[2.11]](#2.11) has been
raised to handle this problem.

8. Unit Test
------------
8.1 Round trip test with SAC and SAC_PROC  
8.1.1 See [[2.9]](#2.9)  

8.2 Test tics use cases  
8.2.1 See [[2.10]](#2.10)  

9. User Documentation
---------------------
None

10. Code Changes
----------------
Fork/Repository: leviathan747/bridgepoint  
Branch: 8756_masl_persistence_tooling  

<pre>

 src/MC-Java/ooa_schema.sql                                                                                       |  27 +++--
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Component/Executable Property/Executable Property.xtuml  |  40 +++++++
 .../ooaofooa/Component/Signal Provisions and Requirements/Provided Operation/Provided Operation.xtuml            |  18 ++++
 .../ooaofooa/Component/Signal Provisions and Requirements/Provided Signal/Provided Signal.xtuml                  |  18 ++++
 .../ooaofooa/Component/Signal Provisions and Requirements/Required Operation/Required Operation.xtuml            |  18 ++++
 .../ooaofooa/Component/Signal Provisions and Requirements/Required Signal/Required Signal.xtuml                  |  18 ++++
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Domain/Bridge/Bridge.xtuml                               |  18 ++++
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Domain/Function/Function.xtuml                           |  18 ++++
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Functions/Functions.xtuml                                |  80 +++++++++++++-
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/State Machine/Action/Action.xtuml                        |  18 ++++
 .../models/org.xtuml.bp.core/ooaofooa/Subsystem/Derived Base Attribute/Derived Base Attribute.xtuml              |  18 ++++
 src/org.xtuml.bp.core/models/org.xtuml.bp.core/ooaofooa/Subsystem/Operation/Operation.xtuml                      |  18 ++++
 src/org.xtuml.bp.io.core/src/org/xtuml/bp/io/core/ImportHelper.java                                              | 324 +++++++++++++++++----------------------------------------
 src/org.xtuml.bp.io.mdl/src/org/xtuml/bp/io/mdl/wizards/ModelImportWizard.java                                   |   6 +-
 14 files changed, 394 insertions(+), 245 deletions(-)

</pre>

Fork/Repository: leviathan747/mc  
Branch: 8756_masl_persistence_tooling  

<pre>

 bin/masl2xtuml                                                                                                             |   6 -----
 masl/parser/src/MaslWalker.g                                                                                               |  15 ++++++++----
 model/masl/gen/masl/t.code_block_stub.masl                                                                                 |   3 +++
 model/masl/gen/masl/t.domain_function_def_begin.masl                                                                       |   1 +
 model/masl/gen/masl/t.domain_function_stub_begin.masl                                                                      |   1 -
 model/masl/gen/masl/t.domain_function_stub_end.masl                                                                        |   4 ----
 model/masl/gen/masl/t.domain_service_def_begin.masl                                                                        |   1 +
 model/masl/gen/masl/t.domain_service_stub_begin.masl                                                                       |   1 -
 model/masl/gen/masl/t.domain_service_stub_end.masl                                                                         |   4 ----
 model/masl/gen/masl/t.function_def_end.masl                                                                                |   1 +
 model/masl/gen/masl/t.function_def_middle.masl                                                                             |   1 +
 model/masl/gen/masl/t.object_function_def_begin.masl                                                                       |   1 +
 model/masl/gen/masl/t.object_function_stub_begin.masl                                                                      |   1 -
 model/masl/gen/masl/t.object_function_stub_end.masl                                                                        |   4 ----
 model/masl/gen/masl/t.object_service_def_begin.masl                                                                        |   1 +
 model/masl/gen/masl/t.object_service_stub_begin.masl                                                                       |   1 -
 model/masl/gen/masl/t.object_service_stub_end.masl                                                                         |   4 ----
 model/masl/gen/masl/t.object_state_def_begin.masl                                                                          |   1 +
 model/masl/gen/masl/t.object_state_stub_begin.masl                                                                         |   1 -
 model/masl/gen/masl/t.object_state_stub_end.masl                                                                           |   4 ----
 model/masl/gen/masl/t.service_def_end.masl                                                                                 |   1 +
 model/masl/gen/masl/t.service_def_middle.masl                                                                              |   1 +
 model/masl/gen/masl/t.state_def_end.masl                                                                                   |   1 +
 model/masl/gen/masl/t.state_def_middle.masl                                                                                |   1 +
 model/masl/gen/masl/t.terminator_function_def_begin.masl                                                                   |   1 +
 model/masl/gen/masl/t.terminator_function_stub_begin.masl                                                                  |   1 -
 model/masl/gen/masl/t.terminator_function_stub_end.masl                                                                    |   4 ----
 model/masl/gen/masl/t.terminator_service_def_begin.masl                                                                    |   1 +
 model/masl/gen/masl/t.terminator_service_stub_begin.masl                                                                   |   1 -
 model/masl/gen/masl/t.terminator_service_stub_end.masl                                                                     |   4 ----
 model/masl/gen/sys_user_co.c                                                                                               |   4 ++--
 model/masl/gen/system.mark                                                                                                 |   2 +-
 model/masl/models/masl/maslpopulation/file/file.xtuml                                                                      | 136 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------------------
 model/masl/src/masl/t.code_block_stub.masl                                                                                 |   7 ++++++
 model/masl/src/masl/t.domain_function_def_begin.masl                                                                       |   6 +++++
 model/masl/src/masl/t.domain_function_stub_begin.masl                                                                      |   6 -----
 model/masl/src/masl/t.domain_function_stub_end.masl                                                                        |  11 ---------
 model/masl/src/masl/t.domain_service_def_begin.masl                                                                        |   6 +++++
 model/masl/src/masl/t.domain_service_stub_begin.masl                                                                       |   6 -----
 model/masl/src/masl/t.domain_service_stub_end.masl                                                                         |   9 -------
 model/masl/src/masl/t.function_def_end.masl                                                                                |   3 +++
 model/masl/src/masl/t.function_def_middle.masl                                                                             |   4 ++++
 model/masl/src/masl/t.object_function_def_begin.masl                                                                       |  10 ++++++++
 model/masl/src/masl/t.object_function_stub_begin.masl                                                                      |  10 --------
 model/masl/src/masl/t.object_function_stub_end.masl                                                                        |  11 ---------
 model/masl/src/masl/t.object_service_def_begin.masl                                                                        |  10 ++++++++
 model/masl/src/masl/t.object_service_stub_begin.masl                                                                       |  10 --------
 model/masl/src/masl/t.object_service_stub_end.masl                                                                         |   9 -------
 model/masl/src/masl/t.object_state_def_begin.masl                                                                          |   8 +++++++
 model/masl/src/masl/t.object_state_stub_begin.masl                                                                         |   8 -------
 model/masl/src/masl/t.object_state_stub_end.masl                                                                           |   9 -------
 model/masl/src/masl/t.service_def_end.masl                                                                                 |   3 +++
 model/masl/src/masl/t.service_def_middle.masl                                                                              |   2 ++
 model/masl/src/masl/t.state_def_end.masl                                                                                   |   3 +++
 model/masl/src/masl/t.state_def_middle.masl                                                                                |   2 ++
 model/masl/src/masl/t.terminator_function_def_begin.masl                                                                   |   8 +++++++
 model/masl/src/masl/t.terminator_function_stub_begin.masl                                                                  |   8 -------
 model/masl/src/masl/t.terminator_function_stub_end.masl                                                                    |  11 ---------
 model/masl/src/masl/t.terminator_service_def_begin.masl                                                                    |   8 +++++++
 model/masl/src/masl/t.terminator_service_stub_begin.masl                                                                   |   8 -------
 model/masl/src/masl/t.terminator_service_stub_end.masl                                                                     |   9 -------
 model/maslin/gen/STRING_bridge.c                                                                                           |  29 +++++++++++++++++++++++
 model/maslin/gen/masl2xtuml.c                                                                                              |  34 ++-------------------------
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                                                                          | 198 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------
 model/maslin/gen/sys_user_co.c                                                                                             |   4 ++--
 model/maslin/models/maslin/lib/masl2xtuml/masl2xtuml.xtuml                                                                 |   9 -------
 model/maslin/models/maslin/masl2xtuml/ooapopulation/ooapopulation.xtuml                                                    |  87 ++++++++++++++++++++++++++++++++++++++++++++++----------------------
 model/maslin_new/gen/STRING_bridge.c                                                                                       |  29 +++++++++++++++++++++++
 model/maslin_new/gen/masl2xtuml.c                                                                                          |  34 ++-------------------------
 model/maslin_new/gen/masl2xtuml_ooapopulation_class.c                                                                      | 217 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------
 model/maslin_new/gen/sys_user_co.c                                                                                         |   4 ++--
 model/maslin_new/models/maslin_new/lib/masl2xtuml/masl2xtuml.xtuml                                                         |  11 +--------
 model/maslin_new/models/maslin_new/m2x/ooapopulation/ooapopulation.xtuml                                                   | 107 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------
 model/maslout/gen/STRING_bridge.c                                                                                          |  27 +++++++++++++++++++++
 model/maslout/gen/V_bridge.c                                                                                               |   4 ++--
 model/maslout/gen/masl_url.c                                                                                               |  10 ++++----
 model/maslout/gen/masl_url.h                                                                                               |   6 +++--
 model/maslout/gen/system.mark                                                                                              |   2 +-
 model/maslout/models/maslout/lib/xtuml2masl/maslout_imported/maslout_imported.xtuml                                        |  16 +++++++------
 model/mcooa/models/mcooa/ooaofooa/Component/Signal Provisions and Requirements/Provided Operation/Provided Operation.xtuml |  18 ++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Component/Signal Provisions and Requirements/Provided Signal/Provided Signal.xtuml       |  18 ++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Component/Signal Provisions and Requirements/Required Operation/Required Operation.xtuml |  18 ++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Component/Signal Provisions and Requirements/Required Signal/Required Signal.xtuml       |  18 ++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Domain/Bridge/Bridge.xtuml                                                               |  18 ++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Domain/Function/Function.xtuml                                                           |  18 ++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/State Machine/Action/Action.xtuml                                                        |  18 ++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Subsystem/Derived Base Attribute/Derived Base Attribute.xtuml                            |  18 ++++++++++++++
 model/mcooa/models/mcooa/ooaofooa/Subsystem/Operation/Operation.xtuml                                                      |  18 ++++++++++++++
 model/mcshared/models/mcshared/MC_EEs/MC_EEs.xtuml                                                                         |  39 +++++++++++++++++++++++++++++++
 schema/sql/xtumlmc_schema.sql                                                                                              |  27 ++++++++++++++-------
 90 files changed, 955 insertions(+), 520 deletions(-)
</pre>


End
---

