#!/bin/bash
# Author: Eason Yi
# Date: 2018-04-15

set -ex
if [[ -z $1 ]]; then
  file_ext="java"
  echo $0 java
else
  file_ext="$1"
fi

for i in *.$file_ext;do echo --$i;cat $i;echo;echo;done |pbcopy&&pbpaste
