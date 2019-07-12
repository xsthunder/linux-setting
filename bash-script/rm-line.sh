#!/bin/bash
IFS=$'\n'
test $# -ne 1 && {
    echo "
Usage: $0 <file>
rm file indicated by each line in <file>
"
    exit 1
}
for i in $(cat $1)
do
    echo rm "$i"
    rm "$i"
done
