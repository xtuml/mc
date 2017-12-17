- Where do I put the query to link the references?
- Add a query to MC-3020 that reports parse errors.
+ I suspect I cannot select FOI for type references because of project rendering.
+ Also I may need to reset the resolved field in references.
+ I forgot to render forward in interface files.
+ Found a bug.  3776 and 3719 are redundant.
  Kept 3719 and deleted 3776.

---

This work is licensed under the Creative Commons CC0 License

---

# type export needs to be ordered
### xtUML Project Implementation Note

### 1. Abstract

Implementation and testing of the type ordering are documented here.

### 2. Document References

<a id="2.1"></a>2.1 [#9947 type export needs to be ordered](https://support.onefact.net/issues/9947)  
<a id="2.2"></a>2.2 [first try implementation note (now reverted)](https://github.com/cortlandstarrett/mc/blob/9947_typeorder/doc/notes/9947_type_decl/9947_type_decl_int.md)  
<a id="2.3"></a>2.3 [analysis note for this issue](https://github.com/cortlandstarrett/mc/blob/9947_typeorder/doc/notes/9947_type_decl/9947_type_decl2_ant.md)  
<a id="2.4"></a>2.4 [design note for this issue](https://github.com/cortlandstarrett/mc/blob/9947_typeorder/doc/notes/9947_type_decl/9947_typeorder_dnt.md)  

### 3. Background

For expedience, the parent issue [[2.1]](#2.1) initially was addressed
using a brute force approach described in [[2.2]](#2.2).  The approach
simplistically provided forward declarations for all types.  Simple
is good.  But in this case a simple, brute force approach precipitated
problems in the downstream model compilation tool chain.

Further analysis of the issue was documented in [[2.2]](#2.2).
A design is documented in [[2.4]](#2.4).

### 4. Requirements

See [[2.3]](#2.3) and [[2.4]](#2.4).


### 5. Work Required


### 6. Implementation Comments

6.1 Interface Rendering  
The design needed a slight change.  Types get rendered more than once.
All types are rendered for the model (`.mod`) file and public type are
rendered again for the interface (`.int`) file.  `render_all` is changed
to take a parameter indicating public types.  Before running, it marks
all types as not rendered.

6.2 R3776  
I found a bug in the model of masl.  R3776 from domain to type was
redundant with R3719.  I removed R3776 and then added it back in
between domain and reference.  This is used to collect references
against a domain for project renderings.  type.name is a key but
for private types only valid within the scope of a single domain.

### 7. Unit Test

7.1 MASL round trip shall pass

7.2 Type export test

7.2.1 In a new workspace, create a new project and import `TypeTest.xtuml`
(download from the issue [[2.1]](#2.1))  
7.2.2 Expand the project and "TypeTest" package  
7.2.3 Right click the component and select "Export MASL domain"  
7.2.4 Verify that the export completes successfully  
7.2.5 Navigate to the `masl/TypeTest` directory under the project and open
`TypeTest.mod`  
7.2.6 Verify that all three user defined types have a type forward declaration
and a type declaration. It should look something like this:
```
domain TypeTest is

  private type status;
  private type light_array;
  private type special_status;
  private type status is enum ( ON, OFF, ERROR );
  private type light_array is structure
    light1: status;
    light2: status;
    light3: special_status;
  end structure;
  private type special_status is enum ( ON, OFF, SUPER, ERROR );

end domain;
```

### 8. User Documentation

8.1 The documentation for `xtuml2masl` was (_un_)updated in the BridgePoint help

### 9. Code Changes

<pre>
Fork/Repository: cortlandstarrett/mc
Branch: 9947_typeorder


</pre>

### End


