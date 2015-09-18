#!/bin/sh

# reload nvm into this environment
source $(brew --prefix nvm)/nvm.sh

# get all my node in here <3
nvm install stable
nvm install 0.12

# alias our default instance
nvm alias default 0.12

# some global packages
npm i -g npm npm-check-updates
