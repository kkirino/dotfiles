#!/bin/bash

ROOT_DIR=$(cd "$(dirname "$0")" || exit; pwd)
WIN_USER=kkirino


# set dotfiles in WSL2
sudo cp "${ROOT_DIR}"/wsl2/wsl.conf /etc/
cp "${ROOT_DIR}"/wsl2/.bashrc "${HOME}"
cp "${ROOT_DIR}"/wsl2/.vimrc "${HOME}"
cp "${ROOT_DIR}"/wsl2/coc-settings.json "${HOME}"/.vim


# set dotfiles in Windows
cp "${ROOT_DIR}"/windows/init.vim /mnt/c/Users/"${WIN_USER}"/AppData/Local/nvim/
cp "${ROOT_DIR}"/windows/settings.json /mnt/c/Users/"${WIN_USER}"/AppData/Roaming/Code/User/
