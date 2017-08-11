#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-17

function dir(){
  for i in $(ls); do 
    if [[ -d $i ]]; then 
      echo $i
    fi
  done
}

i=1
t=$(dir|wc -l)
for d in $(dir); do 
  echo "[INFO] Update ... $d ... ($i /${t#     })"
  let i++
  cd $d
  git pull --rebase
  cd ..
done

