---

This work is licensed under the Creative Commons CC0 License

---

# Pramgmas on Overloaded Functions Do Not Work  
### xtUML Project Implementation Note


1. Abstract
-----------
When marking overloaded functions (and overloaded class operations), one
mark gets applied to all functions with the same name.

2. Document References
----------------------
[1] [9257](https://support.onefact.net/issues/9257) Pragmas on overloaded services appear on all versions of the service  
[2] [9369](https://support.onefact.net/issues/9369) Add signatures to marking paths in editor.  

3. Background
-------------
In our model of marking, there is a key called `path_key`.  This key is
composed of the containment hierarchy of a markable model element.  The
key must be unique.  Since the key material stops at function name,
overloaded functions (and class operations and terminator services) are
not unique among themselves.  It is necessary to include the entire
signature to uniquely identify these parameter-carrying activity bodies.

4. Requirements
---------------
4.1 `m2x`  
Apply marks to functions, operations and messages using full signatures.  

4.2 `x2m`  
Emit pragmas for functions, operations and messages using full signatures.  

4.3 `editor`  
[2] is raised to track an update to the editor to allow editing marks
in the presence of signatures.

5. Work Required
----------------
5.1 `m2x`  
There exist operations to get the signatures of functions, operations and
messages.  These are used and modified with a non-comma separator.  Since
the previous (single) use was non-persistent, this change is safe for the
existing code.

Update `ooaelement::get_path` to include signatures.  The changed routines
from above are now called when populating the marks.  Note that
`ooamarkable::render_pragmas` is now used to generate the output to the
marking files.

5.2 `x2m`  
`x2m` has corresponding changes to `m2x`.  Three signature routines are
updated to not use commas.  And the routines used to populate pragmas are
updated to include signature

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9257_pragma_overload`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9257_oloadpragma

xtuml/mc

</pre>

End
---

