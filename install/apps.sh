#!/bin/sh

echo "Installing iTerm2"
curl -sS https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip | tar -xf- -C /Applications

echo "Installing Atom"
ATOM_DIR=atom-build
git clone https://github.com/atom/atom.git $ATOM_DIR &&                      \
  cd $ATOM_DIR &&                                                            \
  git checkout $(git describe --tags `git rev-list --tags --max-count=1`) && \
  script/build &&                                                            \
  cd .. &&                                                                   \
  rm -rf $ATOM_DIR

# Install some Atom packages
APM=/Applications/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm
$APM install                     \
  advanced-open-file             \
  editorconfig                   \
  highlight-selected             \
  language-babel                 \
  language-elm                   \
  language-haskell               \
  language-viml                  \
  line-ending-converter          \
  linter                         \
  linter-eslint                  \
  pain-split                     \
  pigments                       \
  seti-icons                     \
  tabs-to-spaces                 \
  tomorrow-night-eighties-syntax \
  travis-ci-status               \
  wakatime                       \
  zentabs

# Link Atom config
ln -s ~/.dotfiles/atom/symlink.config.cson ~/.atom/config.cson
ln -s ~/.dotfiles/atom/symlink.snippets.cson ~/.atom/snippets.cson
ln -s ~/.dotfiles/atom/symlink.styles.less ~/.atom/styles.less
