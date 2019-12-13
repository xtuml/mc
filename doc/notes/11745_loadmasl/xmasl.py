import sys, os, subprocess, re

ofilepath = sys.argv[1]
if ( not os.path.isdir( ofilepath ) ):
  os.mkdir( ofilepath )
root = '/Users/cort/git/masl/core-java/src/main/java/org/xtuml/masl/metamodelImpl'
dirs = [ d for d in os.listdir( root ) if not os.path.isfile( os.path.join( root, d ) ) ]

# Build list of objects.
objectlist = []
# subsystems
subsystem = [list() for _ in xrange(20)]

# Initialize objectlist and subsystem lists.
subsystemindex = 0
for d in sorted( dirs ):
  dpath = os.path.join( root, d )
  files = [ f for f in os.listdir( dpath ) if os.path.isfile( os.path.join( dpath, f ) ) ]
  for fname in sorted( files ):
    objectname = os.path.splitext( fname )[0]
    objectlist.append( objectname )
    subsystem[ subsystemindex ].append( objectname )
  subsystemindex = subsystemindex + 1

relnum = 1
subsystemindex = 0
for d in sorted( dirs ):
  dpath = os.path.join( root, d )
  objectdeclaration = ""
  typelist = ""
  relspecs = ""
  objectdefinition = ""
  importedobjects = set()
  importedobjectlist = ""
  files = [ f for f in os.listdir( dpath ) if os.path.isfile( os.path.join( dpath, f ) ) ]
  for fname in sorted( files ):
    objectname = os.path.splitext( fname )[0]
    objectdeclaration = objectdeclaration + '  object ' + objectname + ';\n'
    typelist = typelist + '  private type i' + objectname + ' is instance of ' + objectname + ';\n'
    pattern = ' p.* ' + objectname + ' \\( '
    cmd = "awk '/" + pattern + "/,/\)/{print $0;}' " + dpath + '/' + fname
    attrs = ""
    try:
      attrs = subprocess.check_output(cmd, shell=True)
    except Exception, e:
      attrs = str( e.output )
    attrs = attrs.rstrip()
    attrs = attrs.replace( "private", "" )
    attrs = attrs.replace( "protected", "" )
    attrs = attrs.replace( "public", "" )
    attrs = attrs.replace( "final", "" )
    attrs = attrs.replace( "static", "" )
    attrs = attrs.replace( "throws SemanticError", "" )
    attrs = re.sub( r'.*\(', '', attrs )
    attrs = attrs.replace( ")", "" )
    attrs = attrs.replace( ", ", "\n " )
    attrs = attrs.replace( ",", "" )
    attrs = re.sub( ' +', ' ', attrs )
    attrs = re.sub( r'^\n', '', attrs )
    alines = attrs.splitlines()
    alines = [line for line in alines if line.strip()]
    # Remove duplicates.
    alines = set(alines)
    attrs = ""
    for line in alines:
      attrcomment = ""
      words = line.split(" ")
      emptyness = words[0]
      atype = words[1]
      aname = words[2]
      if ( atype in objectlist ):
        if ( atype not in subsystem[ subsystemindex ] ):
          importedobjects.add( atype )
        if ( atype != 'Position' ):
          attrcomment = "    //!" + objectname + " is related to " + atype + "\n"
          relspec = "relationship R" + str(relnum) + " is " + objectname + " unconditionally XX one " + atype + ", " + atype + " unconditionally YY one " + objectname + ";\n"
          relspecs = relspecs + "  " + relspec
          attrcomment = "    //!" + relspec
          relnum = relnum + 1
        atype = "i" + atype
      if ( aname == 'anonymous' ):
        attrcomment = "    //!" + aname + "\n"
        aname = "is_" + aname
      elif ( aname == 'type' ):
        attrcomment = "    //!" + aname + "\n"
        aname = "R_" + aname
      attrs = attrs + attrcomment
      attrs = attrs + "    " + aname + " : " + atype + ";\n"
    objectdefinition = objectdefinition + '  object ' + objectname + ' is\n' + attrs + '  end object;\n'

  for iobj in importedobjects:
    objectdeclaration = objectdeclaration + '  object Imported_' + iobj + ';\n'
    importedobjectlist = importedobjectlist + '  object Imported_' + iobj + ' is\n  end object;\n'

  # Write the subsystem file as a domain.
  dfilepath = os.path.join( ofilepath, d + "s" )
  if ( not os.path.isdir( dfilepath ) ):
    os.mkdir( dfilepath )
  dfilename = os.path.join( dfilepath, d + "s" )
  with open( dfilename + '.int', 'w' ) as intfile:
    intfile.write( 'domain ' + d + 's is\nend domain;\n' )
  with open( dfilename + '.mod', 'w' ) as modfile:
    modfile.write( 'domain ' + d + 's is\n' )
    modfile.write( objectdeclaration )
    modfile.write( typelist )
    modfile.write( relspecs )
    modfile.write( objectdefinition )
    modfile.write( '  //! imported objects\n' )
    modfile.write( importedobjectlist )
    modfile.write( 'end domain;\n' )
  subsystemindex = subsystemindex + 1
