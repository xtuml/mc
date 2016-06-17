---

This work is licensed under the Creative Commons CC0 License

---

# Export for MASL deferred operations
### xtUML Project Implementation Note

1. Abstract
-----------
MASL allows _deferred_ (abstract) class operations. If a supertype has an
operation with no actions, and each of its subtypes has an operation with an
identical signature, an invocation to the operation on an instance of the
supertype is deferred to the corresponding subtype instance. Deferred operations
must be exported properly to MASL.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8507 Handle deferred activities](https://support.onefact.net/issues/8507)  
<a id="2.2"></a>2.2 [#8516 Handle public and private object operations](https://support.onefact.net/issues/8516)  

3. Background
-------------
During design, we had discussed whether to make an addition to the xtUML
meta-model for the change to add deferred operations. This would provide some
considerable benefits -- it would be easy to display and edit which association
the operation was deferred on in the properties view, validation, automatically
creating an operation when a new subtype was linked to a supertype with a
deferred operation, etc. This is the future of this feature, however, we decided
to go with a less intrusive approach. Deferred activities can be inferred simply
by checking for the presence of actions and comparing operation signatures. As
an incremental step, this better serves our current needs, however there are
plans to properly address this feature in the future.

The model of MASL (`masl`) has a feature that generates an action stub for any
activity that does not provide a codeblock. This will have to be suppressed in
the case of deferred operations because a deferred operation should not have an
associated action file.

4. Requirements
---------------
4.1 The MASL exporter (`x2m`) shall recognize deferred operations and emit
serial MASL appropriately  
4.1.1 A deferred operation does not have any action language  
4.1.2 Each subtype of an operation deferred to a given association has an
operation with an identical signature to the deferred operation  
4.2 The model of MASL (`masl`) shall not emit activity stubs for deferred
operations  

5. Work Required
----------------

5.1 Add check for deferral before emitting action stubs in `masl`  
5.2 Update `classop2objectop` in `x2m` to search for subsuper relationships and
compare signatures  
5.3 Add FILE external entity to query OS for existence of an action file  
5.4 Add `model` class with string attribute `projectroot` to contain the path to
the eclipse project root. This is necessary for finding action files and
checking their existence.  
5.5 Add '-i' option to `x2m` to pass in the eclipse project directory. Update
`sys_user_co.c` to set the project root attribute  
5.6 Update the build script to follow the new usage of `x2m`  
5.7 Update the documentation of `x2m` with the updated usage  

5.8 Add comment that all object operations are public  


6. Implementation Comments
--------------------------
6.1 When completing the work of 5.1, I duplicated code in four places. Only one
of the four was truly necessary, however, when the set addition feature is
ready, the code can be cleaned up and consolidated. I duplicated the code in all
four places to ensure that it does not get lost and introduce a bug when the
cleanup is done. The duplication does not affect performance.

6.2 Issue #8516 ([[2.2]](#2.2)) addresses public and private object operations.
Up to this point, we have simply been marking all object operations public since
xtUML does not have a notion of private operations. We have received
confirmation from the customer that this is acceptable for MASL.

7. Unit Test
------------
7.1 Convert and import a model with deferred activities  
7.2 Export the model to MASL  
7.3 Verify that the `.mod` files are functionally the same  
7.4 Verify that all the activity files from the original model are in the
exported model and that no extraneous files were created  

8. Code Changes
---------------
Branch name: < enter your branch name here >

<pre>
 bin/xtumlmc_build                                                                   |   4 ++--
 doc/notes/8320_packaging_1/8320_packaging_1.dnt.md                                  |   9 ++++----
 model/masl/models/masl/maslpopulation/file/file.xtuml                               |  24 ++++++++++++++++----
 model/maslout/gen/FILE_bridge.c                                                     |  36 ++++++++++++++++++++++++++++++
 model/maslout/gen/sys_user_co.c                                                     |   7 +++++-
 model/maslout/models/maslout/EEs/EEs.xtuml                                          | 104 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/maslout/models/maslout/lib/xtuml2masl/maslout_imported/maslout_imported.xtuml |  38 +++++++++++++++++++++++++++-----
 model/maslout/models/maslout/lib/xtuml2masl/model/model.xtuml                       |  81 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/maslout/models/maslout/lib/xtuml2masl/model/model/model.xtuml                 |  75 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/maslout/models/maslout/lib/xtuml2masl/xtuml2masl.xtuml                        |  56 ++++++++++++++++++++++++++++++++--------------
 model/maslout/models/maslout/maslout.xtuml                                          |  28 +++++++++++++++++++++--
 11 files changed, 428 insertions(+), 34 deletions(-)
</pre>

End
---

