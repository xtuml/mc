How to use the MASL diff tool
=============================

### Overview

This utility compares textual MASL by performing transformations that do not
affect meaning of the original MASL, then diffing the results.

* Comments are removed
* The MASL is sorted intelligently using a modified parse grammar. Domain objects
  (types, objects, relationships, etc.) are put in a predictable order and sorted
  alphanumerically. This pattern also applies to objects.  
_Note: The sort utility does not support MASL projects -- they remain unsorted_
* Ambiguous tokens are replaced predictably (e.g. all instances of
  "Non_Existant" are replaced with "Non_Existent)
* All whitespace is removed
* Line breaks are reintroduced after semicolons

This list of transformations allows us to get consistent results from logically
identical MASL. Note that removing whitespace is convenient for diffing, but the
resultant files are not legal MASL files.

### Usage

```
Usage:    ./masldiff.sh <file1> <file2> [-n]
          <file1>     path to left MASL file
          <file2>     path to right MASL file
          -n          do not open diff tool
```

1. If you are comparing domain models, you must set the `CLASSPATH` environment
   variable to point to the MASL parser. Alternatively you could edit the
   `CLASSPATH` variable in `masldiff.sh` on line number 15
    * `export CLASSPATH=<path_to_parser_jar>:<path_to_antlr_jar>`
    * These Java archive files can be found in `<BP_home>/tools/masl/lib`
2. Run the MASL diff tool according to the usage
    * The Unix `diff` utility will be used to compare the resulting files by
      default
    * Optionally specify the `-n` flag to suppress the diff tool
3. `<file1>.masldiff` and `<file2>.masldiff` will be produced by the tool
    * At this point you can use another diff tool to compare the files if you
      prefer a tool other than `diff` (e.g. a graphical compare tool)
