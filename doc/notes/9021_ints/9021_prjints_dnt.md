---

This work is licensed under the Creative Commons CC0 License

---

# Publish Interface Files Into models Folder  
### xtUML Project Design Note

### 1. Abstract

Part of solving the problem of inter-project references for MASL
modelers is having domain interface files (`*.int`) visible to project
terminator MASL activities.  These files allow the editor to validate
syntax and cross-reference named elements.  For MASL "project projects",
it a simple matter to generate the interface files for the referenced
domains into the local `models` folder.  This note documents a design
to accomplish this approach.

### 2. Document References

<a id="2.1"></a>2.1 [9021](https://support.onefact.net/issues/9021) Improve mechanism for inter-domain references - Ensure .int (interface) files are provided to MASL editor  

### 3. Background

The Xtext-based MASL activity editor uses text resources to populate a
symbol table of model and MASL activity identifier elements.  The two
files it uses for structural elements are the model (`*.mod`) file and
the interface (`*.int`) file.  When a project or domain refers to public
model elements in another domain (like interfaces and data types), it needs
the interface file to resolve these cross-references.

### 4. Requirements

4.1 Provide access to an interface file for each referred-to domain.  

### 5. Analysis

5.1 Rending More  
`xtuml2masl` has access to the instance data for all domain models
referred to by a project project.  This is because prebuilder accumulates
the model data for a referred-to projects.  This means that the information
needed to render domain interface files is in hand.  
5.1.1 `x2m` sends all type information to `masl` to be rendered when running
domain projects.  It is a simple change (1 line addition) to flow the type
information from `x2m` to `masl` for project projects (as well).  
5.1.2 `masl` knows how to render interface files for domains.  It is a
simple change (10 line addition) to render interface files for all
referred-to domains.  

### 6. Design

6.1 Rendering Interface Files in Project Projects  
6.1.1 Change `file::render` to render interface files in project projects.  
6.1.2 Change `::component2domain` to supply types when processing
project projects.  

### 7. Design Comments

None.

### 8. User Documentation

None.

### 9. Unit Test

9.1 calculator application  
9.1.1 Create a workspace with the projects from `xtuml/models/masl/calculator`.  
9.1.2 Edit the MASL action language in one of the port activities for the
calucator project project.  
9.1.3 See no red squiggles.  
9.1.4 Navigate to the calculator/models/calculator folder.  See `calc.int`,
`keypad.int` and `calc_test.int` (maybe in a subfolder(s)).  

### End

