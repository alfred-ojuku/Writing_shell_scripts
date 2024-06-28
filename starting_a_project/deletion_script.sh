#!/bin/bash

echo "preparing to delete files." >&2
dir_name=./blah

if [[ -d $dir_name ]]; then
       if cd $dir_name; then
echo "deleting files" >&2
             rm *
       else
             echo "Cannot cd to '$dir_name'" >&2
             exit 1
       fi
else
       echo "No such directiory: '$dir_name'" >&2
       exit 1
fi
echo "file deletion complete" >&2

