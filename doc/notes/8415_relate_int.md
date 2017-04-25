---

This work is licensed under the Creative Commons CC0 License

---

# Use Relate and Unrelate in MC-3020
### xtUML Project Implementation Note

### 1. Abstract
`pyrsl` has been marginally supporting `relate` and `unrelate` statements
for some time.  Recently, a change in architecture in `pyxtuml` may offer
speedup.  It is time to begin using the relate and unrelate statements.

### 2. Document References
[1] [8415](https://support.onefact.net/issues/8415) Use Relate and Unrelate  

### 3. Background

4. Requirements
---------------
This section is only required if there is no preceding design note. 
If present it describes the requirements that need to be satisfied.  If there 
is an SRS, this section may refer to it.  Each requirement should be as short 
and simple as possible and must be clearly defined.

4.1  Item 1  
4.2  Item 2  
4.3  Item 3  

5. Work Required
----------------
Elaborate on each point of the Work Required section of the design note and
describe how you implemented each step.  
If there is no design note, this section, breaks out the consequential work 
(as a numbered list) needed to meet the requirements specified in the 
Requirements section.

5.1. Item 1  
5.2. Item 2  
5.3. Item 3  

### 6. Implementation Comments
6.1 Schema Bugs  
R2068 was wrong.  The old generator did not complain when simply
writing the referential attributes.  The new generator expects the
schema to be correct.  
```
-CREATE ROP REF_ID R2068 FROM 1 TE_MBR (te_dtID) TO 1 TE_DT (ID);
+CREATE ROP REF_ID R2068 FROM MC TE_MBR (te_dtID) TO 1 TE_DT (ID);
```

R2077 was also wrong.
```
-CREATE ROP REF_ID R2077 FROM 1C TE_SELECT_RELATED (te_classGeneratedName) TO 1 TE_CLASS (GeneratedName);
+CREATE ROP REF_ID R2077 FROM MC TE_SELECT_RELATED (te_classGeneratedName) TO 1 TE_CLASS (GeneratedName);
```



7. Unit Test
------------
Outline all the unit tests that need to pass and describe the method that you
will use to design and perform the tests.

8. Code Changes
---------------
Branch name: < enter your branch name here >

<pre>

< Put the file list here >

</pre>

End
---

