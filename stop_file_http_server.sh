#!/bin/bash
# Author: Eason Yi
# Date: 2018-01-09

ps |grep 'http.server --bind 127.0.0.1'|grep -v grep|cut -d' ' -f1|xargs kill -9
