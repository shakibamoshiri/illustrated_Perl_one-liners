#!/bin/bash

number=$(find . -name '*.png' | grep -c '')
rm -f there_are_*_png_files
perl -le 'print scalar localtime' > there_are_$number\_png_files

size=$(du -sh)
rm -f repository_size_is*
perl -le 'print scalar localtime' > repository_size_is_${size:0:4}

tree -sh > tree.txt
