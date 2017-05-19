#!/bin/bash
# Author: Eason Yi
# Date: 2017-05-19

week_no=$(date +%U)
weekend_work=$((week_no%2))
if [[ "$weeken_work" == "1" ]]; then
  echo "Sorry! You'd work at this weekend: $week_no"
else
  echo "Congratulations! You can enjoy this weekend: $week_no"
fi
