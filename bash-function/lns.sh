#!/bin/bash
# link soft
ins() {
    pwd=$(pwd)
    for file in $@
    do 
        src="$pwd/$file"
        dest="/usr/local/bin/$file"
        # test -f "$src" || { echo "emitting $src, it doesn't exit";continue; }
        ln -s "$src" "$dest"
    done
}

# ins $@
