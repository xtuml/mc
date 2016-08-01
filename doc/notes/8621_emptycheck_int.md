---

This work is licensed under the Creative Commons CC0 License

---

# Check Empty Handles in Attribute Accesses
### xtUML Project Implementation Note

1. Abstract
-----------
We detect empty handles in some good places.  Empty handle -triggered
segment faults are the single most common use case of application model
induced code crashes.  Start detecting these empty handles in this
common scenario.

2. Document References
----------------------
[1] [8621 - Detect empty handles more](https://support.onefact.net/redmine/issues/1)  

3. Background
-------------
MC-3020 has a feature to detect access to empty instance handles and to
"call-out" to report the problem.  However, this capability has not been
implemented inside of expressions due to some challenges there.
Accessing attributes (either reading or writing) is the most common
reference to an instance handle.  Adding detection of invalid access
to an empty handle in this situation will bring significant returns
when debugging.

4. Requirements
---------------
4.1  Detect empty instance reference access during attribute reads.  
4.2  Detect empty instance reference access during attribute writes.  

5. Work Required
----------------
5.1 Add inline in-expression check for empty handles when accessing attributes.
This covers the primary use case of null handle reference leading to
segfaults (due to application modeling errors).

5.2 Add a new trace function that checks the handle, conditionally reports
an error and returns the handle.  This check can be imbedded anywhere
in an expression (including left-hand side).

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 Run mcbench model.  This does a lot of attribute accesses.

8. Code Changes
---------------
Branch name: xtuml/mc/8621_emptycheck

<pre>
 arc/q.val.translate.arc |  8 ++++++--
 arc/t.sys_sets.c        | 10 ++++++++++
 arc/t.sys_trace.h       |  2 ++
</pre>

End
---

