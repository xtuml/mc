---

This work is licensed under the Creative Commons CC0 License

---

# Default attribute values with enum type are not present in exported MASL
### xtUML Project Implementation Note

1. Abstract
-----------
Default value expressions come through when the expression value is
a literal.  However symbolic values are left empty.

2. Document References
----------------------
[1] [9201](https://support.onefact.net/redmine/issues/9201) Default attribute values with enum type are not present in exported MASL  
[2] [9203](https://support.onefact.net/redmine/issues/9203) Default attribute values with enum type are not present in exported MASL  
[3] [9151](https://support.onefact.net/redmine/issues/9151) Unnecessary forward references  

3. Background
-------------
The output from the xtUML to MASL conversion process is piped through
a formatter.  The formatter is a "pass-thru" validator and outputs
consistently spaced MASL.  The rule for expression as default value
assignment for attribute was missing.  Actually, the rule was present,
but it was not returning a value.  This work fixes that.

4. Requirements
---------------
4.1 Output symbolic enumerators as attribute default value assignments.

5. Work Required
----------------
5.1 `MaslFormat.g`  
5.1.1 Add the return text for `nameExpression` and percolate it up
through expression.

6. Implementation Comments
--------------------------
6.1 Compile `masl` which as missed in the 9151 [3] work.

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on tests `9201_enum`.  
7.1.2 See empty diff.  

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.  


8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9203_defattr

xtuml/mc
 bin/MASLParser.jar            | Bin 279371 -> 279423 bytes
 bin/masl                      | Bin 243848 -> 243848 bytes
 doc/notes/9203_defattr_int.md |  68 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 masl/parser/src/MaslFormat.g  |   7 +++++++
 4 files changed, 75 insertions(+)

</pre>

End
---

