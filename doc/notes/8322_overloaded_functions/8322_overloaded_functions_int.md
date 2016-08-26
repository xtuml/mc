---

This work is licensed under the Creative Commons CC0 License

---

# MASL support for overloaded activities
### xtUML Project Implementation Note

1. Abstract
-----------
See [[2.1]](#2.1) section 1

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8322 design note](8322_overloaded_functions_dnt.md)  
<a id="2.2">2.2 [#8322 parent issue](https://support.onefact.net/issues/8322)  
<a id="2.3">2.3 [#8361 comment support](https://support.onefact.net/issues/8361)  

3. Background
-------------
See [[2.1]](#2.1) section 3

4. Requirements
---------------
See [[2.1]](#2.1) section 4

5. Work Required
----------------

5.1 model of MASL  
5.1.1 removed unique name check for routines and operations  
5.1.2 added 'merge_duplicate' and 'get_signature' routines to 'activity' class  
5.1.3 called 'merge_duplicate' on end tag for activities  
5.1.4 added 'dispose' operation to 'activity', 'routine', 'operation', and
'parameter' classes  

5.2 `m2x`  
5.2.1 removed unique name check for creating 'Function', 'Operation' and
'Executable Property' instances  
5.2.2 added 'getSignature' operations for 'Executable Property', 'Function', and
'Operation' instances  
5.2.3 added 'mergeDuplicateRoutines' and 'mergeDuplicateOperations' operations
to 'ooapopulation'  
5.2.4 added several supporting 'dispose' routines  
5.2.5 fixed a collection of bugs surrounding creation of public domain
functions. In short, whenever a public domain function is introduced, it must
have a corresponding interface message. The interface messages were not getting
the return type or parameters created properly.  
5.2.6 fixed problem where codeblocks could not get stored before interfaces were
formalized (interface reference was not created yet). Temporarily stored
codeblock information in the `Descrip` field of the C_EP until formalization or
merge at which time it would be copied to the `Action_Semantics_internal` field
of the SPR_RO instance  

5.3 Miscellaneous  
5.3.1 published references for 'Interface Signal' (C_AS) in mcooa for a dispose
operation  
5.3.2 alphabetized the operations in 'ooapopulation' for better organization  
5.3.3 added test data in the masl project  
5.3.4 fixed a small bug in the parser related to issue #8361 [[2.3]](#2.3) that
was causing functions to not parse  

6. Implementation Comments
--------------------------

We faced one problem in implementation that was not addressed in the design
note. See section 5.2.6 for the "work required" comments. In the MASL idiom,
when a terminator is declared, an interface definition is created in a publicly
visible package to define the required services. A port is created in the domain
component and formalized to this interface. Codeblock information is stored in
the `Action_Semantics_internal` field of the formalized interface reference
operations. The problem that arises is that the port is only formalized with the
interface after all of the terminator services have been declared and the
terminator end tag arrives. Any codeblock information that came with the
services would be lost. To solve this problem, codeblock information is
temporarily stored in the `Descrip` field of the C_EP and then transferred to
the `Action_Semantics_internal` field of the formalized interface operation
after formalization has occurred.

7. Unit Test
------------
See [[2.1]](#2.1) section 8

8. Code Changes
---------------
Branch name: leviathan747/8322_overloaded_functions

<pre>

 doc/notes/8322_overloaded_functions/8322_overloaded_functions_dnt.md    |  237 ++++++++++++++++++
 doc/notes/8322_overloaded_functions/sm1.png                             |  Bin 0 -> 27562 bytes
 doc/notes/8322_overloaded_functions/sm2.png                             |  Bin 0 -> 25561 bytes
 doc/review-minutes/8322_overloaded_functions_dnt_rvm.md                 |   26 ++
 masl/parser/src/MaslParser.g                                            |    2 +-
 model/masl/gen/masl_population_class.c                                  |   14 +-
 model/masl/models/masl/masl/activity/activity.xtuml                     |  147 +++++++++++
 model/masl/models/masl/masl/operation/operation.xtuml                   |   47 ++--
 model/masl/models/masl/masl/parameter/parameter.xtuml                   |   19 ++
 model/masl/models/masl/masl/routine/routine.xtuml                       |   50 ++--
 model/masl/models/masl/maslpopulation/population/population.xtuml       |    9 +-
 model/masl/test_data/8322_overloaded_functions/test1/test1.mod          |    7 +
 model/masl/test_data/8322_overloaded_functions/test2/test2.mod          |   13 +
 model/masl/test_data/8322_overloaded_functions/test3/test3.mod          |   29 +++
 model/masl/test_data/8322_overloaded_functions/test4/test4.mod          |   11 +
 model/masl/test_data/8322_overloaded_functions/test5/test5.mod          |    7 +
 model/masl/test_data/8322_overloaded_functions/test6/test6.prj          |   15 ++
 model/maslin/gen/STRING_bridge.c                                        |   39 ++-
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                       | 1292 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------------
 model/maslin/gen/masl2xtuml_ooapopulation_class.h                       |   14 ++
 model/maslin/models/maslin/masl2xtuml/ooapopulation/ooapopulation.xtuml | 1184 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------
 model/mcooa/models/mcooa/ooaofooa/Component/Component.xtuml             |   48 +++-
 22 files changed, 2893 insertions(+), 317 deletions(-)

</pre>

End
---

