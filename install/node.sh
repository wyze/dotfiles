#!/bin/sh

# reload nvm into this environment
source $(brew --prefix nvm)/nvm.sh

# get all my node in here <3
nvm install 0.10
nvm install 0.12
nvm install stable

# alias our default instance
nvm alias default stable

# some global packages
npm i -g pure-prompt npm-check-updates
