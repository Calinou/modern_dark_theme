#!/bin/sh

for i in $(ls -1 *.svg | sed 's/\(.*\)\..*/\1/'); do
  inkscape -z --export-png=../$i.png $i.svg
  optipng -o7 -zm1-9 -strip all ../$i.png
done
