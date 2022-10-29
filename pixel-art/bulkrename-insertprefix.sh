#!/bin/sh
# this script will insert the prefix argument
if [ "$#" -ne 2 ]; then 
    echo "Usage: $0 [pattern] [prefix]" 
    exit 1
fi

# if [ ! -d .backup ]; then mkdir .backup; fi

for i in $1; do 
    # cp "$i" ".backup/$i"
    mv "$i" "$2$i"
done

