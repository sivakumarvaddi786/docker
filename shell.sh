#!/bin/bash
sort filename.txt|uniq| awk -F':' '{print $1,$2}'
echo "Commander Nodes:"
sort filename.txt|uniq| awk -F':' '/cmdr/{print $1,$2}'
#a=($(sort filename.txt|uniq| awk -F':' '/cmdr/{print $1,$2}'))
#echo ${a[1]}
#echo ${a[2]}
#echo ${a[0]}
#echo ${#a[@]}
echo "WebNodes Nodes:"
sort filename.txt|uniq| awk -F':' '/web/{print $1,$2}'
