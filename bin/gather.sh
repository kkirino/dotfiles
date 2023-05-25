#!/bin/bash

DIR_DOTFILES_BIN=$(cd $(dirname $0); pwd)
DIR_DOTFILES_ROOT=$(dirname ${DIR_DOTFILES_BIN})

cp /etc/wsl.conf ${DIR_DOTFILES_ROOT}
cp ${HOME}/.bashrc ${DIR_DOTFILES_ROOT}
cp ${HOME}/.vimrc ${DIR_DOTFILES_ROOT}
cp ${HOME}/.vim/coc-settings.json ${DIR_DOTFILES_ROOT}
