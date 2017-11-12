---

This work is licensed under the Creative Commons CC0 License

---

# Output Supertypes Before Subtypes  
### xtUML Project Implementation Note

### 1. Abstract

Textual MASL requires supertypes to appear before subtypes in class
definitions.  This allows the subtypes to refer to the supertypes
for polymorphic events.

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

### 4. Requirements

4.1 Export supertypes before subtypes in definitions.  

Note, declarations can appear in any order.

### 5. Work Required

5.1 Alternative Solutions  
Two solutions were identified.  One solution is provided in the `x2m`
model which serializes xtUML into serial MASL.  Another solution is
provided in `masl` which renders textual MASL.

5.2 `x2m` Solution  
5.2.1 `maslout::class2object`  
Select supertypes to be output before subtypes.  Note that this is not
just a matter of selecting supertypes, since a supertype can be a subtype
of another supertype.  Select supertypes having no supertypes first.
Then work down the hierarchy.

5.3 `masl` Solution  

### 6. Implementation Comments

### 7. Unit Test

7.1 `subsuperchain`  
```
_- Import xtuml/models/VandMCtesting/mc_test/subsuperchain
_- Navigate to components::sschain
_- Export MASL Domain
_R See top and super exported ahead of suba and subb
```

7.2 MASL Round Trip  
MASL Round Trip must pass all tests.

### 8. User Documentation

No documentation changes required.

### 9. Code Changes

<pre>
Fork/Repository: cortlandstarrett/mc
Branch: 9705_supsub

</pre>

### End



```
raw[99999] = true;
i = 99999;
while ( i > 0 )
  raw[ i ] = true;
end while;

select many o_objs related by c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->O_OBJ[R8001];
while ( not_empty o_objs )
  for each o_obj in o_objs
    select any raw_super_o_obj related by o_obj->R_OIR[R201]->R_RTO[R203]->R_SUB[R205]->R_SUBSUP[R213]->R_SUPER[R212]->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] where ( raw[ selected.Numb ] );
    if ( empty raw_super_o_obj )
      // do processing
      raw[ o_obj.Numb ] = false; // no longer raw, now cooked
    end if;
  end for;
  select many o_objs related by c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->O_OBJ[R8001] where ( raw[ selected.Numb ] );
end while;


```

