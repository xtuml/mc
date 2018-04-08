---

This work is licensed under the Creative Commons CC0 License

---

# Support export of public EDTs for MASL
### xtUML Project Implementation Note

### 1. Abstract

Some work had been done to be able to export EDTs in MASL, but it only applies
to private types. Furthermore, attempt to export a public EDT results in a
segfault in x2m. This issue is opened to unify the behavior between private and
public types.

### 2. Document References

<a id="2.1"></a>2.1 [#10156 Support export of public EDTs for MASL](https://support.onefact.net/issues/10156)  
<a id="2.2"></a>2.2 [#8773 Datatypes not included in MASL exported data](https://support.onefact.net/issues/8773)  

### 3. Background

In [[2.2]](#2.2), some code was introduced to the `type2type` function which
exported EDTs for MASL. The code however only applied to private types and
introduced a discrepancy between the behavior of the two types of types.

### 4. Requirements

4.1 `x2m` shall export MASL `enum`s for both public and private types.  
4.2 The order of the enumerators in the generated MASL shall match the order in
xtUML.  
4.3 This work shall not affect round trip equality.  

### 5. Work Required

5.1 `type2type` was modified such that the implementation for private types was
the same as public types.  

### 6. Implementation Comments

6.1 In `type2type`, types that are in packages off the system are considered to
be public. Additionally, types in nested packages of such packages are also
considered public. The implementation was duplicated here because there were two
different selection paths to get a list of types. The implementation was updated
to utilize the set union operation so that code did not have to be duplicated.

### 7. Unit Test

7.1 MASL round trip shall pass.  

7.2 Public EDT export test.  
7.2.1 Download the test project attached to the issue ([[2.1]](#2.1)).  
7.2.2 Import this project into a new workspace.  
7.2.3 Navigate to the `edt_test` component. Right click > Export MASL Domain.  
7.2.4 Navigate to and open `edt_test.mod` in the `masl/edt_test/` directory
under the project.  
7.2.5 Verify that both `PrivateEDT` and `PublicEDT` were exported with
appropriate visibility modifiers.  
7.2.6 Verify that the enumerators inside both types are in the same order as
they appear in BridgePoint.  

### 8. User Documentation

None.

### 9. Code Changes

Fork/Repository: leviathan747/mc  
Branch: 10156_edts  

<pre>

 doc/notes/10156_edts_int.md                                       |  79 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml | 107 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------
 2 files changed, 151 insertions(+), 35 deletions(-)

</pre>

### End

