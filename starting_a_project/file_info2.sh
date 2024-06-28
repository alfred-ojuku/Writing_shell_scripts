#!/bin/bash

file_info () {
  
          # file_info: function to display file information
          #  echo $1
          if [[ -e $1 ]]; then
                 echo -e "\nFile Type:"
                 file $1
                 echo -e "\nFile Status:"
                 stat $1
          else
                 echo "$FUNCNAME: usage: $FUNCNAME file" >&2
          fi
}

file_info $1
