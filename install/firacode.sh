#!/bin/sh

echo "Installing Fira Code font"
FIRACODE_DIR=firacode-build
git clone https://github.com/atom/atom.git $FIRACODE_DIR &&                  \
  cd $FIRACODE_DIR &&                                                        \
  git checkout $(git describe --tags `git rev-list --tags --max-count=1`) && \
  cp FiraCode-Retina.otf ~/Library/Fonts &&                                  \
  cd .. &&                                                                   \
  rm -rf $FIRACODE_DIR
