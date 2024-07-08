#!/bin/bash

# longest-word3: find the longest string in a file

for i; do
         if [[ -r $1 ]]; then
                  max_word=
                  max_len=0
                  for j in $(strings $1); do
                           len=${#j}
                           if (( len > max_len )); then
                                 max_len=$len
                                 max_word=$i
                           fi
                  done
                  echo "$1: '$max_word' ($max_len characters)"
         fi
         shift
done
