#!/bin/bash
# Author: Eason Yi
# Date: 2017-07-27

pbpaste|awk '{i=i "\"" $0 "\","} END{print "(" substr(i,1,length(i)-1) ")"}'|pbcopy&&pbpaste
