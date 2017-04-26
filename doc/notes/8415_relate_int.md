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
[2] [pyrsl and pyxtuml](https://github.com/xtuml/pyrsl) Python-based Generator  

### 3. Background
The original generator was missing many commands that now exist in the
newer Python-based generator.  `create object instance`, `delete
object instance`, `relate` and `unrelate`.  The latter two are relatively
new.  The first version of these two commands (relate and unrelate) served
as a simple short-cut for the origin identifer-copy-to-referential steps.
Work done in 2017 is updating the underlying relational architecture and
leveraging these links.

### 4. Requirements
4.1 Use `relate` and `unrelate` where identifiers were being manually
copied into referential attributes.  
4.2 Stop depending upon a specific (null) value in a referentials to
indicate no participation.  Instead, select across the association and
check for emtpy.  
4.3 Update `rsl2oal`  
`rsl2oal` is the conversion utility that converts RSL to OAL for the
compiled model compiler (`mcmc`).  This work is managed in the `escher`
project and models.

### 5. Work Required
5.1 Search and destroy all of the relate and unrelate referential
linkages and replace them with the actual relate statement.  The
relate/unlrelate statement is in the comment surrounding the old
way of copying the identifier into the referential attribute set.  
5.2 Search for `00` and a few places still using `0` in a comparison
of a referential attribute.  Replace these with navigations.  
5.3 Change the rsl2oal parser grammar to convert real relate and
unrelate statements rather than recognizing specially formed comments.  

### 6. Implementation Comments
6.1 Performance  
On the models run for testing here, the newest generator is roughly 2x faster
than version 0.6.0.  

6.2 Schema Bugs  
R2068 was wrong.  The old generator did not complain when simply
writing the referential attributes.  The new generator expects the
schema to be correct.  
<pre>
-CREATE ROP REF_ID R2068 FROM 1 TE_MBR (te_dtID) TO 1 TE_DT (ID);
+CREATE ROP REF_ID R2068 FROM MC TE_MBR (te_dtID) TO 1 TE_DT (ID);
</pre>

R2077 was also wrong.
<pre>
-CREATE ROP REF_ID R2077 FROM 1C TE_SELECT_RELATED (te_classGeneratedName) TO 1 TE_CLASS (GeneratedName);
+CREATE ROP REF_ID R2077 FROM MC TE_SELECT_RELATED (te_classGeneratedName) TO 1 TE_CLASS (GeneratedName);
</pre>

R2093 and R2094 had incorrect multiplicity.
<pre>
-CREATE ROP REF_ID R2093 FROM 1C TE_SELECT_RELATED (result_Var_ID) TO 1 TE_VAR (Var_ID);
-CREATE ROP REF_ID R2094 FROM 1C TE_SELECT_RELATED (starting_Var_ID) TO 1 TE_VAR (Var_ID);
+CREATE ROP REF_ID R2093 FROM MC TE_SELECT_RELATED (result_Var_ID) TO 1 TE_VAR (Var_ID);
+CREATE ROP REF_ID R2094 FROM MC TE_SELECT_RELATED (starting_Var_ID) TO 1 TE_VAR (Var_ID);
</pre>


### 7. Unit Test
7.1 Run Important Models  
7.1.1 Translate Three Times  
Translate a model three times.  Generate once with the generator
currently shipping with BridgePoint, once with the 0.6.0 version and
finally with the newest generator.  
7.1.3 Copy `src`  
Copy the generated source folder to directories that can be later
compared.  A suggestion is `src.old`, `src.060`, `src.new`.  
7.1.3 Compare Source  
For each of the three configurations compare the generated source for
equivalency.  Each collection of generated source should be the same
minus a few differences in white space or ordering.  
7.2 Run MicrowaveOven  
Perform the above steps on MicrowaveOven.  
7.2 GPS Watch  
Perform the above steps on GPS Watch.  
7.3 m2x  
Perform the above steps on maslin.  
7.4 x2m  
Perform the above steps on maslout.  

### 8. Code Changes

<pre>
Branch:  cortlandstarrett/mc 8514_relate


</pre>

End
---

