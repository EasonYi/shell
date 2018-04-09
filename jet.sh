#!/bin/bash
set -ex
n1=IntelliJIDEALicenseServer_darwin_amd64
n2=ngrok
n3=jet.out

function pk(){
  local n=$1;
  ps -axf | grep -v grep | grep $n | awk '{print $2}'| xargs -I % kill -9 %;
}

pk $n1
pk $n2
nohup $n1 -p 41027 > $n3 2>&1 &
nohup $n2 http 41027 >> $n3 2>&1 &

sleep 3
netstat -an|grep LISTEN
cat $n3

sleep 1
lsof -nP -i:41027

sleep 1
lsof -nP -i:4040

sleep 1
curl http://127.0.0.1:4040/inspect/http | grep --color=auto .ngrok.io
