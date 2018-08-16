---

This work is licensed under the Creative Commons CC0 License

---

# MC3020 does not calculate derived attributes before copying over referentials
### xtUML Project Implementation Note

### 1. Abstract
Derived attributes are calculated and cached on access, however, if a derived
attribute is an identifier and a formalized association is related before the
derived identifying attribute is ever accessed, the null value is copied over to
the referential. Copying of a derived identifying attribute as part of a relate
should be treated as an access and the value should be calculated.

### 2. Document References
<a id="2.1"></a>2.1 [#9531 MC3020 does not calculate derived attributes before copying over referentials](https://support.onefact.net/issues/9531)  
<a id="2.2"></a>2.2 [#9531 test model](https://github.com/xtuml/models/tree/master/test/test_dbattr_ref)  

### 3. Background
Referential attributes in MC3020 are not calculated on each access by traversing
to the referred to base attribute. Rather, they are copied at the time of a
`relate` invocation. Consequently, if the value of the base attribute is unset
or incorrect at the time of the `relate`, any subsequent update to the value of
the base attribute will not be propagated to the referential attribute.

### 4. Requirements
4.1 Given a referential attribute `a` in formalizing class `A` and referred to
derived identifying attribute `b` in participating class `B`:  
4.1.1 The value of `b` shall be derived before it is copied into `a` at the time
of a `relate` invocation without requiring an explicit attribute access  

### 5. Work Required
5.1 Update `SetReferentialAttributes` in `q.class.link.arc` to check if the
participating identifier attribute is derived. If it is, access using the
accessor function rather than a typical field access (`part_ptr->attr_name`)  
5.2 Modify the template `t.class.reset_refs.c` to use the correct accessor  

### 6. Implementation Comments
None

### 7. Unit Test
7.1 Import into a workspace the project linked in [[2.2]](#2.2)  
7.2 In the C/C++ perspective, right click then "Build Project"  
7.3 The expected output of the last builder is as follows:  
```
Child name: Jimmy, Child parent name: John Smith
```

### 8. User Documentation
None

### 9. Code Changes
Fork/Repository: leviathan747/mc  
Branch: 9531_dbattr_ref  

<pre>

 arc/q.class.link.arc   | 7 +++++++
 arc/t.class.set_refs.c | 8 ++++----
 2 files changed, 11 insertions(+), 4 deletions(-)

</pre>

End
---

