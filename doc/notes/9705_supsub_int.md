---

This work is licensed under the Creative Commons CC0 License

---

# Output Supertypes Before Subtypes  
### xtUML Project Implementation Note

### 1. Abstract

Textual MASL requires supertypes to appear before subtypes in class
definitions.  This allows the subtypes to refer to the supertypes
for polymorphic events.  The Export MASL Domain operation in BridgePoint
is not honoring this requirement.

### 2. Document References

<a id="2.1"></a>2.1 [9705](https://support.onefact.net/issues/9705) Subtype appears in mod file before supertype when MASL is exported  
<a id="2.2"></a>2.2 [9928](https://support.onefact.net/issues/9928) 3020 does not recurse instance reference set in while loop  

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

This pseudocode illustrates marking classes as processed ("cooked").
Classes with no subtype dependency are processed first.  Classes with
unprocessed supertypes wait for a later round.

```
// x2m solution pseudocode
raw[9999] = true;
i = 9999;
while ( i >= 0 )
  raw[ i ] = true;
  i = i - 1;
end while;

select many o_objs related by c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->O_OBJ[R8001];
while ( not_empty o_objs )
  for each o_obj in o_objs
    select any raw_super_o_obj related by o_obj->R_OIR[R201]->R_RGO[R203]->R_SUB[R205]->R_SUBSUP[R213]->R_SUPER[R212]->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] where ( raw[ selected.Numb ] );
    if ( empty raw_super_o_obj )
      // do processing
      raw[ o_obj.Numb ] = false; // no longer raw, now cooked
    end if;
  end for;
  select many o_objs related by c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->O_OBJ[R8001] where ( raw[ selected.Numb ] );
end while;
```


5.3 `masl` Solution  
Similar to the solution in `x2m`, the solution in `masl` orders objects
based on their supertype/subtype dependencies.  The query to do so is
different, only because it is in the masl metamodel rather than the OOA
of OOA.  The queries in the two models are directly corresponding.

Note that the below solution can loop N^2 times where N is the number of
objects in the MASL application model (assuming all objects were participating
in sub/super relationships).  Although this technique is inefficient in time,
it avoids polluting the model of MASL with a bookkeeping attribute.

This is the selected solution.

before:  
```
for each object in objects
  object.render();
end for;
```

after:  
```
// Sequence rendering such that supertypes are rendered before subtypes.
// The maximum number of rounds required cannot be larger than the
// total number subtype-supertype relationships in the domain.
round = 0;
select many subsupers from instances of subsuper;
maxrounds = cardinality subsupers;
while ( round < maxrounds )
  for each object in objects
    // determine subtype depth
    // Render the object during the round equal to its depth.
    depth = 0;
    select many supertypes related by object->participation[R3720]->relationship[R3713]->subsuper[R3721]->relationship[R3721]->participation[R3713.'engages']->object[R3714];
    while ( not_empty supertypes )
      depth = depth + 1;
      ss = supertypes;
      select many supertypes related by ss->participation[R3720]->relationship[R3713]->subsuper[R3721]->relationship[R3721]->participation[R3713.'engages']->object[R3714];
    end while;
    if ( depth == round )
      object.render();
    end if;
  end for;
  round = round + 1;
end while;
```

### 6. Implementation Comments

6.1 instance reference recursion bug in MC-3020  
A bug was identified in MC-3020 [2.2].  An instance reference set being
reused as the starting point of a select-related statement fails.  This
was worked around by copying the transient variable first.  The referenced
issue is opened.

### 7. Unit Test

7.1 `subsuperchain`  
```
_- Import xtuml/models/VandMCtesting/mc_test/subsuperchain
_- Navigate to components::sschain
_- Export MASL Domain
_R See super exported ahead of suba and subb
```

7.2 MASL Round Trip  
MASL Round Trip must pass all tests.

### 8. User Documentation

No documentation changes required.

### 9. Code Changes

<pre>
Fork/Repository: cortlandstarrett/mc
Branch: 9705_supsub

doc/notes/9705_supsub_int.md                        | 164 ++++++++++++++++++++++++++++++++++++++++
model/masl/models/masl/masl/domain/domain.xtuml     |  26 +++++++++--
model/masl/models/masl/masl/subsuper/subsuper.xtuml |   4 +-
3 files changed, 189 insertions(+), 5 deletions(-)

</pre>

### End


