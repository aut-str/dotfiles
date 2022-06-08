#!/usr/bin/env bash

set -u

BASEDIR=$(dirname $0)
cd $BASEDIR

ln -snfv ${PWD}/.zsh ~/
ln -snfv ${PWD}/.zshenv ~/
ln -snfv ${PWD}/.zshrc ~/
ln -snfv ${PWD}/.p10k.zsh ~/

ln -snfv ${PWD}/.tmux.conf ~/
ln -snfv ${PWD}/.tmux.conf.local ~/

