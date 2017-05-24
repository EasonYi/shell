#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-20

if [[ -z $1 ]]; then
  echo "Usage: $0 cmd_name"
  exit 1
fi

cmd_name=$1
cmd_path=$(which "$cmd_name")
cmd_true_path=$(ls -lh "$cmd_path")
cmd_size=$(echo "$cmd_true_path"|awk '{print $5}')
cmd_file_type=$(file "$cmd_path")

if [[ -z $(echo $cmd_file_type|grep text) ]]; then
  echo "It's a binary command"
elif [[ -n $(find "$(dirname "$cmd_path")" -name "$(basename "$cmd_path")" -size -20k) ]]; then
  cat "$cmd_path"
else
  head -200 "$cmd_path"
fi

echo
echo "Summary:"
echo "- Command path: $cmd_path"
echo "- Command size: $cmd_size"
echo "- Command detail: $cmd_true_path"
echo "- Command type: $cmd_file_type"
