#!/bin/bash
# Author: Eason Yi

filename=$1
if [[ -z $filename ]]; then
  echo "Usage: $0 your_file_name"
  exit 1
fi
if [[ ! -a $filename ]]; then
  echo "Error: $filename file not exist"
  exit 2
fi
if [[ ! -s $filename ]]; then
  echo "Error: $filename is an empty file"
  exit 3
fi
if [[ ! -f $filename ]]; then
  echo "Error: $filename is not a regular file"
  exit 2
fi

echo "Unique lines of file: $filename"
echo "No. Line Content"
awk '!x[$0]++ {print(++i,"  ",NR,"  ",$0)}' $filename

