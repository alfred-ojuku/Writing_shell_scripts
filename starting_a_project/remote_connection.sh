#!/bin/bash

# Script to receive a file via FTP

FTP_SERVER=ftp.nl.debian.org
FTP_PATH=/debian/dists
REMOTE_FILE=README

ftp -n <<- _EOF_
       open $FTP_SERVER
       user anonymous 123
       cd $FTP_PATH
       hash
       get $REMOTE_FILE
       bye
       _EOF_

ls -l $REMOTE_FILE
