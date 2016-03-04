HOWTO build and run the MASL parser
===================================

## Build the parser

(Be sure to have a jdk installed.  On ubuntu, `sudo apt-get install default-jdk`.)
From the `parser` directory, run:
```bash
ant
```

## Run the parser


### Usage:

(classpath will be the `build` directory and the antlr jar, `lib/antlr-3.5.2-complete.jar`)

Parse single MASL file:
```bash
java -cp <classpath> MaslImportParser -f <rule> <MASL file> [-o [file name] ]
```

Parse MASL domain:
```bash
java -cp <classpath> MaslImportParser -d <domain directory> [-o [file name] ]
```

Parse MASL project:
```bash
java -cp <classpath> MaslImportParser -p <project directory> [-o [file name] ]
```

### Output

If the `-o` flag not specified, the output defaults to `stdout`.

If the `-o` flag is specified with no file name, the output file name is automatically
chosen and the output file is placed in the current working directory.

If the `-o` flag is specified with a file name, the output is written to the specified file.

### Rules

When parsing a single MASL file, you must specify the walker rule you want to parse
with.

The available rules are:
* `target`
* `activityDefinition`
* `objectServiceDefinition`
* `stateDefinition`
* `domainServiceDefinition`
* `terminatorServiceDefinition`
* `projectTerminatorServiceDefinition`
