#!/bin/bash

# read-secret: input a secret passphrase

if read -t 10 -sp "Enter secret passphrase > " secret_pass; then
         echo -e "\n Secret passphrase = '$secret_pass'"
else
         echo -e "\nInput timed out" >&2
         exit 1
fi

