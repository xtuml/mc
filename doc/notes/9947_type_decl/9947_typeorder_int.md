---

This work is licensed under the Creative Commons CC0 License

---

# type export needs to be ordered
### xtUML Project Implementation Note

### 1. Abstract

Types need to be output in an intelligent order...

### 2. Document References

<a id="2.1"></a>2.1 [#9947 type export needs to be ordered](https://support.onefact.net/issues/9947)  

### 3. Background

explain previous work
give forward way

### 4. Requirements

4.1 User defined MASL types will be exported into a model (`.mod`) file


### 5. Work Required


### 6. Implementation Comments

6.1 Effect on MASL round trip

Because `masl` will now default to always emit type forward declarations, MASL
round trip tests will fail because the input models did not have the forward
declarations in all cases. This will be solved simply by updating the test
models to include type forward declarations everywhere.

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


