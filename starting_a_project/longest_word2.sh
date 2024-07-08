#!/bin/bash

# longest-word: find the longest string in a file

for i; do
         if [[ -r $1 ]]; then
                  max_word=
                  max_len=0
                  for i in $(strings $1); do
                           len=$(echo $1 | wc -c)
                           if (( len > max_len )); then
                                 max_len=$len
                                 max_word=$i
                           fi
                  done
                  echo "$1: '$max_word' ($max_len characters)"
         fi
         shift
done
