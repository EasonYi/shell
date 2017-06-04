#!/bin/bash
# Author: Eason Yi
# Date: 2017-06-04

brew update&&brew upgrade&&brew cleanup
brew update&&brew cask outdated|cut -d"(" -f1|xargs brew cask reinstall&&brew cask cleanup
npm update -g
pip list -o 2>/dev/null|cut -d"(" -f1|xargs pip install -U
pip3 list -o 2>/dev/null|cut -d"(" -f1|xargs pip install -U
