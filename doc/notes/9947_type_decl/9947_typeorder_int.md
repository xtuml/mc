---

This work is licensed under the Creative Commons CC0 License

---

# type export needs to be ordered
### xtUML Project Implementation Note

### 1. Abstract

Implementation and testing of the type ordering change are documented here.

### 2. Document References

<a id="2.1"></a>2.1 [#9947](https://support.onefact.net/issues/9947) type export needs to be ordered  
<a id="2.2"></a>2.2 [first try implementation note (now reverted)](https://github.com/cortlandstarrett/mc/blob/9947_typeorder/doc/notes/9947_type_decl/9947_type_decl_int.md)  
<a id="2.3"></a>2.3 [analysis note for this issue](https://github.com/cortlandstarrett/mc/blob/9947_typeorder/doc/notes/9947_type_decl/9947_type_decl2_ant.md)  
<a id="2.4"></a>2.4 [design note for this issue](https://github.com/cortlandstarrett/mc/blob/9947_typeorder/doc/notes/9947_type_decl/9947_typeorder_dnt.md)  
<a id="2.5"></a>2.5 [#9443](https://support.onefact.net/issues/9443) `masl_check`: recursive structure causes stack overflow  
<a id="2.6"></a>2.6 [#9984](https://support.onefact.net/issues/9984) MASL Formatter fails on range constraints  
<a id="2.7"></a>2.7 [#9985](https://support.onefact.net/issues/9985) MASL round trip trips on character initializer  

### 3. Background

See [[2.1]](#2.1), [[2.3]](#2.3) and [[2.4]](#2.4).

### 4. Requirements

See [[2.3]](#2.3) and [[2.4]](#2.4).

### 5. Work Required

5.1 Identify Dependent Types  
Implement a scanner (`typeminer`) which takes as input the body of a
type definition and produces a list of labels that may be the names of
referenced types found within the body.  This parser is implemented in
flex and bison.  The grammar is derived from the MASL antlr grammar.
An array of labels is returned to the caller which is used to search
the domain for types matching the name from the label.

6.2 Capturing References  
A class `reference` has been added to the model of MASL types which
links one referenced type to another that refers to it.  This link is
established between a type and all potential references found inside the
body of the type.  An attribute on `reference` tracks when the reference
is resolved by rendering or forward declaration of the referred to type.

6.3 Ordering Algorithm  
The ordering algorithm employs a form of graph pruning.  An activity
on `type` runs the following steps:  
6.3.1 Emit a forward declaration for self-referential types.  
6.3.2 Prune the type graph of all types without references or with only
resolved type references.  
6.3.3 Break cycles by selecting a recursive type and producing a forward
reference for it.

### 6. Implementation Comments

6.1 Interface Rendering  
The design needed a slight change.  Types get rendered more than once.
All types are rendered for the model (`.mod`) file and public types are
rendered again for the interface (`.int`) file.  `render_all` is changed
to take a parameter indicating public types.  Before running, it marks
all types as not rendered.

6.2 R3776  
A bug was identified in the model of masl.  R3776 from domain to type
was redundant with R3719.  R3776 was removed and then added back
between domain and reference.  This association is used to collect
references against a domain for project renderings.  `type.name` is a
key but only for types within the scope of a single domain.

### 7. Unit Test

7.1 MASL round trip shall pass [from design]  

7.2 Type export test [from design]  

7.2.1 In a new workspace, create a new project and import `TypeTest.xtuml`
(download from the issue [[2.1]](#2.1))  
7.2.2 Expand the project and "TypeTest" package  
7.2.3 Right click the component and select "Export MASL domain"  
7.2.4 Verify that the export completes successfully  
7.2.5 Navigate to the `masl/TypeTest` directory under the project and open
`TypeTest.mod`  
7.2.6 Verify that all three user defined types have a type forward declaration
and a type declaration. It should look something like this:
```
domain TypeTest is

  private type status is enum ( ON, OFF, ERROR );
  private type special_status is enum ( ON, OFF, SUPER, ERROR );
  private type light_array is structure
    light1: status;
    light2: status;
    light3: special_status;
  end structure;

end domain;
```

7.3 Additional Round Trip Tests  
7.3.1 `9443recursiveTypes` was introduced for [[2.5]](#2.5) but did not
pass until the present type ordering was introduced.  
7.3.2 Three additional tests are introduced that contain self-referential
types, types not declared in order and cyclic types.  Note that two of
these tests are stored as not-fully-well-formed MASL.  The ordering of
the types is not strictly compliant including the placement of forward
declarations.  Everything is legal except for ordering of types.  However,
since the MASL formatter sorts the records in the MASL text being compared,
they are able to be compared.  
7.3.2.1 `malformed_9947_typeorder1`  
7.3.2.2 `9947_typeorder2`  
7.3.2.3 `malformed_9947_typeorder3`  
The above tests are added to the automated MASL round trip suite.  As stated
in 7.1 above, these tests must pass.

### 8. User Documentation

8.1 The documentation for `xtuml2masl` was (_un_)updated in the BridgePoint
Help.  The option to force all types to be declared forward has been removed.

### 9. Code Changes

<pre>
Fork/Repository: leviathan747/bridgepoint
Branch: 9947_type_decl2
src/org.xtuml.bp.doc/Reference/MASL/xtuml2masl/xtuml2masl.html
src/org.xtuml.bp.doc/Reference/MASL/xtuml2masl/xtuml2masl.md

Fork/Repository: cortlandstarrett/mc
Branch: 9947_typeorder
 bin/README.md                                                                      |  15 +-
 bin/win/xtumlmc_build.exe                                                          | Bin 3995949 -> 3995868 bytes
 bin/xtumlmc_build                                                                  |  13 +-
 doc/notes/9947_type_decl/9947_type_decl2_ant.md                                    | 260 ++++++++++++++
 doc/notes/{ => 9947_type_decl}/9947_type_decl_int.md                               |   0
 doc/notes/9947_type_decl/9947_typeorder_dnt.md                                     | 177 +++++++++
 doc/notes/9947_type_decl/9947_typeorder_int.md                                     | 150 ++++++++
 doc/notes/9947_type_decl/type_referencing.png                                      | Bin 0 -> 126551 bytes
 model/masl/.externalToolBuilders/Model Compiler.launch                             |   4 +-
 model/masl/gen/masl_type_class.c                                                   | 652 ++++++++++++++++++++++++++++++++++
 model/masl/gen/miner.h                                                             |  22 ++
 model/masl/gen/miner.l                                                             | 105 ++++++
 model/masl/gen/miner.y                                                             | 283 +++++++++++++++
 model/masl/gen/sys_user_co.c                                                       |   8 +-
 model/masl/gen/typeminer_bridge.c                                                  | 137 +++++++
 model/masl/models/masl/lib/masl/masl.xtuml                                         |  30 +-
 model/masl/models/masl/lib/masl/model/model.xtuml                                  |  68 ----
 model/masl/models/masl/masl/domain/domain.xtuml                                    |  32 +-
 model/masl/models/masl/masltypes/masltypes.xtuml                                   | 748 ++++++++++++++++++++++++++++++++++-----
 model/masl/models/masl/masltypes/reference/reference.xtuml                         | 208 +++++++++++
 model/masl/models/masl/masltypes/type/type.xtuml                                   | 287 ++++++++++++++-
 model/masl/models/masl/masltypes/typeref/typeref.xtuml                             |   4 +-
 model/masl/src/.gitignore                                                          |   2 +
 model/masl/src/makefile.masl                                                       |  19 +-
 .../mcooa/models/mcooa/extensions/Translation Extensions/copyright/copyright.xtuml |   5 +-
 25 files changed, 2981 insertions(+), 248 deletions(-)

Fork/Repository: cortlandstarrett/models
Branch: 9947_typeordering
 VandMC_testing/mctest/type_ordering/.externalToolBuilders/Model Compiler.launch    |  25 ++--
 .../org.eclipse.cdt.managedbuilder.core.ScannerConfigBuilder.launch                |   7 ++
 .../org.eclipse.cdt.managedbuilder.core.genmakebuilder.launch                      |   7 ++
 VandMC_testing/mctest/type_ordering/.project                                       |  15 ++-
 VandMC_testing/mctest/type_ordering/gen/class.mark                                 |   1 +
 VandMC_testing/mctest/type_ordering/gen/domain.mark                                | 220 +--------------------------------
 VandMC_testing/mctest/type_ordering/gen/system.mark                                | 257 +--------------------------------------
 VandMC_testing/mctest/type_ordering/gen/t_LOG_bridge.c                             |  87 +++++++++++++
 .../mctest/type_ordering/models/type_ordering/lib/t/types/type/type.xtuml          |  22 +++-
 VandMC_testing/mctest/type_ordering/models/type_ordering/lib/t/types/types.xtuml   |  10 +-
 VandMC_testing/mctest/typeminer/README.md                                          |   3 -
 VandMC_testing/mctest/typeminer/gen/miner.h                                        |  22 ++++
 VandMC_testing/mctest/typeminer/gen/miner.l                                        |  19 ++-
 VandMC_testing/mctest/typeminer/gen/miner.y                                        |  67 ++++++----
 VandMC_testing/mctest/typeminer/gen/typeminer_bridge.c                             | 127 ++++++++++++++-----
 VandMC_testing/mctest/typeminer/models/typeminer/testcases/testcases.xtuml         |   8 +-
 masl/test/9443_recursiveStructures/RecursiveStructure.int                          |   1 -
 masl/test/9443_recursiveStructures/RecursiveStructure.mod                          |   1 -
 masl/test/9947_typeorder2/typeorder.int                                            |   3 +
 masl/test/9947_typeorder2/typeorder.mod                                            |  69 +++++++++++
 masl/test/all_tests                                                                |   5 +-
 masl/test/malformed_9947_typeorder1/typeorder.int                                  |   7 ++
 masl/test/malformed_9947_typeorder1/typeorder.mod                                  |  28 +++++
 masl/test/malformed_9947_typeorder3/typeorder.int                                  |   3 +
 masl/test/malformed_9947_typeorder3/typeorder.mod                                  |  69 +++++++++++
 25 files changed, 524 insertions(+), 559 deletions(-)
</pre>

### End


