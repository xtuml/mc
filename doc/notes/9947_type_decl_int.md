---

This work is licensed under the Creative Commons CC0 License

---

# type export needs to be ordered
### xtUML Project Implementation Note

### 1. Abstract

From [[2.1]](#2.1):

> During discussion with Tower we found that there is an issue with the order of
> types in exported MASL.
>
> The scenario was something like:  
> * Create a masl structure  
> * Add a few members  
> * Create a masl enum  
> * Assign one of the members to the enum  
> * Export MASL domain  
> * At this point they see a masl model compiler error because the enum is after
>   the sdt.  
>
> Maybe we could do a forward reference? Note that this would likely break round
> trip testing though.

### 2. Document References

<a id="2.1"></a>2.1 [#9947 type export needs to be ordered](https://support.onefact.net/issues/9947)  

### 3. Background

None.

### 4. Requirements

4.1 User defined MASL types that reference other user defined MASL types shall
always be exported in a way which can be parsed by the MASL compiler.  
4.1.1 User defined MASL types that reference themselves are included in 4.1.  

### 5. Work Required

5.1 Strategies

5.1.1 Type export ordering

Almost all type parsing issues can be solved by the order in which types are
exported. In fact the only types that cannot be ordered in a way that types
dependent on other types are exported after the types on which they depend are
self referential types, for example:
```
public type BinaryTree is structure
  leftTree  : BinaryTree;
  rightTree : BinaryTree;
end structure;
```
or types that form a cycle with other types, for example:
```
public type Item is structure
  containingList : ItemList;
  value          : string;
end structure;

public type ItemList is structure
  size  : integer;
  items : sequence of Item;
end structure;
```
For these two cases, at least one type forward declaration is necessary.

5.1.2 Forward declarations

Another strategy to solve this problem is to generate forward declarations for
every type. Although this would produce extraneous forward declarations, it
would be a simple approach and would guarantee that no type would be referenced
before it was declared.

5.2 Chosen strategy

Strategy 5.1.2 is the chosen design for this work. The current BridgePoint
tooling for MASL does not parse the body of type definitions on import. This
simplified the importer, but carries with it limitations. Because the body of
the type is not parsed into a metamodel, there is no consistent way to determine
which types reference which other types.

5.3 Model of `model`

There is a model in the `mcshared` project called `model`. This model currently
consists of a single class with two options that get set by command line flags.
The class itself is a singleton class and exists only to carry provide command
line options to the model. Currently `m2x` and `x2m` are the only projects which
use this model.

5.3.1 Extending `model`

For this work it was decided to provide a command line option to either emit all
type forward declarations or emit no type forward declarations. Since `masl` was
going to need to access a command line option, the `model` model would need to
be extended. It was decided to extend this model to work for generic options, so
that it would not have to continue to be updated for each new command line
option.

The new model is as follows:
```
|---------------------------------------------|                            |---------------------------------|
| model                                       |                            | option                          |
|---------------------------------------------|                            |---------------------------------|
| name: string                            {I} | 1          R9200         * | model_name: string   {I, R9200} |
|                                             |----------------------------| name: string                {I} |
|---------------------------------------------| configures         applies | value: string                   |
| void setoption( name:string, value:string ) |                            |                                 |
| string getoption( name:string )             |                            |---------------------------------|
| inst_ref<model> create( name:string )       |
|---------------------------------------------|
```

`create` is a class based operation that creates a new instance of the model
class. By convention, the "name" of the model should be the name of the project.

5.4 Code changes

5.4.1 Updated `model` model to work for generic options (see section 5.3.1)  
5.4.2 Modified MASL to emit type forward declarations for every type if there
exists an option with name "emittypeforwarddeclarations" and value "true".  
5.4.3 Update references in `m2x` and `x2m` to old `model` API  
5.4.4 Add command line option to `masl` to set the option mentioned in 5.4.2  
5.4.5 Update the `xtumlmc_build` script to allow the new option  

### 6. Implementation Comments

6.1 Effect on MASL round trip

Because `masl` will now default to always emit type forward declarations, MASL
round trip tests will fail because the input models did not have the forward
declarations in all cases. This will be solved simply by updating the test
models to include type forward declarations everywhere.

### 7. Unit Test

7.1 MASL round trip shall pass

### 8. User Documentation

None.

### 9. Code Changes

Fork/Repository: leviathan747/mc
Branch: 9947_type_decl

<pre>

 bin/xtumlmc_build                                                 |  13 ++++++----
 doc/notes/9947_type_decl_int.md                                   | 207 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/masl/gen/sys_user_co.c                                      |   8 +++++--
 model/masl/models/masl/lib/masl/masl.xtuml                        |  30 ++++++++++++++++++++---
 model/masl/models/masl/lib/masl/model/model.xtuml                 |  68 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/masl/models/masl/masl/domain/domain.xtuml                   |  16 +++++++++++++
 model/masl/models/masl/masltypes/type/type.xtuml                  |  25 ++++++++++++--------
 model/maslin/gen/sys_user_co.c                                    |   5 ++--
 model/maslin/models/maslin/lib/masl2xtuml/masl2xtuml.xtuml        |   6 ++---
 model/maslout/gen/sys_user_co.c                                   |   5 ++--
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml |  10 ++++----
 model/mcshared/models/mcshared/mcshared.xtuml                     |  40 +++++++++++++++----------------
 model/mcshared/models/mcshared/model/model.xtuml                  | 296 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 model/mcshared/models/mcshared/model/model/model.xtuml            | 143 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------------
 model/mcshared/models/mcshared/model/option/option.xtuml          | 129 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 15 files changed, 893 insertions(+), 108 deletions(-)

</pre>

Fork/Repository: leviathan747/bridgepoint
Branch: 9947_type_decl

<pre>

 src/org.xtuml.bp.doc/Reference/MASL/xtuml2masl/xtuml2masl.html | 22 +++++++++++++++++-----
 src/org.xtuml.bp.doc/Reference/MASL/xtuml2masl/xtuml2masl.md   |  7 +++++--
 2 files changed, 22 insertions(+), 7 deletions(-)

</pre>

Fork/Repository: leviathan747/models
Branch: 9947_type_decl

<pre>

 masl/SAC/SAC_OOA/SAC.int                                 | 2 ++
 masl/SAC/SAC_OOA/SAC.mod                                 | 2 ++
 masl/test/9151_fref/A.int                                | 1 +
 masl/test/9151_fref/A.mod                                | 1 +
 masl/test/9201_enum/DefaultAttValue.int                  | 1 +
 masl/test/9201_enum/DefaultAttValue.mod                  | 1 +
 masl/test/9279_udt_comments/CommentTest.int              | 2 ++
 masl/test/9279_udt_comments/CommentTest.mod              | 2 ++
 masl/test/9389_rstruct/MissingCommentRecursiveStruct.int | 2 ++
 masl/test/9389_rstruct/MissingCommentRecursiveStruct.mod | 2 ++
 masl/test/9432_enumerator/EnumDefaultValue.int           | 2 ++
 masl/test/9432_enumerator/EnumDefaultValue.mod           | 2 ++
 masl/test/9432_enummore/Colouring.int                    | 2 ++
 masl/test/9432_enummore/Colouring.mod                    | 2 ++
 masl/test/9432_enummore/Shapes.int                       | 2 ++
 masl/test/9459_mod_vs_int_file/DupDef.int                | 1 +
 masl/test/9459_mod_vs_int_file/DupDef.mod                | 1 +
 masl/test/9461_sequencePromotion/d.int                   | 1 +
 masl/test/9461_sequencePromotion/d.mod                   | 1 +
 masl/test/9476_nestedUserDefinedTypes/nestedTypes.int    | 2 ++
 masl/test/9476_nestedUserDefinedTypes/nestedTypes.mod    | 2 ++
 masl/test/9533_dictionaryIndex/dict2.int                 | 1 +
 masl/test/9533_dictionaryIndex/dict2.mod                 | 1 +
 masl/test/9540_findScoping/FindScope.mod                 | 2 ++
 masl/test/9580_ambiguousEnum/Colouring2.int              | 2 ++
 masl/test/9580_ambiguousEnum/Colouring2.mod              | 2 ++
 masl/test/9619_timeOperations/TimeOperations.int         | 4 ++++
 masl/test/9619_timeOperations/TimeOperations.mod         | 4 ++++
 masl/test/9646_find_rhs_type/Issue9646.int               | 1 +
 masl/test/9646_find_rhs_type/Issue9646.mod               | 1 +
 masl/test/9648_type_ordered_by/Issue9648.int             | 1 +
 masl/test/9648_type_ordered_by/Issue9648.mod             | 1 +
 masl/test/9650_loop_variable_scoping/Issue9650.int       | 2 ++
 masl/test/9650_loop_variable_scoping/Issue9650.mod       | 2 ++
 masl/test/IPv6Nodes/IPv6Nodes.mod                        | 4 ++++
 masl/test/ipv6/ipv6.mod                                  | 1 +
 masl/test/maslsupsub/maslsupsub.mod                      | 1 +
 masl/test/pei/pei.mod                                    | 1 +
 masl/test/pragmas/PragTest/PragTest.int                  | 2 ++
 masl/test/pragmas/PragTest/PragTest.mod                  | 1 +
 40 files changed, 68 insertions(+)

</pre>

### End

