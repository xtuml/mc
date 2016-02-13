HOWTO build and run the MASL parser
===================================

## Build the parser

From the `masl_parser` directory, run:
```bash
ant
```

## Run the parser

To parse a project or domain model file, from the `masl_parser` directory, run:
```bash
java -cp build:lib/antlr-3.5.2-complete.jar Main [ <rule> ] <masl_file> [ > output_file ]
```
The resulting MASLDSL will be printed to standard out, or you can optionally redirect it
to a file or pipe it to another application.

States, functions, and services are defined in separate files. To run the parser against
these files, you must specify the AST rule that you want to parse.

If no rule is provided, the parser will default to parse domains or projects.

The available rules are:
* `domainServiceDefinition`  
* `terminatorServiceDefinition`  
* `projectTerminatorServiceDefinition`  
* `objectServiceDefinition`  
* `stateDefinition`  
