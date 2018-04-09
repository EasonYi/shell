#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-19

week_no=$(date +%U)
if [[ "$week_no" =~ ^0 ]]; then
  week_no=${week_no#0}
fi
weekend_work=$((week_no%2))
if [[ "$weekend_work" == "0" ]]; then
  echo "Sorry! You'd work at this weekend: $week_no"
else
  echo "Congratulations! You can enjoy this weekend: $week_no"
fi
