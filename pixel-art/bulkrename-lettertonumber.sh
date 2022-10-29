#!/bin/sh
# this script will replace _[letter] with _[number] from A -> 01 to Z -> 26

if [ "$#" -ne 1 ]; then 
    echo "Usage: $0 \"PATTERN\"" 
    exit 1
fi

# if [ ! -d .backup ]; then mkdir .backup; fi

for i in $1; do 
    # cp "$i" ".backup/$i"
    { j=`echo "$i" | sed '/_[A-Z]/{h;s/_\([A-I]\)/_0\1/;s/_\([J-S]\)/_1\1/;s/_\([T-Z]\)/_2\1/;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/12345678901234567890123456/;}'`; mv "$i" "$j"; }
done

