---

This work is licensed under the Creative Commons CC0 License

---

# Pragmas for Raven Production
### xtUML Project Implementation Note

1. Abstract
-----------
Pragmas must be converted/imported into BridgePoint, edited, and exported back
to MASL.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8574 Production Pragmas](https://support.onefact.net/issues/8574)  

3. Background
-------------
Pragmas have been implemented for Raven Basic as strings stored in model element
`Descrip` fields. This approach has been deemed to be the best temporary
solution, however it must be updated to fully support all markable elements in
MASL.

4. Requirements
---------------
4.1 A pragma shall be converted and imported into an xtUML `Descrip` field  
4.2 A pragma shall be exported from xtUML `Descrip` fields to MASL  
4.3 The mapping of pragmas to xtUML model elements shall be specified by the
tables in section 5.1  

5. Work Required
----------------

5.1 Pragma mapping

5.1.1 MASL projects

| **marked element**    | **pragma location in xtUML**                                               |
|-----------------------|----------------------------------------------------------------------------|
| domain                | imported component `Descrip` field                                         |
| project               | project component `Descrip` field                                          |
| terminator            | port `Descrip` field                                                       |
| terminator routine    | _none_ (see section 6.1)                                                   |

5.1.2 MASL domains

| **marked element**    | **pragma location in xtUML**                                               |
|-----------------------|----------------------------------------------------------------------------|
| attribute             | attribute `Descrip` field                                                  |
| domain                | component `Descrip` field                                                  |
| domain routine        | function `Descrip` field                                                   |
| event                 | event `Descrip` field                                                      |
| exception             | exception `Descrip` field                                                  |
| identifier            | class `Descrip` field between "\<identifier2\>" or "\<identifier3\>" tags  |
| object                | class `Descrip` field                                                      |
| object declaration    | class `Descrip` field between "\<declaration\>" tags                       |
| object operation      | operation `Descrip` field                                                  |
| relationship          | association `Descrip` field                                                |
| state                 | state `Descrip` field                                                      |
| structure type member | type `Descrip` field embedded in the type definition                       |
| terminator            | port `Descrip` field                                                       |
| terminator routine    | interface operation `Descrip` field                                        |
| transition table      | state machine `Descrip` field                                              |
| transition table row  | state machine `Descrip` field between tags defined by the start state name |
| type                  | type `Descrip` field                                                       |
| type declaration      | type `Descrip` field between "\<declaration\>" tags                        |


5.2 MASL parser  
5.2.1 Update pragma list names  
5.2.2 Add special "omit" list to suppress population calls  

5.3 `m2x`  
5.3.1 Uncomment cases in `is_markable` operation  
5.3.2 Add cases for project domains, project terminators, terminator routines,
exceptions, identifiers, and relationships in `render_pragmas` operation  
5.3.3 Update `pragma_list` `render` operation to wrap in tags based on the list
name for non-default lists  
5.3.4 Update `ooapopulation` to cache the current exception  
5.3.5 Fixed type update in `ooapopulation`  
5.3.6 Add cases for creating pragmas in `populate_project` operation  
5.3.7 Add test data  

5.4 `x2m`  
5.4.1 Update `STRING` `getword` bridge to take a third argument that is an index
limiting the search  
5.4.2 Add "if" statements to domain export, terminator export, and interface
message export to get descriptions and pragmas from the right places if
processing a project  
5.4.3 Update objects to output the default pragma list
5.4.4 Add declaration and definition pragma export for types  
5.4.5 Add pragma export for identifiers, transition rows, object declarations,
and exceptions  
5.4.6 Update `parsepragmas` to use the new `getword` bridge to properly parse
the pragmas with no arguments  

5.5 `masl`  
5.5.1 Update pragma list names for transition rows  
5.5.2 Use default list for object definitions  
5.5.3 Add type forward declaration template  
5.5.4 Add check for self reference in type render  

5.6 Update `STRING` `getword` bridge in mcooa  

6. Implementation Comments
--------------------------

6.1 We ran into a problem when dealing with project terminator routine pragmas.
This has been a recurring problem with project conversion. Because the interface
definition that is used to formalize a project terminator lives in a domain
model, the SPR_PO instances that represent the routines are not created until
model load time. This creates a problem if we want to store something in those
descriptions. Furthermore, the `Descrip` field of SPR_PO in BridgePoint is a
derived attribute that selects back to the referred to C_IO instance in the
interface definition and takes the description from that instance. Because of
this, we cannot have separate descriptions in a project and domain terminator
routine. Because the `Descrip` field solution is not a long-term solution, we
have decided not to waste time with this problem and will leave project
terminator service marking unsupported temporarily  

7. Unit Test
------------

7.1 Convert the test domain model and test project model  
7.2 Import the domain model into a workspace  
7.3 Import the project model into a workspace making sure IPRs are enabled  
7.4 Export the domain model and project model to MASL  
7.5 Use the `masldiff` tool to verify zero diffs between the original domain
model and the exported domain model  
7.6 Use the `masldiff` tool to verify zero diffs between the original project
model and the exported project model  
7.6.1 Note that the projects will actually have two diffs located on the lines
that the terminator services are declared  

8. Code Changes
---------------
Branch name: 8574_production_pragmas

<pre>

 masl/parser/src/MaslWalker.g                                                        |  28 ++++++++------
 model/masl/gen/STRING_bridge.c                                                      |   2 +-
 model/masl/gen/masl/t.type_fwd_decl.masl                                            |   1 +
 model/masl/models/masl/masl/object/object.xtuml                                     |   2 +-
 model/masl/models/masl/masl/state_machine/state_machine.xtuml                       |   2 +-
 model/masl/models/masl/masltypes/type/type.xtuml                                    |   7 ++++
 model/masl/src/masl/t.type_fwd_decl.masl                                            |   6 +++
 model/maslin/gen/STRING_bridge.c                                                    |   2 +-
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                                   | 156 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------
 model/maslin/gen/masl2xtuml_ooapopulation_class.h                                   |   3 +-
 model/maslin/models/maslin/marking/ooaelement/ooaelement.xtuml                      |  12 +++---
 model/maslin/models/maslin/marking/ooamarkable/ooamarkable.xtuml                    |  80 ++++++++++++++++++++++++++++++--------
 model/maslin/models/maslin/marking/ooapragma_list/ooapragma_list.xtuml              |   4 ++
 model/maslin/models/maslin/masl2xtuml/ooapopulation/ooapopulation.xtuml             | 104 ++++++++++++++++++++++++++++++++++++++++++-------
 model/maslin/test_data/pragmas/PragTest/PragTest.int                                |  15 ++++++++
 model/maslin/test_data/pragmas/PragTest/PragTest.mod                                |  93 ++++++++++++++++++++++++++++++++++++++++++++
 model/maslin/test_data/pragmas/PragTest/bar.fn                                      |   4 ++
 model/maslin/test_data/pragmas/PragTest/foo.svc                                     |   4 ++
 model/maslin/test_data/pragmas/PragTest/obj1_bar.fn                                 |   4 ++
 model/maslin/test_data/pragmas/PragTest/obj1_foo.svc                                |   4 ++
 model/maslin/test_data/pragmas/PragTest/obj1_st1.al                                 |   4 ++
 model/maslin/test_data/pragmas/PragTest/term1_bar.tr                                |   4 ++
 model/maslin/test_data/pragmas/PragTest/term1_foo.tr                                |   4 ++
 model/maslin/test_data/pragmas/PragTestProj/PragTestProj.prj                        |  15 ++++++++
 model/maslin/test_data/pragmas/PragTestProj/PragTest_term1_bar.tr                   |   4 ++
 model/maslin/test_data/pragmas/PragTestProj/PragTest_term1_foo.tr                   |   4 ++
 model/maslout/gen/STRING_bridge.c                                                   |  42 +++++++++++---------
 model/maslout/models/maslout/lib/xtuml2masl/maslout_imported/maslout_imported.xtuml | 181 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------
 model/mcooa/models/mcooa/ooaofooa/Domain/Domain.xtuml                               |  40 +++++++++++++++++++
 model/mcshared/models/mcshared/MC_EEs/MC_EEs.xtuml                                  |  13 ++++++-
 30 files changed, 715 insertions(+), 129 deletions(-)

</pre>

End
---

