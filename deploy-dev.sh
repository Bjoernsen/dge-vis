#!/bin/sh

dest=dist-dev

coffee -o html/js -c coffee

mkdir -p "$dest"
cd "$dest"

ln -sf ../src/r-json.hs r-json.cgi

for f in ../html/* ../src/* ../kegg; do ln -sf $f .; done

mkdir -p tmp
mkdir -p cached
mkdir -p user-files

echo "Linked files to '$dest'.  Now run ./server.py"

