#!/bin/sh

echo "Installing dotfiles"

if [ "$(uname)" == "Darwin" ]; then
  echo "Running OSX installation"

  echo "Setting defaults on OSX"
  source osx/set-defaults.sh
fi

echo "Completed"
