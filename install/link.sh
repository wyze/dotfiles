#!/bin/sh

echo "Creating symlinks"
for file in ~/.dotfiles/{vim,zsh}/*.symlink; do
    target="$HOME/.$( basename $file ".symlink" )"
    echo "Creating symlink for $file"
    ln -s $file $target
done
