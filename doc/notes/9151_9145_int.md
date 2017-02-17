---

This work is licensed under the Creative Commons CC0 License

---

# Type name used as element name causes forward declaration of type
### xtUML Project Implementation Note


1. Abstract
-----------
Fix bugs in masl round trip flow.

2. Document References
----------------------
[1] [9151](https://support.onefact.net/redmine/issues/9151) Type name used as element name causes forward declaration of type  

3. Background
-------------
BridgePoint proper does not parse the internals of MASL User Data Type
definitions.  This leads to a challenge on the export with nested types.
Today we detect a nested type by searching for the type name anywhere in
the text of the body.  This gives false positives.

4. Requirements
---------------
4.1 Eliminate or at least reduce the number of false positives for forward
references of user data types.

5. Work Required
----------------
5.1 `type::render`  
5.1.1 Add a semicolon (`;`) to the type name in the search string used to
scan the body of the data type definition.  
5.1.2 NOTE:  This is not a very good solution.  A (legal) blank space
between the nested type name and the delimiting semicolon would cause
`masl` to miss the nested type and fail to provide the needed forward
reference.

6. Implementation Comments
--------------------------
6.1 

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on tests `9151_fref` and `9151_fref2`.  
7.1.2 See empty diff files in both cases.  


8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9151_forward_ref

xtuml/mc

</pre>

End
---

