#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-16

filemaxsize="20k"
if [[ $1 =~ ^[0-9]+[k|K]$ ]]; then
  filemaxsize=${1/K/k}
fi
echo "File max size: $filemaxsize"
i=0
for f in $(find . -maxdepth 1 -type f -size -${filemaxsize}); do
  echo $((++i)): $f;
  nl -ba $f;
done
echo "File max size: $filemaxsize, Matched files: $i"
