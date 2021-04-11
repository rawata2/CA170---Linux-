#!/bin/bash

OLDSTRING=$1
NEWSTRING=$2

# the following gets rid of the first two arguments
shift
shift

# from now on, "all arguments" means "all arguments from 3rd one on"
# go through all arguments one by one:

for file in $*
do
 echo "We need to change $OLDSTRING to $NEWSTRING in $file"
 cat $file | sed -e "s|$OLDSTRING|$NEWSTRING|g" > tmpfile
 cp tmpfile $file
 echo
done