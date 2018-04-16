#!/bin/bash
# Author: Eason Yi
# Date: 2018-04-15

if [[ -z $1 ]]; then
  message="hello, world!"
  echo $0 message
else
  message=$1
fi
for i in $(figlet -I2)/*.flf; do figlet -w 200 -f $i ${message}; done

