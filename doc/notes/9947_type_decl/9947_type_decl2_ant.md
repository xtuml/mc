---

This work is licensed under the Creative Commons CC0 License

---

# Type export needs to be ordered
### xtUML Project Analysis Note


### 1. Abstract

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
<a id="2.2"></a>2.2 [#9947 int from previous work](9947_type_decl_int.md)  
<a id="2.3"></a>2.3 [SMASL specification](../8073_masl_parser/8277_serial_masl_spec.md)  
<a id="2.4"></a>2.4 [#9962 type system](https://support.onefact.net/issues/9962)  

### 3. Background

Some work has already been done on this issue (see [[2.2]](#2.2)). It was
originally thought that the simple fix of producing forward declarations for
every user type would solve the problem, however it turns out that that solution
has produced another issue later in the build chain for MASL users. Types must
be ordered properly by type export. This note explores options for producing
properly ordered MASL types.

The fundamental issue here (why there even is an issue at all) due to the
complexity of the MASL type system as compared to the simplicity of the xtUML
type system. It was determined that the xtUML type system could not adequately
represent all MASL types. Because of this, the MASL types are superimposed upon
the xtUML type system and not all of the critical information that describes the
types is captured in metamodel instance data.

The final solution to the problem will be realized when the xtUML type system
moves forward to be rich enough to represent all MASL types. Until that point,
any solution will be fundamentally incomplete as it is simply a way to interpret
xtUML model data (as the metamodel stands today) and map that onto MASL types.
An issue is raised for extending the xtUML type system. The feature request can
be seen at [[2.4]](#2.4).

### 4. Requirements

4.1 User defined MASL types shall be exported in an order which minimizes the
number of forward declarations required  
4.1.1 Forward references shall be generated only for types which make a cyclic
reference  

### 5. Analysis

There are two fundamental angles that can be taken to solve this problem.
Firstly, ordering could be explicitly defined in the model by the user and this
ordering would be respected by the exporter.  From another angle, types
themselves could be analyzed to discover where dependencies between types exist
and therefore produce an optimal ordering.  These two angles will be considered
below.

5.1 Angle 1: Explicit user defined type ordering

This problem could be solved by introducing explicit ordering of types in the
metamodel and then the exporter honors them. There are several other places
where order is maintained (parameters, class operations, attributes, etc.)
already in the metamodel, however types (and in general elements in packages are
not explicitly ordered.

5.1.1 Current ordering strategy

Elements in the model explorer tree are sorted in a variety of ways. At the top
level, elements of different types are sorted into groups (i.e. all data types
go together, all classes go together, all functions go together, etc.). At the
next level, elements can be marked in PEI data as being sorted or not. This
marks classes which have a reflexive ordering association. Sorters are
generated for each of these classes as part of the build. If classes are not
marked as sorted, they are sorted alphanumerically if they have a "name"
attribute. If they do not, they are left in the order they were created.
"Sorted" classes can be moved around in the order using the "Move up" and "Move
down" CMEs.  Note that this strategy applies only to display in the model
explorer. In persistence, they are in the order they were created.

For the MASL exporter, elements are simply output in the order in which they
were created unless there is an explicit sorting association.

5.1.2 Introducing a sorting association for types

A new reflexive ordering association could be added to the metamodel to sort
user defined types. Since each type of type is grouped separately in the model
explorer, it would be necessary to implement a sorting association for each type
of type explicitly. This way, types could not interleave with one another.

The MASL exporter could be modified to honor this new ordering.

5.2 Angle 2: Full type analysis

Up to this point, types have been considered a black box by BridgePoint and the
MASL tools. The type name and visibility are parsed, but the contents of the
type itself is imported as a string field.

5.2.1 Types that reference each other

There are three ways types can reference one another:

5.2.1.1 Structure members of a type that refers to another user type, e.g.:
```
type PolarCoordinates is structure
  theta  : Angle;
  radius : Length;
end structure;
```
5.2.1.2 Enumerated types whose enumerator values refer to enumerator values from
another enumerated type, e.g.:
```
type DeviceStatus is enum ( RUNNING, OFF, DEVICE_ERROR );
type DisplayStatus is enum ( On, OFF, DISPLAY_ERROR := DEVICE_ERROR );
```
5.2.1.3 Named type reference, e.g.:
```
type Percent is real range 0..100;
```

Types can also reference themselves as in:
```
type TreeNode is structure
  value    : TreeValue;
  parent   : TreeNode;
  children : sequence of TreeNode;
end structure;
```
Types can create cycles as in:
```
type Tree is structure
  root     : TreeNode;
  depth    : integer;
end structure;

type TreeNode is structure
  tree     : Tree;
  value    : TreeValue;
  parent   : TreeNode;
  children : sequence of TreeNode;
end structure;
```
A self reference like that in `TreeNode` can be generalized as simply a cycle of
length one. All types that reference each other can be resolved by proper
ordering except for types that produce cycles. For each distinct cycle, exactly
one forward declaration is needed to parse the cycle of types.

5.2.2 Representing types in xtUML

A mechanism is needed to store MASL types in xtUML in such a way that their type
dependencies can be determined.

5.2.2.1 Regex matching

Clever regular expression matching could be used to determine the types of
members in a structure, the type that a named type reference refers to, etc.
This could be used to build a type map and export types in the proper order.

5.2.2.2 xtUML structures and enumerations

Alternatively, MASL types could be stored as xtUML types for structures and
enumerations. This would allow structure members to explicitly assign other
types to the members.

xtUML enumerated types do not support setting initial values, however the
expression could potentially be stored in the description field (this would not
provide any validation).

MASL named type references could be stored as they are today in the definition
field of a xtUML user defined type. The "core type" of the UDT could be
explicitly set, to determine which type it refers to or a regular expression
strategy could be used to determine the type from the definition.

5.2.3 Analyzing types on import by parsing them

If the strategy in 5.2.2.2 is employed, the importer would have to be updated to
parse types more fully and create xtUML types for them. At least three more
commands would have to be added to the SMASL specification [[2.3]](#2.3):
`member` (for structured types) and `enumerator` (for enumerated types).

The following types:
```
public type Foo is structure
  member1 : integer;
  member2 : string;
end structure;

public type Bar is enum ( ONE, TWO, THREE );

public type FooBar is integer range 0..100;
```

Might look like this in new SMASL:
```
type,Foo,public,,,,,,
member,member1,integer,,,,,,
member,member2,string,,,,,,
type,,,,,,,,
type,Bar,public,,,,,,
enumerator,ONE,,,,,,,
enumerator,TWO,,,,,,,
enumerator,THREE,,,,,,,
type,,,,,,,,
type,FooBar,public,integer range 0..100,,,,,
type,,,,,,,,
```

### 6. Work Required

6.1 Angle 1

6.1.1 Revert old work  
6.1.2 Add ordering associations  
6.1.3 Consider upgrade code necessary (new attribute introduced)  
6.1.4 Update tree PEI to mark types as "sorted"  
6.1.5 Update the exporter to honor the type order  
6.1.6 Re-introduce check for self reference  

6.2 Angle 2 (regex option)

6.2.1 Revert old work  
6.2.2 Modify exporter to match regex to find dependencies and build type map  
6.2.3 Export types in order according to map creating forward declarations only
when necessary (cycles)  

6.3 Angle 2 (parsing option)

6.3.1 Revert old work  
6.3.2 Modify parser and importer to populate xtUML structures and enumerations  
6.3.3 Modify exporter to build type map from explicit types of structure members  
6.3.4 Update the exporter to output types according to the type map  
6.3.5 Consider upgrade of existing models  

6.4 Documentation  
6.5 Testing  

### 7. Acceptance Test

7.1 There is one test case attached to the issue [[2.1]](#2.1). This case shall
pass.  
7.2 MASL round trip shall pass without upgrading the test models  
7.3 New test models shall be implemented to test all the situations called out
in section 5.2.1  

### End
