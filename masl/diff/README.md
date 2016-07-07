How to use the MASL diff tool
=============================

### Overview

This utility compares textual MASL by formatting MASL deterministically and then
diffing the resultant MASL. The formatter arranges the MASL in a specific
sequence and alphanumerically orders all like model elements.

### Usage

```
Usage:    ./masldiff <input1> <input2>
```

1. You must set the `CLASSPATH` environment variable to point to the MASL
   parser and ANTLR.
    * `export CLASSPATH=<path_to_parser_jar>:<path_to_antlr_jar>`
    * Alternatively, copy the above line into the `masldiff` script at line
      number 3
    * These Java archive files can be found in `<BP_home>/tools/masl/lib`
2. Run the MASL diff tool according to the usage
    * The Unix `diff` utility will be used to compare the resulting files by
      default
3. `left.masldiff` and `right.masldiff` will be produced by the tool
    * At this point you can use another diff tool to compare the
      files/directories if you prefer a tool other than `diff` (e.g. a
      graphical compare tool)
