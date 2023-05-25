#!/bin/bash

DIR_DOTFILES_BIN=$(cd $(dirname $0); pwd)
DIR_DOTFILES_ROOT=$(dirname ${DIR_DOTFILES_BIN})

sudo cp ${DIR_DOTFILES_ROOT}/wsl.conf /etc/
cp {DIR_DOTFILES_ROOT}/.bashrc ${HOME}
cp {DIR_DOTFILES_ROOT}/.vimrc ${HOME}
cp {DIR_DOTFILES_ROOT}/coc-settings.json ${HOME}/.vim

