---

This work is licensed under the Creative Commons CC0 License

---

# preferred unique referential attribute is missing 'unique' tag  
### xtUML Project Implementation Note


1. Abstract
-----------

2. Document References
----------------------
[1] [9366](https://support.onefact.net/issues/9366) preferred unique referential attribute is missing 'unique' tag  

3. Background
-------------

4. Requirements
---------------
4.1 `m2x`  

5. Work Required
----------------
5.1 `m2x`  

6. Implementation Comments
--------------------------
`Attribute_setType`
```
// If the new DT does not equal the existing DT or is not MASLunique, continue
if ( s_dt != cur_s_dt and cur_s_dt.Name != "MASLunique" )
```

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9366_uniqueid`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9366_uniqueid

xtuml/mc

</pre>

End
---

