#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-20

if [[ -z $1 ]]; then
  echo "Usage: $0 cmd_name"
  exit 1
fi
cmd=$1
which $cmd|xargs cat
