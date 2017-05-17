#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-17

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
echo "[INFO] Find git working directories, start at $start."
dirs=$(find . -type d -name ".git")
total=$(wc -w <<< $dirs)
echo "[INFO] Found total git working directories: $total"

echo "[INFO] Git pull working directories, start at $(date "+%Y-%m-%d %H:%M:%S")."
unchanged=0
unchangedret="Already up-to-date."
for dir in $dirs; do
  work_dir=$(dirname $dir)
  printf "[INFO] Start at $(date "+%H:%M:%S") git pull work dir %3d/%d: %s\n" $i $total $work_dir
  cd $work_dir
  ret=$(git pull)
  if [[ $ret = $unchangedret ]]; then
    let unchanged++
    echo "[INFO] Not changed."
  else
    echo "[INFO] Changed."
    echo $ret
  fi
  cd $old_dir
  let i++
done

IFS=$OLD_IFS

summary="[INFO] End at $(date "+%Y-%m-%d %H:%M:%S") <--- $start, Total: $total, Changed: $(($total-$unchanged)), Unchanged: $unchanged"
echo $summary
echo $summary >> update.log
echo "=================GIT UPDATE HISTORY===================="
cat update.log
