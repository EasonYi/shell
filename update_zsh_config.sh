#!/bin/bash
# Author: Eason Yi
# Date: 2017-06-03

shell_dir=$(which $0|xargs dirname)
cp $shell_dir/zsh/*.zsh ~/.oh-my-zsh/custom/
