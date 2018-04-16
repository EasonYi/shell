#!/bin/bash
# Author: Eason Yi
# Date: 2018-04-09

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions
brew tap homebrew/boneyard
brew tap homebrew/core
brew tap kong/kong
brew tap pivotal/tap

brew cask install java
brew cask install java8

./brew_cask_install.sh

./brew_install.sh
