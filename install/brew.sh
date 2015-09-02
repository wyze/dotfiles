#!/bin/sh

if test ! $(which brew); then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating Homebrew"
brew update

echo "Upgrade installed formulae"
brew upgrade --all

echo "Installing Homebrew packages"

# cli tools
brew install htop
brew install wget

# development tools
brew install git
brew install vim --override-system-vi
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install nvm
brew install z

# Remove outdated versions from the cellar
brew cleanup
