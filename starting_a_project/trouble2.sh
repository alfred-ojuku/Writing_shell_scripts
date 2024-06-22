#!/bin/bash

# trouble: script to demonstrate common erros

echo "Initiating the variable number" >&2
number=1

echo "number=$number"  #DEBUG
set -x # Turn on tracing
if [ "$number" = 1 ]; then
     echo "Number is equal to 1".
else
     echo "Number is not equal to 1."
fi
set +x $ Turn off tracing
