#!/bin/bash
# Author: Eason Yi
# Date: 2018-04-09

pip3 install --upgrade pip setuptools wheel
for i in $(cat pip/pip3.list|cut -d'=' -f1); do pip3 install $i; done
