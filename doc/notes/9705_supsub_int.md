---

This work is licensed under the Creative Commons CC0 License

---

# Output Supertypes Before Subtypes  
### xtUML Project Implementation Note

### 1. Abstract

Textual MASL requires supertypes to appear before subtypes in class
declarations and definitions.  This allows the subtypes to refer to
the supertypes for polymorphic events.

### 2. Document References

<a id="2.1"></a>2.1 [9705](https://support.onefact.net/issues/9705) Subtype appears in mod file before supertype when MASL is exported  

### 3. Background

In MASL round trip, correct MASL is imported with `masl2xtuml` and then
exported with `xtuml2masl`.  xtuml2masl exports classes in the order in
which they were imported.  Thus, lots of testing can occur on xtuml2masl
without revealing ordering issues.  However, when models are created
_ad hoc_ for a new project, persistence occurs in the order of creation.
Without explicit ordering in the export process, subtypes can be exported
before supertypes which produces incorrect MASL.

![My Image](myimage.jpg)

### 4. Requirements

4.1 Export supertypes before subtypes in declarations.  

4.2 Export supertypes before subtypes in definitions.  

### 5. Work Required

5.1 `maslout::class2objectdeclaration`  
Select supertypes to be output before subtypes.  Note that this is not
just a matter of selecting supertypes, since a supertype can be a subtype
of another supertype.  Select supertypes having no supertypes first.
Then work down the hierarchy.

5.2 `maslout::class2object`  
See section 5.1.  

### 6. Implementation Comments

### 7. Unit Test

7.1 `subsuperchain`  
```
_- Import xtuml/models/VandMCtesting/mc_test/subsuperchain
_- Navigate to components::sschain
_- Export MASL Domain
_R See top and super exported ahead of suba and subb
```

### 8. User Documentation

No documentation changes required.

### 9. Code Changes

<pre>
Fork/Repository: cortlandstarrett/mc
Branch: 9705_supsub

</pre>

### End

