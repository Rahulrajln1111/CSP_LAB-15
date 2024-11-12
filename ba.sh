#!/bin/bash
file=$1
str=''
if [ -z $file ]
then 
	echo "usasge: ./q1_gen_tex.sh csvfile"
else
for line in $(echo  "$(cat $file)"); do
  str+=$(echo  "$line \\\\ ")
  str+=$'\n'
done 
echo "$str"
fi