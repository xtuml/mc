---

This work is licensed under the Creative Commons CC0 License

---

# deprecate 'function' keyword in MASL
### xtUML Project Implementation Note

1. Abstract
-----------
'function' and 'service' mean almost the same thing.  The distinction is whether
a value is returned, and this can be determined by the declaration and
definition.  Stop using 'function' as a keyword.  Allow 'service's to return
values.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8808 deprecate 'function' keyword in MASL](https://support.onefact.net/issues/8808)  

3. Background
-------------
None

4. Requirements
---------------
4.1 The MASL grammar shall be modified to allow 'service's to return values  
4.1.1 The MASL grammar shall continue to allow 'function' as a synonym of
'service'  
4.2 The MASL tooling shall stop using the keyword 'function' in favor of
'service'  
4.2.1 The persistence mechanism in BridgePoint shall not use the keyword
'service' when persisting routines with a return value  
4.2.2 The model of masl shall not emit 'function' for routines with a return
value  

5. Work Required
----------------
5.1 After inspection, it was determined that the persistence mechanism in
BridgePoint was already not using the keyword 'function'. The import parser and
model of MASL are the only components that need to be changed.  

5.2 Modified the lexer grammar so that 'service' and 'function' both return the
token SERVICE (making them synonyms to the parser).  
5.3 Modified the parse grammar with one production rule for services and
functions with an optional return value  
5.4 Modified the walker grammar for producing SMASL and the grammar used by the
formatter to be compatible with the parse grammar  

5.5 Modified the model of MASL to stop producing the keyword 'function' in all
places  
5.6 Modified the file generation to never generate `.fn` files  
5.7 Cleaned up and consolidated the templates and generation of activity
definitions  

6. Implementation Comments
--------------------------
None

7. Unit Test
------------

7.1 Run the round trip test script with the MASL model attached to the issue
[[2.1]](#2.1)  
7.2 Verify that the 'function' keyword exists nowhere in the output MASL:
  ```
  grep -nr "function" output_directory/
  ```
7.3 Run the MASL diff tool and verify that the only differences are file name
changes

8. User Documentation
---------------------
None

9. Code Changes
---------------
Fork/Repository: leviathan747/mc  
Branch: 8808_deprecate_function  

<pre>

 bin/MASLParser.jar                                       | Bin 287795 -> 279371 bytes
 bin/masl                                                 | Bin 239698 -> 243920 bytes
 masl/parser/src/MaslFormat.g                             |  24 +++++++++++-------------
 masl/parser/src/MaslLexer.g                              |   3 +--
 masl/parser/src/MaslParser.g                             | 126 +++++++++++++++++++++++-------------------------------------------------------------------------------------------------------
 masl/parser/src/MaslWalker.g                             |   4 ----
 model/masl/gen/masl/t.domain_function_def_begin.masl     |   1 -
 model/masl/gen/masl/t.function_def_end.masl              |   1 -
 model/masl/gen/masl/t.function_def_middle.masl           |   1 -
 model/masl/gen/masl/t.object_function_def_begin.masl     |   1 -
 model/masl/gen/masl/t.operation_end.masl                 |   2 +-
 model/masl/gen/masl/t.routine_end.masl                   |   2 +-
 model/masl/gen/masl/t.service_def_middle.masl            |   6 +++++-
 model/masl/gen/masl/t.terminator_function_def_begin.masl |   1 -
 model/masl/models/masl/masl/activity/activity.xtuml      |  16 +++++++++++++---
 model/masl/models/masl/masl/operation/operation.xtuml    |  64 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 model/masl/models/masl/masl/routine/routine.xtuml        |  69 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 model/masl/models/masl/masl/state/state.xtuml            |  56 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/masl/models/masl/maslpopulation/file/file.xtuml    | 141 +++------------------------------------------------------------------------------------------------------------------------------------------
 model/masl/src/masl/t.domain_function_def_begin.masl     |   6 ------
 model/masl/src/masl/t.function_def_end.masl              |   3 ---
 model/masl/src/masl/t.function_def_middle.masl           |   4 ----
 model/masl/src/masl/t.object_function_def_begin.masl     |  10 ----------
 model/masl/src/masl/t.operation_end.masl                 |   2 +-
 model/masl/src/masl/t.routine_end.masl                   |   2 +-
 model/masl/src/masl/t.service_def_middle.masl            |   8 +++++++-
 model/masl/src/masl/t.terminator_function_def_begin.masl |   8 --------
 27 files changed, 252 insertions(+), 309 deletions(-)

</pre>

End
---

