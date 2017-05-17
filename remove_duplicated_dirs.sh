#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-17

if [[ -d $1 && -d $2 ]]; then
  dir_to_keep=$1
  dir_to_remove=$2
else
  echo "Usage: $0 dir_to_keep dir_to_remove"
  exit 1
fi

for i in $(ls $dir_to_keep); do 
  for j in $(ls $dir_to_remove); do 
    if [[ $i == $j ]]; then 
      read -p "Remove duplicated director: $i, [y/Y]? " confirmed
      if [[ $confirmed =~ [y|Y] ]]; then
        echo "- Removing $i"
        rm -rf $dir_to_remove/$i
        echo "- Removed $i"
      else
        echo "- Keeped $i"
      fi
    fi
  done
done

