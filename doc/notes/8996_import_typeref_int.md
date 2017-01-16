---

This work is licensed under the Creative Commons CC0 License

---

# Import Typeref
### xtUML Project Implementation Note


1. Abstract
-----------
When converting a project model with shared types, we are over-
zealous about cleaning up and delete shared typerefs.  We need
to keep these.

2. Document References
----------------------
[1] [8996](https://support.onefact.net/issues/8996) - Project import drops shared typeref  
[2] [8801](https://support.onefact.net/issues/8801) - MASL round trip test  

3. Background
-------------
We were considering using IPRs for shared types.  But in MASL we must
keep explicity Typerefs.  We were "luckily" failing to delete them until
we fixed them during the work adding a `Definition` field to `S_UDT`.  Now
we successfully delete them incorrectly.

4. Requirements
---------------
4.1 Stop deleting imported typerefs.

5. Work Required
----------------
5.1 Stop marking imported typerefs as "tmp" in the population step.  
5.2 Stop deleting these types in the cleanup step.  

6. Implementation Comments
--------------------------
6.1 ImportHelper  
This issue was found while running manual test #8801. In investigating
this is was observed that masl import failures of this nature were not
being handled gracefully.  What happened is that an error was written
to the error log, but nothing to the console.  Furthermore the transaction
that was in progress was not properly aborted.  A small change was made to
BridgePoint proper to handle such a situation more gracefully.
The pull request is: https://github.com/xtuml/bridgepoint/pull/311

Description:  

job #8996 I made 2 changes in `ImportHelper.java::resolveMASLproject()`
to be more graceful about error conditions during mask import.  

6.1.1 We now use a single transaction for the masl import (previously
there were multiple), and if anything goes wrong during the import we
abort the transaction and inform the user.  
6.1.2 If a package is marked as `masl_project`, and we do not find a
matching domain for a component reference in the package then we inform
the user with a message to the console.  This is not fatal, it is just
a warning to the user. Here is the text of the message:  
```
String msg = "The following Component Reference was not assigned: " + cl_ic_name;
msg += "\nThe domain was not found in the workspace.";
msg += "\nAssure that Interproject References are enabled and that the domain has been imported.";
```

7. Unit Test
------------
7.1 Run the Import and Convert steps of [2].  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc
Branch name: 8996_import_typeref

xtuml/mc
 bin/m2x                                                          | Bin 650753 -> 646396 bytes
 doc/notes/8996_import_typeref_int.md                             |  90 +++++++++++++++++++++++++++++++++++++++++++++++
 model/maslin/gen/masl2xtuml.c                                    |  80 -----------------------------------------
 model/maslin/gen/masl2xtuml_S_UDT_class.c                        |  16 ---------
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                |   4 +--
 model/maslin/models/maslin/lib/masl2xtuml/masl2xtuml.xtuml       |  21 +----------
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml |   2 +-
 7 files changed, 94 insertions(+), 119 deletions(-)



Fork: rmulvey/bridgepoint
Branch name: 8996_masl_project_import_failure_8801

xtuml/bridgepoint
src/org.xtuml.bp.io.core/src/org/xtuml/bp/io/core/ImportHelper.java

</pre>

End
---

