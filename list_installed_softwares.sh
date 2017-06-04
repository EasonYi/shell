#!/bin/bash
# Author: Eason Yi
# Date: 2017-06-04

cur_dir=$(which $0|xargs dirname)

echo ">>>brew list..."
time brew list > $cur_dir/brew/brew.list
echo
echo ">>>brew cask list..."
time brew cask list > $cur_dir/brew/brewcask.list
echo
echo ">>>pip list..."
time pip list > $cur_dir/pip/pip.list
echo
echo ">>>pip3 list..."
time pip3 list > $cur_dir/pip/pip3.list
echo
echo ">>>npm list..."
time npm list -g --depth 0 > $cur_dir/npm/npm.list
