#!/bin/sh

# reload nvm into this environment
source $(brew --prefix nvm)/nvm.sh

# get all my node in here <3
nvm install 6 # Current
nvm install 4 # LTS

# alias our default instance
nvm alias default 6

# some global packages
npm i -g npm@next npm-check-updates np
