#!/bin/bash

# Must be present in ~/.zprezto
# Also, this should be submodule soon
git clone --recursive https://github.com/wyze/prezto.git ~/.zprezto

for rcfile in ~/.zprezto/runcoms/z{l,she,pro}*; do
  ln -s $rcfile ~/.$(basename $rcfile)
done
