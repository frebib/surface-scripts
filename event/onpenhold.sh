#!/bin/sh
# Takes a screenshot, converts it to pdf and opens with the onclick script

temp=`mktemp`

scrot -e "mv \$f $temp"
echo "Taken screenshot $temp"
convert "$temp" "$temp.pdf"

dir=$(dirname "${BASH_SOURCE[0]}")
"$dir/onpenclick.sh" "$temp.pdf" & 
echo "Opened screenshot for annotating"
