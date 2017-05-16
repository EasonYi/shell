#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-15

function checkFilename(){
  local f=$1
  while true; do
    if [[ -z $f ]]; then
      read -p "select a file name[q/Q exit]: " f
    elif [[ -s $f ]]; then
      read -p "$f file not empty, select a new name[q/Q exit]: " f
    else
      break
    fi
    if [[ $f =~ [q|Q] ]]; then
      exit 1
    fi
  done
  eval "$2='$f'"
}
filename=''
checkFilename "$1" filename

awk 'NR < 3' $0 > $filename
echo "# Date: $(date +'%Y-%m-%d')" >> $filename
echo "" >> $filename
echo "" >> $filename
chmod u+x $filename
exec vim $filename
