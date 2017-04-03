---

This work is licensed under the Creative Commons CC0 License

---

# MC-3020 ignores `ACT_CNV`  
### xtUML Project Implementation Note


1. Abstract
-----------
The model compiler is silently ignoring a legitimate OAL statement for
creating instances.

2. Document References
----------------------
[1] [8033](https://support.onefact.net/issues/8033) MC-3020 ignores `ACT_CNV`  

3. Background
-------------
'Create object instance no variable (`ACT_CNV`)' is an action language
statement that creates an instance without returning an object instance.
MC-3020 has been ignoring this statement.  It is not used much (maybe
at all), but it is a legal statement.  It should not be ignored.

This work documents implementing the statement.

4. Requirements
---------------
4.1 `ACT_CNV` shall be supported.

5. Work Required
----------------
5.1 mc/arc  
The archetypes need to be updated to support `ACT_CNV`.  It is a subset
of `ACT_CR`, so it is simple and straight-forward.

5.2 `mcmc`  
The compiled model compiler `mcmc` needs to be recompiled and the escher
model updated with rsl2oal translated action language.

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 See [1] for supplied unit test.
7.1.1 It shall pass.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  8033_ACT_CNV  

xtuml/mc

</pre>

End
---

