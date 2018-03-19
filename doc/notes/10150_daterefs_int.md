---

This work is licensed under the Creative Commons CC0 License

---

# MC-3020 fails to translate referential attributes of type timestamp and date  
### xtUML Project Implementation Note

### 1. Abstract

A model that has formalizations using identifiers of type 'timestamp'
or 'date' does not generate properly.  The output has no value for the
types on referential attributes.

### 2. Document References

In this section, list all the documents that the reader may need to refer to.
Give the full path to reference a file.  
<a id="2.1"></a>2.1 [10150](https://support.onefact.net/issues/10150) MC-3020 fails to translate referential attributes of type timestamp and date  

### 3. Background

This problem has always been in the source code.  It is a bit rare to assign
attributes of type `date` or `timestamp` as identifiers, although perfectly
valid.  Also, the problem only shows itself when a formalized association
creates a referential attribute of this same type.

When the above situation occurs, a detail in the xtUML type system is exposed.
The detail is that some core native types are actually User Defined Types
(UDTs) based upon other core native types.  `date` and `timestampe` are UDTs
based upon `inst<Mapping>`.

`inst<Mapping>` has no specific shape, therefore does not define a code
generation type.  In the extended metamodel, `TE_DT.ExtName` is left empty.
The code generation type is defined on the parent UDT instead of the core
type.  Models with referential attributes linked to identifiers of type
`date` and `timestamp` trip up on this "one level too deep" dig for the
code generation data type.

The solution is to return the type of the UDT rather than the one-step-lower
core type in the case of `date` and `timestamp`.

### 4. Requirements

4.1 `date`  
Generate the appropriate C data type for referentials linked to identifiers
of type `date`.  

4.2 `timestamp`  
Generate the appropriate C data type for referentials linked to identifiers
of type `timestamp`.  

### 5. Work Required

5.1 `GetAttributeCodeGenType`  
In `GetAttributeCodeGenType`, detect `inst<Mapping>` and pull up short.
Return the type one level above the Core Data Type which will contain
useful information not found at the bottom level CDT.

5.2 Build  
The changed archetype (`q.datatype.arc`) is part of the body of RSL which
gets converted to OAL and used in `mcmc`.  Therefore, it is required to
reconvert the archetypes and update mcmc and related files.

### 6. Implementation Comments

### 7. Unit Test

7.1 daterefs  
7.1.1 Import models/test/daterefs.  
7.1.2 Translate the model into C and see appropriate types on all attributes
as shown below.  Specifically note that `Escher_Date_t ad` and
`Escher_TimeStamp_t ats`.  
```C
/*
 * Structural representation of application analysis class:
 *   b  (b)
 */
struct c_b {

  /* application analysis class attributes */
  i_t j;  /* - j */
  Escher_Date_t ad;  /* - ad (R1) */
  Escher_TimeStamp_t ats;  /* - ats (R1) */
  /* relationship storage */
  /* Note:  No storage needed for b->a[R1] */
};
```

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10150_daterefs

Fork/Repository:  cortlandstarrett/models
Branch:  10150_daterefs
 test/daterefs/.cproject                                                                  | 120 +++++++++++++++++
 test/daterefs/.externalToolBuilders/Model Compiler.launch                                |  15 +++
 .../org.eclipse.cdt.managedbuilder.core.ScannerConfigBuilder.launch                      |   7 +
 .../.externalToolBuilders/org.eclipse.cdt.managedbuilder.core.genmakebuilder.launch      |   7 +
 test/daterefs/.project                                                                   |  52 ++++++++
 test/daterefs/gen/system.mark                                                            |   2 +
 test/daterefs/models/daterefs/classes/a/a.xtuml                                          | 114 +++++++++++++++++
 test/daterefs/models/daterefs/classes/b/b.xtuml                                          | 147 +++++++++++++++++++++
 test/daterefs/models/daterefs/classes/classes.xtuml                                      | 299 +++++++++++++++++++++++++++++++++++++++++++
 test/daterefs/models/daterefs/daterefs.xtuml                                             |  80 ++++++++++++
 test/daterefs/models/daterefs/lib/c/c.xtuml                                              | 100 +++++++++++++++
 test/daterefs/models/daterefs/lib/c/iclasses/iclasses.xtuml                              |  68 ++++++++++
 test/daterefs/models/daterefs/lib/lib.xtuml                                              |  70 ++++++++++
 test/daterefs/src/.gitignore                                                             |   3 +
 test/daterefs/src/README.txt                                                             |   1 +
 15 files changed, 1085 insertions(+)

</pre>

### End

