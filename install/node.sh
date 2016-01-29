#!/bin/sh

# reload nvm into this environment
source $(brew --prefix nvm)/nvm.sh

# get all my node in here <3
nvm install stable
nvm install 4.2 # LTS

# alias our default instance
nvm alias default stable

# some global packages
npm i -g npm npm-check-updates np
