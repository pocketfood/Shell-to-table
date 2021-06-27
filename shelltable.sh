#!/bin/bash

# Clears everything first
echo "" > log.csv

# Puts in the data second
# First line is always the header
echo "USERNAME, PASSWORD, STATUS, ACCESSED" >> log.csv
echo "`whoami`, `echo "test1" | sha256sum` , Enabled, `date +%d/%m/%Y-%t%H:%M:%S`" >> log.csv
echo "`hostname`, `echo "test2"| sha256sum`, Disabled, `date +%d/%m/%Y-%t%H:%M:%S`" >> log.csv

# encrypts Log
openssl enc -k lol -aes256 -base64 -e -in log.csv -out encrytpedlog

# clears file again
#echo "" > log.csv

#### Loop starts here
DATA="$(cat encrytpedlog)"

# Loop for var
echo "$DATA"


