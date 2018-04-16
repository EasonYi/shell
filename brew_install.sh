#!/bin/bash
# Author: Eason Yi
# Date: 2018-04-09

brew_softwares_file='./brew/brew.list'
for i in $(cat ${brew_softwares_file}); do brew install $i; done
brew cleanup
