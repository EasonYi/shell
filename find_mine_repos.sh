#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-17

MINE_REPOS_PATTERN="EasonYi|eSecurity"
echo "[INFO] Start at $(date "+%Y-%m-%d %H:%M:%S")."

GIT_WORK_DIR="."
if [[ -d $1 ]]; then
  GIT_WORK_DIR=$1
fi

cd $GIT_WORK_DIR
old_dir=$PWD
i=1
OLD_IFS=$IFS
IFS='
'
start=$(date "+%Y-%m-%d %H:%M:%S")
echo "[INFO] Finding git repos for pattern:[${MINE_REPOS_PATTERN}], start at $start."
#dirs=$(find . -type d -name ".git")
dirs=$(find . -type d -name ".git")
total=$(wc -w <<< $dirs)
echo "[INFO] Found total git working directories: $total"

echo "[INFO] Start at $(date "+%Y-%m-%d %H:%M:%S")."
mine=0
declare -a mine_repos
for dir in $dirs; do
  work_dir=$(dirname $dir)
  cd $work_dir
  printf "[INFO] %3d/%d: %s\n" $i $total $work_dir
  ret=$(git config --list|grep -e "^remote.*\.url")
  grep --color=auto -E "(${MINE_REPOS_PATTERN})" <<< $ret
  if [[ ${ret} =~ ${MINE_REPOS_PATTERN} ]]; then
    mine_repos[$mine]="[${work_dir}]${ret}"
    let mine++
  fi
  cd $old_dir
  let i++
done

echo "[INFO] End at $(date "+%Y-%m-%d %H:%M:%S") <--- $start, Total: $total, Others: $(($total-$mine)), mine: $mine"
for m in ${mine_repos[@]}; do
  echo $m
done

IFS=$OLD_IFS
