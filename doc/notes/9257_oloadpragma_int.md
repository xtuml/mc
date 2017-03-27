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
[1] [9257](https://support.onefact.net/redmine/issues/9257) Pragmas on overloaded services appear on all versions of the service  

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
Apply marks to functions, operation and messages using full signatures.  

4.2 `x2m`  
Emit pragmas for functions, operation and messages using full signatures.  

5. Work Required
----------------
5.1 `m2x`  
Update the 

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9257_pragma_overload`.  
7.1.4 See empty diff.

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

