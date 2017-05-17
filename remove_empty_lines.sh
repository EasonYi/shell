#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-17

pbpaste|awk '!/^[ ]*$/'|pbcopy|pbpaste
