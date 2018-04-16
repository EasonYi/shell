#!/bin/bash
# Author: Eason Yi
# Date: 2018-04-09

pip2 install --upgrade pip
for i in $(cat pip/pip2.list|cut -d'=' -f1); do pip2 install $i; done
