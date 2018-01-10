#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-20

if [[ $1 == "6" ]]; then
  echo "[INFO] IPv6 for this machine:"
  ifconfig|awk '/inet6 / {printf "%s/%s/%s\n",$2,$4,$6}'
else
  echo "[INFO] IPv4 for this machine:"
  #ifconfig|awk '/inet / {printf "%s/%s\n",$2,$4}'
  ifconfig|awk '/inet / {cmd = "dc -e 16i2o"toupper(substr($4,3))"p";cmd | getline subnetmask;close(cmd);gsub("0","",subnetmask);printf "%s/%s\n",$2,length(subnetmask)}'
fi
curl -sSL https://httpbin.org/ip|jq .origin
