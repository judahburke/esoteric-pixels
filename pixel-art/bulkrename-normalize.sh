#!/bin/sh
# this script will convert all letters to lowercase, and spaces and underscores to dashes

if [ "$#" -ne 1 ]; then 
    echo "Usage: $0 \"PATTERN\"" 
    exit 1
fi

for i in $1; do { j=`echo "$i" | sed 'y/ _ABCDEFGHIJKLMNOPQRSTUVWXYZ/--abcdefghijklmnopqrstuvwxyz/'`; mv "$i" "$j"; }; done

