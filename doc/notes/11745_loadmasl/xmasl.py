import sys
import os
import subprocess

def usage(incorrect=""):
  if "" != incorrect:
    print "Incorrect usage '" + incorrect + "'"
  print "Usage:"
  print "    python " + sys.argv[0] + " objects <filename>"
  sys.exit(1)

if len(sys.argv) > 2:
  if "objects" == sys.argv[1].lower():
    object_list = sys.argv[2]
    print "listing " + object_list
    # Open the input file of object names.
    f = open(object_list, "r")
    lines = f.readlines()
    f.close()
    rootDir = '/Users/cort/git/masl/core-java/src/main/java/org/xtuml/masl/metamodelImpl'
    for line in lines:
      objectname = line.rstrip()
      print objectname
      pattern = ' p.* ' + objectname + ' \\( '
      r = ""
      for dirName, subdirList, fileList in os.walk( rootDir ):
        cmd = ""
        for fname in fileList:
          cmd = "awk '/" + pattern + "/,/\)/{print $0;}' " + dirName + '/' + fname
          if ( fname == objectname + '.java' ):
            #print cmd
            try:
              r = subprocess.check_output(cmd, shell=True)
            except Exception, e:
              r = str(e.output)
      r = r.rstrip()
      r = r.replace( "private", "" )
      r = r.replace( "public", "" )
      r = r.replace( "final", "" )
      print r

  elif "another..." == sys.argv[1].lower():
    if len(sys.argv) > 3:
      usage(" ".join(sys.argv))
    else:
      usage(" ".join(sys.argv))
  else:
    usage()
else:
    usage()
