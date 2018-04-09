#!/bin/bash
# Author: Eason Yi
# Date: 2018-02-24

docker ps -q -f status=created -f status=exited|xargs -I % docker rm %
docker ps -a
