#!/bin/sh
# this script will convert all letters to lowercase, and spaces and underscores to dashes

if [ "$#" -ne 1 ]; then 
    echo "Usage: $0 \"PATTERN\"" 
    exit 1
fi

# if [ ! -d .backup ]; then mkdir .backup; fi

for i in $1; do 
    # cp "$i" ".backup/$i"
    { j=`echo "$i" | sed 'y/ _ABCDEFGHIJKLMNOPQRSTUVWXYZ/--abcdefghijklmnopqrstuvwxyz/'`; mv "$i" "$j"; }
done

