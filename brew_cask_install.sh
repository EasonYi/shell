#!/bin/bash
# Author: Eason Yi
# Date: 2018-04-09

brew_cask_softwares_file='./brew/brewcask.list'
for i in $(cat ${brew_cask_softwares_file}); do brew cask install $i; done
brew cask cleanup

