#!/bin/sh

echo "Cloning dotfiles"
git clone --depth=1 https://github.com/wyze/dotfiles.git "$HOME/.dotfiles"
cd "$HOME/.dotfiles"

# Ask for the administrator password upfront
sudo -v &> /dev/null

# Update existing `sudo` time stamp until this script has finished
# https://gist.github.com/cowboy/3118588
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done &> /dev/null &

echo "Installing dotfiles"

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
  echo "Running OSX installation"

  echo "Brewing it up"
  source install/brew.sh

  echo "Setting defaults on OSX"
  source osx/set-defaults.sh

  echo "Installing Node via nvm"
  source install/node.sh

  echo "Installing Prezto"
  source install/prezto.sh

  echo "Installing applications"
  source install/apps.sh
fi

cp fonts/* ~/Library/Fonts

# iTerm 2 settings
cp com.googlecode.iterm2.plist ~/Library/Preferences/

ZSH="$(which zsh)"
SHELLS="/etc/shells"

# Check to make sure we can set the shell
if ! grep -qs $ZSH $SHELLS
then
  echo "Adding zsh to $SHELLS"
  echo $ZSH | sudo tee -a $SHELLS
fi

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Completed"

echo "Sleeping 10 seconds before killing applications"
sleep 10


###############################################################################¬
# Kill affected applications                                                  #¬
###############################################################################¬

for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
  "Dock" "Finder" "Google Chrome" "Google Chrome Canary" "Mail" "Messages" \
  "Opera" "Safari" "SystemUIServer" "Terminal" "Twitter" "iCal" "Spotlight"; do
    sudo killall "${app}" > /dev/null 2>&1
done
