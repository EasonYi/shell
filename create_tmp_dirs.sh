#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-17

count=5
if [[ $1 =~ [0-9]+ ]]; then
  count=$1
fi
echo "Creating $count tmp direcotories"
for ((i=1;i<=$count;i++)); do
  mkdir -p tmp/a/$i
  mkdir -p tmp/b/$i
done

tree -N tmp
