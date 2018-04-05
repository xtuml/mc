---

This work is licensed under the Creative Commons CC0 License

---

# instance is already related when using interpret-based mc3020
### xtUML Project Implementation Note

### 1. Abstract

The MC-3020 model compiler is a combination of a compiled (binary C)
model-based xtUML application and an interpreted RSL (pyrsl) application.
Some differences in the overlapping behavior have revealed bugs in the
archetypes.  This note addresses two of those.

### 2. Document References

<a id="2.1"></a>2.1 [10116](https://support.onefact.net/issues/10116) instance is already related when using interpret-based mc3020  
<a id="2.2"></a>2.2 [xtuml pyrsl repo](https://github.com/xtuml/pyrsl) xtuml pyrsl repository  

### 3. Background

MC-3020 is used to build MC-3020.  MC-3020 does not enforce a 're-relate'
rule.  If an instance is already related, MC-3020 allows the instance to be
re-related to another or the same instance with no complaint.  Re-relating
is arguably bad practice, but MC-3020 does nothing to detect it and does
not break when it occurs.  Pyrsl is (recently) more strict.  Two paths
through relate statements revealed instances that were already related.

The changes described below avoid a re-relate.

This issue is influenced by the release train of pyrsl [2].  New features
have been added to pyrsl to support 'relate' and 'unrelate' commands in RSL
(Rule Specification Language).  The support for these commands has undergone
some change across versions where some scenarios work while others do not.
In pyrsl version 1.0, unrelate is not reliable on reflexive associations.
Therefore, the older process of zeroing the referential attribute is still
required.  MC-3020 will continue to check the version of pyrsl when
necessary until it is migrated unto pyrsl version 2.

### 4. Requirements

4.1 Stop re-relating R2075 between `TE_LNK` and itself.  

4.2 Stop re-relating R2081 between `TE_IIR` and itself.  

### 5. Work Required

5.1 `q.sys.popoulate.arc`  
The primary query and populate operations are responsible for establishing
both R2075 and R2081.

5.1.1 R2075  
In the R2075 case, an 'unrelate' statement was simply missing.  The statement
was added.  After fixing this, another problem was identified dealing with the
detection of reflexives in the case of traversals directly from AONE to AOTH
(and vice versa) in an associative relationship.  The detection was improved.

5.1.1 R2081  
R2081 is a link between an interface reference on the port of one component
and the interface reference on the port of a connected (satisfied) component.
The existing code was linking across this relationship from both ends thus
performing the link twice.  The code is changed to link from only one side
(the requirement side).

### 6. Implementation Comments

### 7. Unit Test

7.1 GPS Watch  
7.1.1 Build GPS Watch (in mcmc mode).  
7.1.2 See a clean build.  
7.1.3 See a clean model compiler Console.  
7.1.4 Disable mcmc in your installation (rename `tools/mc/bin/mcmc`).  
7.1.5 Build GPS Watch (in intepreted pyrsl mode).  
7.1.6 See a clean build.  
7.1.7 See a clean model compiler Console.  

### 8. User Documentation

no documentation changes necessary

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett
Branch:  10116_already
 arc/q.sys.populate.arc                          |  43 ++++------
 bin/mac/mcmc                                    | Bin 1569800 -> 1569800 bytes
 bin/mcmc                                        | Bin 2408744 -> 2408744 bytes
 bin/win/mcmc.exe                                | Bin 1707581 -> 1707069 bytes
 doc/notes/10116_already_int.md                  |  89 ++++++++++++++++++++
 mcmc/arlan/o.oal                                |  60 +++++---------
 model/escher/gen/ooaofooa.c                     | 328 +++++++++++++++++++++++++++++++-------------------------------------------
 model/escher/gen/ooaofooa_c_orig                | 328 +++++++++++++++++++++++++++++++-------------------------------------------
 model/escher/models/escher/mcmc/afun/afun.xtuml |  60 +++++---------
 9 files changed, 425 insertions(+), 483 deletions(-)
</pre>

### End

