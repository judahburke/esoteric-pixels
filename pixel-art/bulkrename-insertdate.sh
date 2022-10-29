#!/bin/sh
# this script will insert the date from the file as yyyyMMdd_ prefixed to the filename
if [ "$#" -ne 1 ]; then 
    echo "Usage: $0 [pattern]" 
    exit 1
fi

if [ ! -d .backup ]; then mkdir .backup; fi

for i in $1; do 
    # cp "$i" ".backup/$i"
    i_date=`stat -c '%w' "$i"`
    i_pre=`date --date="$i_date" '+%Y%m%d_'`
    echo "$i_pre$i"
    # mv "$i" "$i_pre$i"
done

