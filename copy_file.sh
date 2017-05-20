#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-20

if [[ ! -s $1 ]]; then
  echo "Usage: $0 file_name"
  exit 1
fi

file_name=$1
cat $file_name|pbcopy

