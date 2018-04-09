#!/bin/bash 
# Author: Eason Yi 
# Date: 2017-07-27
set -e
if [[ -z $1 ]]; then
  echo "[USAGE] ipg.sh ip"
  exit
fi
ip=$1
echo "[IP] $1"
curl --connect-timeout 2 -Ls https://iplocationtools.com/$1.html|grep --color=auto -i "=\"this ip address"
echo "[IP] $1"
