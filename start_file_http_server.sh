#!/bin/bash
# Author: Eason Yi
# Date: 2018-01-09

python3 -m http.server --bind 127.0.0.1 8080 & 
open http://localhost:8080
