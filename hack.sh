#!/bin/bash 
# Author: Eason Yi 
# Date: 2017-07-27

set -e

if [[ -z $1 ]]; then
  echo "[Usage] hack.sh url or ip"
  exit
fi

TARGET=$1
DOMAIN=${TARGET#*//}
DOMAIN=${DOMAIN%%/*}
echo "[INFO] $TARGET --> $DOMAIN"

echo "[INFO] ping $DOMAIN ..."
IP=$(ping -c1 ${DOMAIN} | head -1 | cut -d\( -f2 | cut -d\) -f1)
echo "[INFO] $DOMAIN--> $IP"

echo "[INFO] search ISP for $IP ..."
sh ipg.sh $IP

#echo "[INFO] trace route for $IP ..."
#traceroute $IP
#traceroute $DOMAIN

CUR_DIR=$PWD
OUT_DIR=hosts/$IP
mkdir -p $OUT_DIR
cd $OUT_DIR
sh landiscovery.sh -y $IP
cd $CUR_DIR
