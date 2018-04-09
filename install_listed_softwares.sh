#!/bin/bash
# Author: Eason Yi
# Date: 2018-04-09

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask


brew_softwares_file='./brew/brew.list'
for i in $(cat ${brew_softwares_file}); do brew install $i; done
brew cleanup

brew_cask_softwares_file='./brew/brewcask.list'
for i in $(cat ${brew_cask_softwares_file}); do brew cask install $i; done
brew cask cleanup

