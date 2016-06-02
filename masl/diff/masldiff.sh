#!/bin/bash

# MASL difftool:
# This utility compares textual MASL by performing operations that do not
# affect meaning of the original MASL, then diffing the results.
# Removing comments, whitespace, and line breaking only after semicolons
# provides us with files we can diff meaningfully. Note that the results
# are not usable MASL files. Removing all whitespace will cause them to
# be unable to parse, however, no information required for a diff is lost.

# difftool (replace with your favorite diff utility)
#DIFFTOOL=vimdiff
DIFFTOOL=diff

CLASSPATH=""

# check arguments
if [[ $# != 2 && $# != 3 ]]; then
    echo "Usage:    ./masldiff.sh <file1> <file2> [-n]"
    echo "          <file1>     path to left MASL file"
    echo "          <file2>     path to right MASL file"
    echo "          -n          do not open diff tool"
    exit 1
fi

# remove comments
perl -pe 's/\/\/.*$//g' $1 > left1
perl -pe 's/\/\*.*\*\///g' left1 > left1-5
perl -pe 's/\/\/.*$//g' $2 > right1
perl -pe 's/\/\*.*\*\///g' right1 > right1-5

# squash all whitespace to a single space
# this keeps the MASL parseable, but makes it consistent for sorting
perl -pe 's/[ \n\t\r]+/ /g' left1-5 > left2
perl -pe 's/[ \n\t\r]+/ /g' right1-5 > right2

# run maslsort (only for .mod files)
if [[ ${1: -4} == ".mod" ]]; then
  if [[ $CLASSPATH != "" ]]; then
    java -cp $CLASSPATH MaslSort < left2 > left2-5
    java -cp $CLASSPATH MaslSort < right2 > right2-5
  else
    java -cp ../parser/build:../parser/lib/antlr-3.5.2-complete.jar MaslSort < left2 > left2-5
    java -cp ../parser/build:../parser/lib/antlr-3.5.2-complete.jar MaslSort < right2 > right2-5
  fi
else
  cp left2 left2-5
  cp right2 right2-5
fi

# remove whitespace
tr -d " \t\r\n" < left2-5 > left3
tr -d " \t\r\n" < right2-5 > right3

# replace all instances of "non_existent" and "Non_Existant" with "Non_Existent"
perl -pe 's/non_existent|Non_Existant/Non_Existent/g' left3 > left4
perl -pe 's/non_existent|Non_Existant/Non_Existent/g' right3 > right4

# replace all instances of "cannot_happen" and "Cannot_Happen"
perl -pe 's/cannot_happen/Cannot_Happen/g' left4 > left5
perl -pe 's/cannot_happen/Cannot_Happen/g' right4 > right5

# break after semicolon
perl -pe 's/;/;\n/g' left5 > $1.masldiff
perl -pe 's/;/;\n/g' right5 > $2.masldiff

# remove temp files
rm -f left* right*

# open diff tool
if [[ $# != 3 || $3 != "-n" ]]; then
    $DIFFTOOL $1.masldiff $2.masldiff
fi

# remove the files after diff
#rm -f *.masldiff
