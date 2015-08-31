#!/bin/sh

echo "Cloning dotfiles"
git clone --depth=1 https://github.com/wyze/dotfiles.git "$HOME/.dotfiles"
cd "$HOME/.dotfiles"

echo "Installing dotfiles"

if [ "$(uname)" == "Darwin" ]; then
  echo "Running OSX installation"

  echo "Brewing it up"
  source install/brew.sh

  echo "Setting defaults on OSX"
  source osx/set-defaults.sh
fi

echo "Completed"
